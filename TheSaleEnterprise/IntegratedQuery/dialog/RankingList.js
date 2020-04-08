define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY');
		this.comp("cDate").setValue("year", time);
		this.getProcessList();
		this.getVisitList();
		this.getSendList();
		this.getFeeList();
	};
	Model.prototype.getProcessList = function() {
		var self = this;
		var sendUrl = "/index/mobile/xsjdlhb";
		var listData1 = this.comp("listData1");
		var khq1 = this.comp("khq1");
		var cDate = this.comp("cDate");
		var khq = cDate.getValue("khq1");
		var year = cDate.getValue("year");
		var data = {};
		if (asCore.isNull(khq)) {
			data.khq = khq;
		}
		data.year = year;
		asCore.xsjdlhb(sendUrl, data, function(data) {
			debugger;
			listData1.loadData(data.data);
			if (data.data.length > 0) {
				var cs = data.data[0].cs;
				var name = data.data[0].sqrmc;
				var money = data.data[0].money;
				var my = self.comp("progress2");
				my.set({
					"valuenow" : 20
				});
				$("#fqNum1").text(cs + "次 " + money + "元");
				$("#fqName1").text(name + ":");
				$("#fqListRow2").show();
				$("#fqListRow1").hide();
			} else {
				$("#fqListRow2").hide();
				$("#fqListRow1").show();
			}
			khq1.loadData(data.yjkhq)
		});
	}
	Model.prototype.getVisitList = function() {
		var self = this;
		var sendUrl = "/index/mobile/khbflhb";
		var listData = this.comp("listData2");
		var khq2 = this.comp("khq2");
		var cDate = this.comp("cDate");
		var khq = cDate.getValue("khq2");
		var year = cDate.getValue("year");
		var data = {};
		if (asCore.isNull(khq)) {
			data.khq = khq;
		}
		data.year = year;
		asCore.khbflhb(sendUrl, data, function(data) {
			listData.loadData(data.data);
			if (data.data.length > 0) {
				var cs = data.data[0].cs;
				var name = data.data[0].bfr;
				var my = self.comp("progress4");
				my.set({
					"valuenow" : 20
				});
				$("#fqNum2").text(cs + "次");
				$("#fqName2").text(name + ":");
				$("#fqListRow3").show();
				$("#fqListRow4").hide();
			} else {
				$("#fqListRow3").hide();
				$("#fqListRow4").show();
			}
			khq2.loadData(data.yjkhq)
		});
	}
	Model.prototype.getSendList = function() {
		var self = this;
		var sendUrl = "/index/mobile/fhlhb";
		var listData = this.comp("listData3");
		var khq3 = this.comp("khq3");
		var cDate = this.comp("cDate");
		var khq = cDate.getValue("khq3");
		var year = cDate.getValue("year");
		var data = {};
		if (asCore.isNull(khq)) {
			data.khq = khq;
		}
		data.year = year;
		asCore.fhlhb(sendUrl, data, function(data) {
			debugger;
			listData.loadData(data.data);
			if (data.data.length > 0) {
				var cs = data.data[0].cs;
				var name = data.data[0].sdAgency;
				var money = data.data[0].money;
				var my = self.comp("progress3");
				my.set({
					"valuenow" : 20

				});
				$("#fqNum3").text(cs + "次 " + money + "元");
				$("#fqName3").text(name + ":");
				$("#fqListRow5").show();
				$("#fqListRow6").hide();
			} else {
				$("#fqListRow5").hide();
				$("#fqListRow6").show();
			}
			khq3.loadData(data.yjkhq)
		});
	}

	Model.prototype.getFeeList = function() {
		var self = this;
		var sendUrl = "/index/mobile/khfylhb";
		var listData = this.comp("listData2");
		var khq4 = this.comp("khq4");
		var cDate = this.comp("cDate");
		var khq = cDate.getValue("khq4");
		var year = cDate.getValue("year");
		var data = {};
		if (asCore.isNull(khq)) {
			data.khq = khq;
		}
		data.year = year;
		asCore.khfylhb(sendUrl, data, function(data) {
			debugger;
			listData.loadData(data.data);
			if (data.data.length > 0) {
				var cs = data.data[0].cs;
				var name = data.data[0].jxs;
				var money = data.data[0].money;
				var my = self.comp("progress1");
				my.set({
					"valuenow" : 20
				});
				$("#fqNum4").text(cs + "次 " + money + "元");
				$("#fqName4").text(name + ":");
				$("#fqListRow7").show();
				$("#fqListRow8").hide();
			} else {
				$("#fqListRow7").hide();
				$("#fqListRow8").show();
			}
			khq4.loadData(data.yjkhq)
		});
	}

	Model.prototype.cDateValueChanged = function(event) {
		var col = event.col;
		if (col == "khq1") {
			this.getProcessList();
		}
		if (col == "khq2") {
			this.getVisitList();
		}
		if (col == "khq3") {
			this.getSendList();
		}
		if (col == "khq4") {
			this.getFeeList();
		}
	};

	Model.prototype.col23Click = function(event) {
		this.comp("processDialog").open();
	};
	Model.prototype.col53Click = function(event) {
		this.comp("customerDialog").open();
	};
	Model.prototype.col31Click = function(event) {
		this.comp("sendDialog").open();
	};
	Model.prototype.col10Click = function(event) {
		this.comp("customerCostDialog").open();
	};

	return Model;
});