define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.output21Render = function(event) {
		if (event.value == "0") {
			event.html = "提交申请";
		}
		if (event.value == "1") {
			event.html = "打回修改";
		}
		if (event.value == "2") {
			event.html = "提交";
		}
		if (event.value == "3") {
			event.html = "审批通过";
		}
		if (event.value == "4") {
			event.html = "抄送";
		}
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/qjsqxq";
		var spData = this.comp("spData");
		var CData = this.comp("CData");
		// 59.请假申请详情 地址：http://61.129.51.183:9986/index/mobile/qjsqxq
		asCore.qjsqxq(sendUrl, this.id, function(data) {
			CData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sn" : asCore.isNull(data.sn),
					"title" : asCore.isNull(data.title),
					"jqr" : asCore.isNull(data.jqr),
					"jqr_bm" : asCore.isNull(data.jqr_bm),
					"qjsj_ks" : asCore.isNull(data.qjsj_ks),
					"qjsj_js" : asCore.isNull(data.qjsj_js),
					"qjts" : asCore.isNull(data.qjts),
					"qjxs" : asCore.isNull(data.qjxs),
					"qjsy" : asCore.isNull(data.qjsy),
					"ctime" : asCore.isNull(data.ctime),
					"type" : asCore.isNull(data.type)
				} ]
			});
			spData.loadData(data.log);
		});
	}
	Model.prototype.output9Render = function(event) {
		var CData = this.comp("CData");
		var qjsj_js = CData.getValue("qjsj_js");
		var qjsj_ks = event.value;
		event.html = qjsj_ks + "~" + qjsj_js;
	};
	Model.prototype.output10Render = function(event) {
		var CData = this.comp("CData");
		var qjxs = CData.getValue("qjxs");
		var qjts = event.value;
		if (!qjxs)
			qjxs = 0;
		if (!qjts)
			qjts = 0;
		event.html = qjts + "天" + qjxs + "小时";
	};
	return Model;
});