define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.id = event.data.id;
		this.initData();
	};

	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/ordermx";
		var orderData = this.comp("orderData");
		var infoData = this.comp("infoData");
		var data = {};
		data.oid = this.id;
		asCore.ordermx(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sn" : asCore.isNull(data.sn),
					"net_id" : asCore.isNull(data.net_id),
					"net" : asCore.isNull(data.net),
					"jsn" : asCore.isNull(data.jsn),
					"jxs" : asCore.isNull(data.jxs),
					"shdz" : asCore.isNull(data.shdz),
					"shr" : asCore.isNull(data.shr),
					"dh" : asCore.isNull(data.dh),
					"yszje" : asCore.isNull(data.yszje),
					"yhPolicy" : asCore.isNull(data.yhPolicy),
					"yhPolicymc" : asCore.isNull(data.yhPolicymc),
					"status" : asCore.isNull(data.status),
					"sqrq" : asCore.isNull(data.sqrq),
					"bz" : asCore.isNull(data.bz),
				} ]
			});
			infoData.loadData(data.detail);
		});
	}
	Model.prototype.output24Render = function(event) {

	};
	return Model;
});