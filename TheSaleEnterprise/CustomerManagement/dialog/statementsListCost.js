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
		var sendUrl = "/index/mobile/ssjxsfydzdhz";
		var orderData = this.comp("orderData");
		var detailDate = this.comp("detailDate");
		var data = {};
		data.id = id;
		asCore.ssjxsdzd(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"ypz" : asCore.isNull(data.ypz),
					"yhx" : asCore.isNull(data.yhx),
					"hxz" : asCore.isNull(data.hxz),
					"byhx" : asCore.isNull(data.byhx),
					"wsq" : asCore.isNull(data.wsq),
					"yzf" : asCore.isNull(data.yzf),
					"dzf" : asCore.isNull(data.dzf),
				} ]
			});
		});

		asCore.ssjxsfydzdmx("/index/mobile/ssjxsfydzdmx", data, function(data) {
			detailDate.loadData(data);
		});
	};

	return Model;
});