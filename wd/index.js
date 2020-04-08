define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var inFace = require("$UI/wd/common/interfaceAdress");
	var asCore = require("$UI/wd/common/asCore");
	var common = require("$UI/wd/common/common");
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main/main.w')
				},
				"homeMane" : {
					url : require.toUrl('./main/main.w')
				},
				"companyInfo" : {
					url : require.toUrl('./companyInfo/companyInfo.w')
				},
				"submitOrder" : {
					url : require.toUrl('./order/submitOrder.w')
				},
				"addressList" : {
					url : require.toUrl('./address/addressList/addressList.w')
				},
				"productClass" : {
					url : require.toUrl('./productClass/productClass.w')
				},
				"selectReturnGoods" : {
					url : require.toUrl('./applyReturnGoods/selectReturnGoods/selectReturnGoods.w')
				},
				"returnGoodsList" : {
					url : require.toUrl('./applyReturnGoods/returnGoodsList/returnGoodsList.w')
				},
				"returnOrderEdit" : {
					url : require.toUrl('./applyReturnGoods/returnOrderEdit/returnOrderEdit.w')
				},
				"productList" : {
					url : require.toUrl('./applyReturnGoods/productList/productList.w')
				},
				"returnOrderSuccess" : {
					url : require.toUrl('./applyReturnGoods/returnOrderSuccess/returnOrderSuccess.w')
				},
				"returnSuccessList" : {
					url : require.toUrl('./applyReturnGoods/returnSuccessList/returnSuccessList.w')
				},
				"productListInfo" : {
					url : require.toUrl('./applyReturnGoods/productListInfo/productListInfo.w')
				},
				"returnOrderDetail" : {
					url : require.toUrl('./applyReturnGoods/returnOrderDetail/returnOrderDetail.w')
				},
				"briefInfo" : {
					url : require.toUrl('./applyReturnGoods/breifInfo/breifInfo.w')
				},
				"actionLog" : {
					url : require.toUrl('./applyReturnGoods/actionLog/actionLog.w')
				},
				"orderStatic" : {
					url : require.toUrl('./orderStatic/orderStatic.w')
				},
				"orderStaticSearch" : {
					url : require.toUrl('./orderStaticSearch/orderStaticSearch.w')
				},
				"orderSearchInfo" : {
					url : require.toUrl('./orderSearchInfo/orderSearchInfo.w')
				},
				"orderSearch" : {
					url : require.toUrl('./orderSearch/orderSearch.w')
				},
				"orderEdit" : {
					url : require.toUrl('./orderEdit/orderEdit.w')
				},
				"orderDetail" : {
					url : require.toUrl('./orderDetail/orderDetail.w')
				},
				"StaticResult" : {
					url : require.toUrl('./StaticResult/StaticResult.w')
				},
				"login" : {
					url : require.toUrl('./login/login.w')
				},
				"productDetail" : {
					url : require.toUrl('./productDetail/productDetail.w')
				},
				"addressList" : {
					url : require.toUrl('./address/addressList/addressList.w')
				},
				"invoiceList" : {
					url : require.toUrl('./order/dialog/invoice.w')
				},
				"seachGoods" : {
					url : require.toUrl('./PlaceTheOrder/dialog/seachGoods.w')
				},
				"screeningMain" : {
					url : require.toUrl('./PlaceTheOrder/dialog/screeningMain.w')
				},
				"product" : {
					url : require.toUrl('./product/product.w')
				},
				"cart" : {
					url : require.toUrl('./cart/cart.w')
				},
				"huoDong" : {
					url : require.toUrl('./huoDong/huoDong.w')
				},
				"huoDongInfo" : {
					url : require.toUrl('./huoDong/dialog/huoDongInfo.w')
				},
			}
		})
	};

	Model.prototype.modelLoad = function(event) {
		localStorage.setItem("token", "EAEB66DE9D0B0C5969A93D82C24B99C3");
		localStorage.setItem("supplier_id", "1047");
		localStorage.setItem("user", "13999999999");
		localStorage.setItem("pageFlag", 1);
	};
// 参数接受事件
	Model.prototype.modelParamsReceive = function(event) {
		var _self = this;
		var code = this.getContext().getRequestParameter("code");
		var state = this.getContext().getRequestParameter("state");
		// login
		var params = {};
		params.code = code;
		params.company_id = state;
		params.type = 'shop';// replace是代下
	//	var res = asCore.setlogin(inFace.login, params);
//		if (res.errcode == 0) {//
//			localStorage.setItem("token", res.data.token);
//			localStorage.setItem("staff_id", res.data.staff_id);
//			localStorage.setItem("staff_name", res.data.staff_name);
//			localStorage.setItem("user", res.data.user);
//			localStorage.setItem("supplier_id", state);//将登录的企业号变成供应商
			this.comp("windowDialog1").open();
//		} else {
//			justep.Util.hint("用户信息读取失败");
//		}
	};
	Model.prototype.chooseSup = function(event) {
		this.comp("mainContainer").load("$UI/wd/main/main.w")
	};
	
	
	
	return Model;
});