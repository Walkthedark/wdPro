define(function(require) {
	var fn = require("$UI/wd/common/interface");
	return {
		//-------------------main-----
		//验证是否绑定
		loginYz:fn.path+"/purchase/user/login",
		//获取商品
//		goodsList:fn.path+"/purchase/Goods/goodsList",
//		goodsList:fn.path+"/shop/goods/goodslist",//micheal
		goodsList:fn.path+"/shop/goods/goodsList",//新接口
		//获取所有商品
//		allGoodsList:fn.path+"/shop/goods/allGoodsList",//micheal
		allGoodsList:fn.path+"/shop/goods/index",//新接口
		
		//商品详情
//		GoodsInfo:fn.path+"/purchase/Goods/GoodsInfo",//micheal
		GoodsInfo:fn.path+"/shop/goods/detail",//新接口
		//商品详情全部
//		appGoodsData:fn.path+"/shop/goods/appGoodsData",//Micheal
		appGoodsData:fn.path+"/shop/goods/webGoods",//全部
		//客户信息
		clientInfo:fn.path+"/shop/client/index",
		//获取客户地址
		Clientaddress:fn.path+"/shop/address/getDefault",
		//发票信息
//		getBill:fn.path+"/purchase/client/getBill",//micheal
		getBill:fn.path+"/shop/bill/index",
		//提交订单
//		saveOrder:fn.path+"/purchase/order/save",//Micheal
		saveOrder:fn.path+"/shop/purchase_order/placeorder",
		//获取商品分类
//		Category:fn.path+"/shop/Category/all",//Micheal
		Category:fn.path+"/shop/category/tree",
		categoryAll:fn.path+"/shop/category/index",
		secondCate:fn.path+"/shop/category/secondCate",
		//加入购物车和需改接口
//		cartSave:fn.path+"/purchase/Cart/save",//micheal
		cartSave:fn.path+"/shop/cart/add",//新接口
		//购物车查询接口
//		cartList:fn.path+"/purchase/Cart/cartList",//Micheal
		cartList:fn.path+"/shop/cart/index",//新接口
		//查询子分类
		getChildCategory:fn.path+"/shop/category/getChildCategory",
		//查询所有的收获地址
		clientaddressAll:fn.path+"/shop/address/index",
		login:fn.path+"/crmwx/Wx/login",//登录
		//获取活动的价格
//		getpromotion:fn.path+"/shop/Promotionlist/supplier_promotion",
		getpromotion:fn.path+"/shop/promotion/getpromotion",
		//订单列表
		orderList:fn.path+"/shop/purchase_order/index",
		//获取供应商
		company_supplier:fn.path+"/sysset/Companyoffer/company_supplier",
		//获取组合促销中的商品
		group_promotion_list:fn.path+"/shop/Promotionlist/group_promotion_list",
		//单品促销中的商品
		promotion_list:fn.path+"/shop/Promotionlist/promotion_list",
		cartEdit:fn.path+"/shop/cart/edit",//修改购物车
		cartRemove:fn.path+"/shop/cart/remove",//删除购物车商品
		client_list:fn.path+"/sysset/Companyoffer/client_list",
		login_score:fn.path+"/score/Setscore/login_score",//获取积分的
		getCateGoodsOnly:fn.path+"/shop/goods/getCateGoods",//获取积分的
		advertlist:fn.path+"/sysset/Advert/advertlist",//首页图片
		
	};

});