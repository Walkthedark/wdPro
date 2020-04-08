define(function(require) {
	var fn = require("$UI/theAgentOrder2/common/interface");
	return {
		//-------------------main-----
		//验证是否绑定
		loginYz:fn.path+"/purchase/user/login",
		//获取所有商品
		allGoodsList:fn.path+"/sales/goods/index",//新的
		//获取商品列表
		listGoods:fn.path+"/sales/goods/listGoods",//
		//商品详情
		//GoodsInfo:fn.path+"/sales/goods/detail",
		GoodsInfo:fn.path+"/sales/goods/detailGoods",
		//商品详情全部
//		appGoodsData:fn.path+"/shop/goods/appGoodsData",
		appGoodsData:fn.path+"/sales/goods/webGoods",//新的
		//客户信息
		clientInfo:fn.path+"/crm/client/simple",//新的
		//获取客户地址
		Clientaddress:fn.path+"/sales/client_address/index",//新的
		//默认地址
		getDefaultAddress:fn.path+"/sales/client_address/getDefault",//新的
		//发票信息
//		getBill:fn.path+"/shop/client/getBill",
		getBill:fn.path+"/sales/client_bill/index",//新的客户发票
		//提交订单
//		saveOrder:fn.path+"/shop/order/save",
		saveOrder:fn.path+"/sales/sales_order/placeorder",//新的提交客户订单
		//获取
		Category:fn.path+"/sales/Category/all",
		//获取优惠价格
		getpromotion:fn.path+"/shop/Promotion/getpromotion",
		///////新接口
		sales_order:fn.path+"/sales/sales_order/index",//订单列表
		detail:fn.path+"/sales/sales_order/detail",//订单详情
		changeState:fn.path+"/sales/sales_order/changeState",//修改订单状态
		oederCancel:fn.path+"/sales/sales_order/orderCancel",//取消订单
		login:fn.path+"/crmwx/Wx/login",//
		//绍强的消息接口
		getinfo:fn.path+"/outstockentry/Market/getinfo",//取消订单
		getOrderState:fn.path+"/sales/sales_order/getOrderState",//订单状态列表
		categoryList:fn.path+"/sales/category/tree",//商品分类
		getRegion:fn.path+"/sales/client_address/getRegion",//获取省
		getCity:fn.path+"/sales/client_address/getCity",//获取市
		getArea:fn.path+"/sales/client_address/getArea",//获取镇
		addAdress:fn.path+"/sales/client_address/add",//上传地址
		add_receipt:fn.path+"/clientre/Receiptclient/add_receipt",//收款单
		get_client_order:fn.path+"/clientre/Receiptclient/get_client_order",//获取单子
		receipt_list:fn.path+"/clientre/Receiptclient/get_order_pay_history",//获取单子历史支付情况
		orderCensus:fn.path+"/sales/sales_order/orderCensus",//获取订单审核
		receipt_type:fn.path+"/clientre/Receiptclient/receipt_type",//获取订单审核
		sales_order_edit:fn.path+"/sales/sales_order/edit",//修改订单
		editinvace:fn.path+"/sales/client_bill/edit",//修改的是发票
		adressDetail:fn.path+"/sales/client_address/detail",//地址详情
	};

});