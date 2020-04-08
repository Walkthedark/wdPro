define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var cDate = this.comp("cDate");
		this.setYearList();
		cDate.setValue("year", new Date().getFullYear());
		this.getKhqList();
		this.getDataList();
	};
	Model.prototype.setYearList = function() {
		var list = [];
		var year = new Date().getFullYear();
		var yearData = this.comp("year");
		for (i = -3; i <= 0; i++) {
			var newYear = year + i;
			var params = {};
			params.year = newYear;
			list.push(params);
		}
		yearData.loadData(list);
	}
	Model.prototype.getDataList = function() {
		var self = this;
		var cDate = this.comp("cDate");
		var year = cDate.getValue("year");
		var khq = cDate.getValue("khq");
		var sendUrl = "/index/mobile/khbflhb";
		var data2 = this.comp("data2");
		var data = {};
		if (asCore.isNull(year)) {
			data.year = year;
		}
		if (asCore.isNull(khq)) {
			data.khq = khq;
		}
		asCore.khbflhb(sendUrl, data, function(data) {
			data2.clear();
			data2.loadData(data.data);
		});
	}
	Model.prototype.getKhqList = function() {
		var self = this;
		var cDate = this.comp("cDate");
		var year = cDate.getValue("year");
		var sendUrl = "/index/mobile/cainiantokaoheqi";
		var khq = this.comp("khq");
		var data = {};
		if (asCore.isNull(year)) {
			data.year = year;
		}
		asCore.cainiantokaoheqi(sendUrl, data, function(data) {
			khq.clear();
			khq.loadData(data);
		});
	}
	Model.prototype.cDateValueChanged = function(event) {
		if (event.col == "year") {
			this.getKhqList();
		} else {
			this.getDataList();
		}
	};
	return Model;
});