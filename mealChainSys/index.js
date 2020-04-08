define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main/main.w')
				},
				"personalCenter" : {
					url : require.toUrl('./main/dialog/personalCenter.w')
				},
				"message" : {
					url : require.toUrl('../mealChainSys/main/dialog/message.w')
				},
				"feedback" : {
					url : require.toUrl('../mealChainSys/main/dialog/feedback.w')
				},
				"coummun" : {
					url : require.toUrl('./mealChainSys/main/dialog/coummun.w')
				},
				"messageInfo" : {
					url : require.toUrl('../mealChainSys/main/dialog/dialog/messageInfo.w')
				},
				"contactInfo" : {
					url : require.toUrl('../mealChainSys/main/dialog/dialog/contactInfo.w')
				},
				"purchase" : {
					url : require.toUrl('../mealChainSys/procurement/purchase.w')
				},
				"initiateShengou" : {
					url : require.toUrl('../mealChainSys/procurement/dialog/initiateShengou.w')
				},
				"reconciliation" : {
					url : require.toUrl('../mealChainSys/reconciliation/reconciliation.w')
				},
				"reconciliationInfo" : {
					url : require.toUrl('../mealChainSys/reconciliation/dialog/reconciliationInfo.w')
				},
				"gongYingsXianx" : {
					url : require.toUrl('../mealChainSys/reconciliation/dialog/dialog/gongYingsXianx.w')
				},
				"setApp" : {
					url : require.toUrl('../mealChainSys/setApp/setApp.w')
				},
				"jibenSett" : {
					url : require.toUrl('../mealChainSys/returnGoods/dialog/jibenSett.w')
				},
				"myDepartment" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/dialog/myDepartment.w')
				},
				"dePartMentInfo" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/dialog/dePartMentInfo.w')
				},
				"bumenJibenSet" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/dialog/dialog/bumenJibenSet.w')
				},
				"chooseGongyingS" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/chooseGongyingS.w')
				},
				"addGongYings" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/addGongYings.w')
				},
				"addGongyingSInfo" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/dialog/addGongyingSInfo.w')
				},
				"shengouSHangPin" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/dialog/dialog/shengouSHangPin.w')
				},
				"addShengou" : {
					url : require.toUrl('../mealChainSys/setApp/dialog/dialog/dialog/dialog/addShengou.w')
				},
				"placeTheOrder" : {
					url : require.toUrl('../mealChainSys/placeTheOrder/placeTheOrder.w')
				},
				"placeOrderInfo" : {
					url : require.toUrl('../mealChainSys/placeTheOrder/dialog/placeOrderInfo.w')
				},
				"editPlaceOrderInfo" : {
					url : require.toUrl('../mealChainSys/placeTheOrder/dialog/editPlaceOrderInfo.w')
				},
				"addPlaceOrderInfo" : {
					url : require.toUrl('../mealChainSys/placeTheOrder/dialog/addPlaceOrderInfo.w')
				},
				"theGoods" : {
					url : require.toUrl('../mealChainSys/theGoods/theGoods.w')
				},
				"receipt" : {
					url : require.toUrl('../mealChainSys/theGoods/dialog/receipt.w')
				},
				"theGoodsOrder" : {
					url : require.toUrl('../mealChainSys/theGoods/dialog/dialog/theGoodsOrder.w')
				},
				"nuclearAccount" : {
					url : require.toUrl('../mealChainSys/nuclearAccount/nuclearAccount.w')
				},
				"nuclearAccountInfo" : {
					url : require.toUrl('../mealChainSys/nuclearAccount/dialog/nuclearAccountInfo.w')
				},
				//申购管理
				"purchaseMeg" : {
					url : require.toUrl('../mealChainSys/purchaseMeg/purchaseMeg.w')
				},
				"purchasemegInfo" : {
					url : require.toUrl('../mealChainSys/purchaseMeg/dialog/purchasemegInfo.w')
				},
				"purchaseIngo" : {
					url : require.toUrl('../mealChainSys/purchaseMeg/dialog/dialog/purchaseIngo.w')
				},
				"nodeInfo" : {
					url : require.toUrl('../mealChainSys/purchaseMeg/dialog/dialog/nodeInfo.w')
				},
				"supplyMeg" : {
					url : require.toUrl('../mealChainSys/supplyMeg/supplyMeg.w')
				},
				"supplyMegInfo" : {
					url : require.toUrl('../mealChainSys/supplyMeg/supplyMegInfo.w')
				},
				"supplyJiedianInfo" : {
					url : require.toUrl('../mealChainSys/supplyMeg/dialog/supplyJiedianInfo.w')
				},
				"theGoodsMeg" : {
					url : require.toUrl('../mealChainSys/theGoodsMeg/theGoodsMeg.w')
				},
				"theGoodsMegInfo" : {
					url : require.toUrl('../mealChainSys/theGoodsMeg/theGoodsMegInfo.w')
				},
				"theGoodsNode" : {
					url : require.toUrl('../mealChainSys/theGoodsMeg/dialog/theGoodsNode.w')
				},
				"returnsMeg" : {
					url : require.toUrl('../mealChainSys/returnsMeg/returnsMeg.w')
				},
				"returnsMegInfo" : {
					url : require.toUrl('../mealChainSys/returnsMeg/returnsMegInfo.w')
				},
				"returnsMegNode" : {
					url : require.toUrl('../mealChainSys/returnsMeg/dialog/returnsMegNode.w')
				},
				"permissions" : {
					url : require.toUrl('../mealChainSys/permissions/permissions.w')
				},
				"setPermissions" : {
					url : require.toUrl('../mealChainSys/permissions/setPermissions/setPermissions.w')
				},
				
			}
		});
		shellImpl.useDefaultExitHandler = false;

		CommonUtils.attachDoubleClickExitApp(function() {
			if (shellImpl.pagesComp.getActiveIndex() === 0) {
				return true;
			}
			return false;
		});
	};


	return Model;
});