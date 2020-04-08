define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var net_id = null;
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/wdbfnr";
		var orderData = this.comp("data1");
		var data = {};
		data.net_id = this.wdid;
		data.bf_id = this.id;
		asCore.wdbfnr(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"bcpfxj" : asCore.isNull(data.bcpfxj),
					"xcpfrq" : asCore.isNull(data.xcpfrq),
					"xcpfmb" : asCore.isNull(data.xcpfmb)
				} ]
			});
		});
	}
	Model.prototype.button4Click = function(event) {
		var sendUrl = "/index/mobile/wdbfxj";
		var orderData = this.comp("data1");
		var bcpfxj = orderData.getValue("bcpfxj");
		var xcpfrq = orderData.getValue("xcpfrq");
		var xcpfmb = orderData.getValue("xcpfmb");
		var data = {};
		data.net_id = this.wdid;
		data.bcpfxj = bcpfxj;
		data.xcpfrq = xcpfrq;
		data.xcpfmb = xcpfmb;
		data.bf_id = this.id;
		debugger;
		// 49.添加网点拜访小结 地址：http://61.129.51.183:9986/index/mobile/wdbfxj
		asCore.wdbfxj(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint("提交成功！");
			} else {
				justep.Util.hint("提交失败！");
			}
		});
	};

	return Model;
});