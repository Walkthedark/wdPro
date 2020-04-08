define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		var self = this;
		//74.网点订单详情 地址：http://61.129.51.183:9986/index/mobile/wdddxq
		asCore.wdddxq(sendUrl, id, function(data){
			self.comp("infoDialog").open({data:data});
		});
	};
	
	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};
	//修改
	Model.prototype.button9Click = function(event){
		this.comp("updateDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event){
		this.comp("listData").loadData(event.data);
	};

	return Model;
});