define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		var self = this;
		var sendUrl = "/index/mobile/khtxlxq";
		var orderData = this.comp("orderData");
		var data = {};
		data.id = id;
		asCore.khtxlxq(sendUrl, data, function(data) {
			debugger;
			orderData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"xm" : asCore.isNull(data.xm),
					"lxdh" : asCore.isNull(data.lxdh),
					"sskh" : asCore.isNull(data.sskh),
					"khlx" : asCore.isNull(data.khlx),
					"sj" : asCore.isNull(data.sj),
					"yx" : asCore.isNull(data.yx),
					"zw" : asCore.isNull(data.zw),
					"cz" : asCore.isNull(data.cz),
				} ]
			});
		});
	};

	return Model;
});