define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	Model.prototype.getReturnLen = function(data){
		return data.length;
	};
	//图片路径转换
	Model.prototype.getImageUrl = function(url){
		return require.toUrl(url);
	};
	
	Model.prototype.returnGoodsCustomRefresh = function(event){
		var returnGoods = [{id:'1',rName:'老布特 木糖醇果仁酥条花生',rImgUrl:'../../main/image/w4.jpg',rCoding:'PS221282870',rQuantity:'2',rPrice:'0.01'}];
		this.comp("returnGoods").loadData(returnGoods);
	};

	Model.prototype.handleOrderClick = function(event){
		justep.Shell.showPage("returnOrderEdit");
	};

	return Model;
});