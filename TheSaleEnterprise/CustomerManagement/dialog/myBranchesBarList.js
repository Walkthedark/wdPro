define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.li1Click = function(event) {
		// this.comp("infoDialog").open();
	};

	Model.prototype.button5Click = function(event) {
		this.comp("newDialog").open({
			data : {
				id : this.id
			}
		});
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		this.getyData();
		this.getdData();
	};
	Model.prototype.getyData = function() {
		var self = this;
		var sendUrl = "/index/mobile/wdyjc";
		var CData = this.comp("yData");
		var data = {};
		data.id = this.id;
		asCore.wdyjc(sendUrl, data, function(data) {
			CData.loadData(data);
		});
	}
	Model.prototype.getdData = function() {
		var self = this;
		var sendUrl = "/index/mobile/wdsqz";
		var CData = this.comp("dData");
		var data = {};
		data.id = this.id;
		asCore.wdsqz(sendUrl, data, function(data) {
			CData.loadData(data);
		});
	}
	Model.prototype.newDialogClose = function(event) {
		this.getyData();
		this.getdData();
	};
	return Model;
});