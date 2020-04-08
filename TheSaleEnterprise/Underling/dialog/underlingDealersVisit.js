define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY-MM-dd');
		// $("[xid=dateInput]").val(time);
		this.comp("CData").setValue("time", time);
		// this.getVisitData();
	};
	Model.prototype.getVisitData = function() {
		var time = this.comp("CData").getValue("time");
		var name = this.comp("CData").getValue("name");
		var self = this;
		var sendUrl = "/index/mobile/xsjxsbf";
		var pData = this.comp("pData");
		var data = {};
		data.bgrq = time;
		if (asCore.isNull(name)) {
			data.bfr_name = name;
		}
		asCore.xsjxsbf(sendUrl, data, function(data) {
			debugger;
			pData.loadData(data);
		});
	}
	// 日期算法(日)
	Model.prototype.GetDateStr2 = function(day, AddDayCount) {
		var date = new Date(day);
		date.setDate(date.getDate() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		if (m < 10) {
			m = "0" + m;
		}
		var d = date.getDate();
		if (d < 10) {
			d = "0" + d;
		}
		return y + "-" + m + "-" + d;
	};

	Model.prototype.button4Click = function(event) {
		// $("[xid=dateInput]").val(this.GetDateStr2($("[xid=dateInput]").val(),
		// -1));
		this.comp("CData").setValue("time", this.GetDateStr2(this.comp("CData").getValue("time"), -1));
	};
	Model.prototype.button7Click = function(event) {
		// $("[xid=dateInput]").val(this.GetDateStr2($("[xid=dateInput]").val(),
		// -1));
		this.comp("CData").setValue("time", this.GetDateStr2(this.comp("CData").getValue("time"), 1));
	};

	Model.prototype.button2Click = function(event) {
		var time = this.comp("CData").getValue("time");
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var xm = row.val("xm");
		this.comp("infoDialog").open({
			data : {
				id : id,
				xm : xm,
				time : time
			}
		});
	};
	Model.prototype.button6Click = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY-MM-dd');
		// $("[xid=dateInput]").val(time);
		this.comp("CData").setValue("time", time);
		this.comp("CData").setValue("name", "");
	};
	Model.prototype.button8Click = function(event) {
		this.getVisitData();
	};
	return Model;
});