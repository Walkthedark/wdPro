define(function(require) {
	var fn = require("$UI/TheSaleEnterprise/common/interface");
	return {
		//-------------------main-----
		//验证是否绑定
		loginYz:fn.path+"/purchase/user/login",
		//获取商品
		goodsList:fn.path+"/purchase/Goods/goodsList",
		//获取所有商品
		allGoodsList:fn.path+"/shop/goods/allGoodsList",
		//商品详情
		GoodsInfo:fn.path+"/purchase/Goods/GoodsInfo",
		//商品详情全部
		appGoodsData:fn.path+"/shop/goods/appGoodsData",
		//客户信息
		clientInfo:fn.path+"/shop/client/index",
		//获取客户地址
		Clientaddress:fn.path+"/shop/Clientaddress/all",
		//发票信息
		getBill:fn.path+"/purchase/client/getBill",
		//提交订单
		saveOrder:fn.path+"/shop/order/save",
		//获取
		Category:fn.path+"/shop/Category/all",
		
		
	};

});