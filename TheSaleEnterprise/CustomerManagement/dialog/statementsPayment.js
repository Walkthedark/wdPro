define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li1Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		var self = this;
		var sendUrl = "/index/mobile/dkdzd";
		var orderData = this.comp("orderData");
		var data = {};
		data.id = id;
		asCore.ssjxsdzd(sendUrl, data, function(data) {
			debugger;
			orderData.loadData(data);
		});

	};

	return Model;
});