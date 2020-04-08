define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		var self = this;
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : self.transUrl('./main/main.w')
				},
				"aboutUs" : {
					url : self.transUrl('./channel/aboutUs.w')
				},
				"product" : {
					url : self.transUrl('./channel/product.w')
				},
				"placeOrder" : {
					url : self.transUrl('./placeOrder/placeOrder.w')
				},
				"orderAudit" : {
					url : self.transUrl('./main/dialog/orderAudit.w')
				},
				"InfoOrder" : {
					url : self.transUrl('./main/dialog/dialog/InfoOrder.w')
				},
				"orderInfoLook" : {
					url : self.transUrl('./main/dialog/dialog/orderInfoLook.w')
				},
				"cartList" : {
					url : self.transUrl('./placeOrder/orderDialog/dialog/cartList.w')
				},
				"planceOrderTwo" : {
					url : self.transUrl('./main/dialog/dialog/dialog/planceOrder.w')
				},
				"modifyInvoice" : {
					url : self.transUrl('./placeOrder/orderDialog/dialog/dialog/modifyInvoice.w')
				},
				"customer" : {
					url : self.transUrl('./placeOrder/dialog/customer.w')
				},
				"adressList" : {
					url : self.transUrl('./adress/adressList.w')
				},
				"secondOrder" : {
					url : self.transUrl('./placeOrder/orderDialog/secondOrder.w')
				},
				"orderDialogS" : {
					url : self.transUrl('./placeOrder/orderDialog/orderDialogS.w')
				},
				"orderDialog" : {
					url : self.transUrl('./placeOrder/orderDialog/orderDialog.w')
				},
				"placeOrder2" : {
					url : self.transUrl('./placeOrder/placeOrder2.w')
				},
				"giftDialog" : {
					url : self.transUrl('./placeOrder/orderDialog/giftDialog.w')
				},
				"giftClassMain" : {
					url : self.transUrl('./placeOrder/orderDialog/giftClassMain.w')
				},
				"successOrder" : {
					url : self.transUrl('./successOrder/successOrder.w')
				},

			}
		});
	};

	Model.prototype.modelLoad = function(event) {
//		 localStorage.setItem("token", 'E48C5E4DC5E9C352D57F796814954855');
//		 localStorage.setItem("userId", "13999999999");
//		 localStorage.setItem("company_id", 1047);
//		 localStorage.setItem("cartList", "[]");
//		 localStorage.setItem("giftList", "[]");
//		 localStorage.setItem("supplier_id", 1047);
//		 localStorage.setItem("orderFlag", 2);
//		localStorage.clear(); 
		 localStorage.setItem("token", 'E48C5E4DC5E9C352D57F796814954855');
		 localStorage.setItem("userId", "13811240083");
		 localStorage.setItem("company_id", 1053);
		 localStorage.setItem("cartList", "[]");
		 localStorage.setItem("giftList", "[]");
		 localStorage.setItem("supplier_id", 1053);
		 localStorage.setItem("orderFlag", 2);
	};

	// 参数接受事件
	Model.prototype.modelParamsReceive = function(event) {
		var _self = this;
		var code = this.getContext().getRequestParameter("code");
		var state = this.getContext().getRequestParameter("state");
//		// login
		var params = {};
	//	localStorage.clear(); 
		localStorage.setItem("cartList", "[]");
		localStorage.setItem("giftList", "[]");
		localStorage.setItem("client_id", "");//将数据
		localStorage.setItem("address_id", "");//将数据
		params.code = code;
		params.company_id = state;
		params.type = 'replace';// replace是代下单
//		var res = asCore.setlogin(inFace.login, params);
//		if (res.errcode == 0) {//
//			localStorage.setItem("token", res.data.token);
//			localStorage.setItem("staff_id", res.data.staff_id);
//			localStorage.setItem("staff_name", res.data.staff_name);
//			localStorage.setItem("userId", res.data.user);
//			localStorage.setItem("company_id", state);
// 			localStorage.setItem("orderFlag", 2);
//			localStorage.setItem("supplier_id", state);
			justep.Shell.showPage("main");
//		} else {
//			justep.Util.hint("用户信息读取失败");
//		}
	};
	Model.prototype.transUrl = function(url) {
		return require.toUrl(url);
	};
	return Model;
});