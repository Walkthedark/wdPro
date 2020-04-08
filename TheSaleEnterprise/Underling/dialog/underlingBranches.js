define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var cDate = this.comp("cDate");
		cDate.setValue("type", "1");
		var time = justep.Date.toString(new Date(), 'YYYY-MM');
		$("[xid=bdateSpan]").text(time);
		var time2 = justep.Date.toString(new Date(), 'YYYY-MM-dd');
		$("[xid=bdateSpan2]").text(time2);
		this.getMonthData();
	};

	Model.prototype.getMonthData = function() {
		var self = this;
		var cDate = this.comp("cDate");
		var time = $("[xid=bdateSpan]").text();
		var type = cDate.getValue("type");
		if (!asCore.isNull(type)) {
			type = 1;
		}
		var sendUrl = "/index/mobile/xswdbfbb";
		var pData = this.comp("pData");
		var data = {};
		data.yue = time;
		data.zjxs = type;
		asCore.xswdbfbb(sendUrl, data, function(data) {

			pData.loadData(data);
		});
	}
	Model.prototype.getDayData = function() {
		var cDate = this.comp("cDate");
		var time = $("[xid=bdateSpan2]").text();
		var type = cDate.getValue("type");
		if (!asCore.isNull(type)) {
			type = 1;
		}
		var self = this;
		var sendUrl = "/index/mobile/xswdbfbbrbb";
		var dData = this.comp("dData");
		var data = {};
		data.day = time;
		data.zjxs = type;
		asCore.xswdbfbbrbb(sendUrl, data, function(data) {

			dData.loadData(data);
		});
	}
	// 日期算法(月)
	Model.prototype.GetDateStr = function(day, AddDayCount) {
		var date = new Date(day);
		date.setMonth(date.getMonth() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		if (m < 10) {
			m = "0" + m;
		}
		// var d = date.getDate();
		// return y + "-" + m + "-" + d;
		return y + "-" + m;
	};
	Model.prototype.button4Click = function(event) {
		$("[xid=bdateSpan]").text(this.GetDateStr($("[xid=bdateSpan]").text(), -1));
		this.getMonthData();
	};
	Model.prototype.button7Click = function(event) {
		$("[xid=bdateSpan]").text(this.GetDateStr($("[xid=bdateSpan]").text(), +1));
		this.getMonthData();
	};
	Model.prototype.li2Click = function(event) {
		this.comp("infoDialog").open();
	};
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
	Model.prototype.button8Click = function(event) {
		$("[xid=bdateSpan2]").text(this.GetDateStr2($("[xid=bdateSpan2]").text(), -1));
		this.getDayData();
	};
	Model.prototype.button9Click = function(event) {
		$("[xid=bdateSpan2]").text(this.GetDateStr2($("[xid=bdateSpan2]").text(), +1));
		this.getDayData();
	};
	Model.prototype.contents2ActiveChange = function(event) {
		switch (event.to) {
		case 0:
			break;
		case 1:
			this.getDayData();
		}
	};
	Model.prototype.cDateValueChanged = function(event) {
		var index = this.comp("contents2").getActiveIndex();
		if (index == 0) {
			this.getMonthData();
		} else {
			this.getDayData();
		}
	};
	return Model;
});