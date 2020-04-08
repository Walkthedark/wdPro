define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
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
		var sendUrl = "/index/mobile/jbsqxq";
		var spData = this.comp("spData");
		var overtimeData = this.comp("overtimeData");
		var data = {};
		data.id = this.id;
		asCore.jbsqxq(sendUrl, data, function(data) {
			overtimeData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sn" : asCore.isNull(data.sn),
					"jbsy" : asCore.isNull(data.jbsy),
					"sqr" : asCore.isNull(data.sqr),
					"sqr_bm" : asCore.isNull(data.sqr_bm),
					"jbjssj" : asCore.isNull(data.jbjssj),
					"jbkssj" : asCore.isNull(data.jbkssj),
					"xs" : asCore.isNull(data.xs),
					"t" : asCore.isNull(data.t),
					"ctime" : asCore.isNull(data.ctime),
					"state" : asCore.isNull(data.state)
				} ]
			});
			spData.loadData(data.log);
		});
	}

	Model.prototype.output9Render = function(event) {
		var overtimeData = this.comp("overtimeData");
		var jbjssj = overtimeData.getValue("jbjssj");
		var jbkssj = event.value;
		event.html = jbkssj + "~" + jbjssj;
	};

	Model.prototype.output10Render = function(event) {
		var overtimeData = this.comp("overtimeData");
		var xs = overtimeData.getValue("xs");
		var t = event.value;
		if (!xs)
			xs = 0;
		if (!t)
			t = 0;
		event.html = t + "天" + xs + "小时";
	};

	return Model;
});