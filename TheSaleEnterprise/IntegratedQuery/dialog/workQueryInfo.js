define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li1Click = function(event) {

	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/kqcxxq";
		var orderData = this.comp("CData");
		var data = {};
		data.id = id;
		asCore.kqcxxq(sendUrl, data, function(data) {
			debugger;
			orderData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sbdd" : asCore.isNull(data.sbdd),
					"xbsj" : asCore.isNull(data.xbsj),
					"cdfz" : asCore.isNull(data.cdfz),
					"ztfz" : asCore.isNull(data.ztfz),
					"kgt" : asCore.isNull(data.kgt),
					"cqxs" : asCore.isNull(data.cqxs),
					"bz" : asCore.isNull(data.bz),
					"sbzp" : asCore.isNull(data.sbzp),
					"xbzp" : asCore.isNull(data.xbzp),
					"date" : asCore.isNull(data.date),
					"sbsj" : asCore.isNull(data.sbsj)
				} ]
			});
		});
	};

	return Model;
});