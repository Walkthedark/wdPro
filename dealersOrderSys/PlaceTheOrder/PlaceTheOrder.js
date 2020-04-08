define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("./js/loadData");
	var Model = function() {
		this.callParent();
		this.popD = 1;
	};

	Model.prototype.threeClassDataCustomRefresh = function(event) {
		var url = require.toUrl("./class/json/threeClassData.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.secondClassDataCustomRefresh = function(event) {
		var url = require.toUrl("./class/json/secondClassData.json");
		allData.loadDataFromFile(url, event.source, true);
	};

	Model.prototype.rootClassDataCustomRefresh = function(event) {
		var url = require.toUrl("./class/json/rootClassData.json");
		allData.loadDataFromFile(url, event.source, true);
	};
	Model.prototype.listClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据
		 */

	};
	Model.prototype.button5Click = function(event) {
		if (this.popD == 1) {
			$(this.getElementByXid("div13")).fadeIn(300);
			$(this.getElementByXid("i10")).removeClass("icon-arrow-right-b");
			$(this.getElementByXid("i10")).addClass("icon-arrow-up-b");
			this.popD = 2;
		} else {
			$(this.getElementByXid("div13")).fadeOut(300);
			$(this.getElementByXid("i10")).addClass("icon-arrow-right-b");
			$(this.getElementByXid("i10")).removeClass("icon-arrow-up-b");
			this.popD = 1;
		}
	};
	Model.prototype.div3Click = function(event) {
		this.comp("popOver1").show();
	};
	Model.prototype.settlementClick = function(event){

	};
	Model.prototype.button8Click = function(event){

	};
	Model.prototype.addBtnClick = function(event){

	};
	Model.prototype.reductionBtnClick = function(event){

	};
	return Model;
});