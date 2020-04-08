define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {

	};
	// 经销商
	Model.prototype.row1Click = function(event) {
		// 10. 经销商列表 地址：http://61.129.51.183:9986/index/mobile/jxsbf
		/*
		 * var sendUrl = "/index/mobile/jxsbf"; var keyword=""; var data = null;
		 * var self = this; asCore.sendJXSLB(sendUrl,keyword,function(data){
		 * debugger data = data; self.comp("dealersDialog").open({ "data" : data
		 * }); });
		 */
		this.comp("dealersDialog").open();
	};
	// 网点
	Model.prototype.col8Click = function(event) {
		this.comp("customerDialog").open();
	};
	// 市场
	Model.prototype.row5Click = function(event) {
		this.comp("activityCheckDialog").open();
		/*
		 * var sendUrl = "/index/mobile/schdbf_wdlb"; var wdmc=""; var data =
		 * null; var self = this; //51. 市场活动拜访-本期活动列表
		 * 地址：http://61.129.51.183:9986/index/mobile/schdbf_wdlb
		 * asCore.schdbf_wdlb(sendUrl,wdmc,function(data){ data = data;
		 * self.comp("activityCheckDialog").open({ "data" : data }); });
		 */
	};
	// 所属市场
	Model.prototype.row7Click = function(event) {
		this.comp("belongsDialog").open();
	};
	// 定点签到
	Model.prototype.col15Click = function(event) {
		var self = this;
		// 54.签到汇报 地址：http://61.129.51.183:9986/index/mobile/qdhb
		self.comp("checkDialog").open();
		// this.comp("checkDialog").open();
	};
	// 附近
	Model.prototype.row11Click = function(event) {
		this.comp("nearDialog").open();
	};

	return Model;
});