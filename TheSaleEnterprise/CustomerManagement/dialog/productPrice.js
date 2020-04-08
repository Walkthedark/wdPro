define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var self = this;
		var id = event.data.id;
		var title = event.data.title;
		var sendUrl = "/index/mobile/jxsprice";
		var CData = this.comp("CData");
		$("[xid=span1]").text(title);
		var data = {};
		data.id = id;
		asCore.jxsprice(sendUrl, data, function(data) {
			debugger;
			CData.loadData(data);
		});
	};

	return Model;
});