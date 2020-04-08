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
		var sendUrl = "/index/mobile/ccsqxq";
		var spData = this.comp("spData");
		var CData = this.comp("CData");
		var XData = this.comp("XData");
		// 59.请假申请详情 地址：http://61.129.51.183:9986/index/mobile/qjsqxq
		asCore.ccsqxq(sendUrl, this.id, function(data) {
			debugger;
			CData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"bm" : asCore.isNull(data.bm),
					"cuser_name" : asCore.isNull(data.cuser_name),
					"zw" : asCore.isNull(data.zw),
					"title" : asCore.isNull(data.title),
					"no" : asCore.isNull(data.no),
					"traveltype" : asCore.isNull(data.traveltype),
					"target" : asCore.isNull(data.target)
				} ]
			});
			spData.loadData(data.log);
			XData.loadData(data.xc);
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