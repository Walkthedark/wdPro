define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var jxs = '';
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event){
		jxs = event.data.jxs;
	};

	Model.prototype.button4Click = function(event){
		var thyy = this.comp("textarea1").val();
		var sczp = "";
		var sendUrl = "/index/mobile/tjth";
		//83.添加退货 地址：http://61.129.51.183:9986/index/mobile/tjth
		asCore.tjth(sendUrl, jxs, thyy, sczp, function(data){
			if(data.success){
				justep.Util.hint("添加成功！");
			} else {
				justep.Util.hint("添加失败！");
			}
		});
	};

	return Model;
});