define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.output2Render = function(event) {
		// if (event.value = "0") {
		event.html = "<span style='color:#FA7922;padding:2px;border:1px solid #FA7922;font-size:10px;'>待审批</span>";
		// }
	};

	Model.prototype.output10Render = function(event) {
		// if (event.value = "0") {
		event.html = "<span style='color:#52A55D;padding:2px;border:1px solid #52A55D;font-size:10px;'>已审批</span>";
		// }
	};
	Model.prototype.li2Click = function(event) {
		var row = event.bindingContext.$object;
		var workId = row.val("workId");
		var trackId = row.val("trackId");
		var myId = row.val("myId");
		this.comp("infoDialog").open({
			data : {
				workId : workId,
				trackId : trackId,
				myId : myId
			}
		});
	};
	Model.prototype.modelModelConstructDone = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/dblc";
		var data = {};
		asCore.sendProcess(sendUrl, data, function(data) {
			self.initData(data.data);
		});

	};
	Model.prototype.initData = function(data) {
		var dData = this.comp("dData");
		var yData = this.comp("yData");
		var dList = [];
		var yList = [];
		for (i = 0; i < data.length; i++) {
			dList.push(data[i]);
			yList.push(data[i]);
		}
		dData.loadData(dList);
		yData.loadData(yList);
	}
	Model.prototype.output6Render = function(event) {
		event.html = event.value.toString().substring(0, 16);
	};
	return Model;
});