define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var asCore = require("$UI/wdPro/common/asCore");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main/main.w')
				},
				"clientMainList" : {
					url : require.toUrl('./client/clientMain.w')
				},
				"addClient" : {
					url : require.toUrl('./client/dialog/addClient.w')
				},
				"clientInfo" : {
					url : require.toUrl('./client/dialog/clientInfo.w')
				},
				"imageList" : {
					url : require.toUrl('./client/dialog/dialog/imageList.w')
				},
				"contactPep" : {// 联系人
					url : require.toUrl('./contactPep/contactPep.w')
				},
				"addContactPep" : {// 新增联系人
					url : require.toUrl('./contactPep/dialog/addContactPep.w')
				},
				"salesOrder" : {// 销售跟单
					url : require.toUrl('./salesOrder/salesOrder.w')
				},
				"addSalesOrder" : {// 销售跟单
					url : require.toUrl('./salesOrder/dialog/addSalesOrder.w')
				},
				"editSalesOrder" : {//
					url : require.toUrl('./salesOrder/dialog/editSalesOrder.w')
				},
				"infoSalesOrder" : {//
					url : require.toUrl('./salesOrder/dialog/infoSalesOrder.w')
				},
				"common_chebox" : {//
					url : require.toUrl('./client/dialog/dialog/common_chebox.w')
				},
				"linkTagList" : {//
					url : require.toUrl('./contactPep/dialog/dialog/linkTagList.w')
				},
				"seachSexChoose" : {//
					url : require.toUrl('./contactPep/dialog/dialog/seachSexChoose.w')
				},
				"linkStateChoose" : {//
					url : require.toUrl('./contactPep/dialog/dialog/linkStateChoose.w')
				},
				"salesAreaChoose" : {//
					url : require.toUrl('./salesOrder/dialog/salesAreaChoose.w')
				},
				"workReport" : {//
					url : require.toUrl('./workReport/workReport.w')
				},
				"myWorkReport" : {//
					url : require.toUrl('./workReport/dialog/showPage/myWorkReport.w')
				},
				"giveMyWorkReport" : {// 抄送给我的
					url : require.toUrl('./workReport/dialog/showPage/giveMyWorkReport.w')
				},
				"otherWorkReport" : {// 抄送给我的
					url : require.toUrl('./workReport/dialog/showPage/otherWorkReport.w')
				},
				"workReportInfo" : {// 详情
					url : require.toUrl('./workReport/dialog/workReportInfo.w')
				},
				"addCommonPlan" : {// 添加日报
					url : require.toUrl('./workReport/dialog/addCommonPlan.w')
				},
				"addComsuerPlan" : {// 添加日报
					url : require.toUrl('./workReport/dialog/addComsuerPlan.w')
				},
				"workRMain" : {// 添加日报
					url : require.toUrl('./workReport/workRMain.w')
				},
				"outTimeDocumT" : {// 超期跟单
					url : require.toUrl('./outTimeDocum/outTimeDocumT.w')
				},
				"recentlyOrder" : {// 近期跟单
					url : require.toUrl('./recentlyOrder/recentlyOrder.w')
				},
				"birthday" : {// 客户生日
					url : require.toUrl('./birthday/birthday.w')
				},
				"successClient" : {// 成功提示
					url : require.toUrl('./successClient/successClient.w')
				},
				"clientAndPop" : {// 客户关联客户
					url : require.toUrl('./client/dialog/dialog/clientAndPop.w')
				},
				"clientAndLinkMan" : {// 客户关联联系人
					url : require.toUrl('./client/dialog/dialog/clientAndLinkMan.w')
				},
				"associatedPop" : {// 解除关联客户
					url : require.toUrl('./client/dialog/dialog/associatedPop.w')
				},
				"clientDetailedInfo" : {// 客户信息详情
					url : require.toUrl('./client/dialog/dialog/clientDetailedInfo.w')
				},
				"contactPepInfo" : {// 客户信息详情
					url : require.toUrl('./contactPep/dialog/contactPepInfo.w')
				},
				"linkAndPop" : {// 联系人关联客户
					url : require.toUrl('./contactPep/dialog/dialog/linkAndPop.w')
				},
				"linkAddClient" : {// 联系人关联客户
					url : require.toUrl('./contactPep/dialog/dialog/linkAddClient.w')
				},
				"modifyContactPep" : {// 联系人关联客户
					url : require.toUrl('./contactPep/dialog/modifyContactPep.w')
				},
				"ModifyClientInfo" : {// 修改联系人
					url : require.toUrl('./client/dialog/ModifyClientInfo.w')
				},
				"infoAddsalesOrder" : {// 修改联系人
					url : require.toUrl('./salesOrder/dialog/dialog/infoAddsalesOrder.w')
				},
				"clientSalesOrder" : {// 客户新增跟单
					url : require.toUrl('./client/dialog/dialog/clientSalesOrder.w')
				},
				"newClinetAddlink" : {// 客户新增跟单
					url : require.toUrl('./client/dialog/dialog/newClinetAddlink.w')
				},
				"successSalesOrder" : {// 添加跟单成功提示
					url : require.toUrl('./successClient/successSalesOrder.w')
				},
				"busManagerClient" : {//业务经理
					url : require.toUrl('./client/dialog/dialog/busManagerClient.w')
				},
				"test" : {//业务经理
					url : require.toUrl('./test/test.w')
				},
				"workNmain" : {//业务经理
					url : require.toUrl('./workReport/workNmain.w')
				},
				"reportInfoChoose" : {//业务经理
					url : require.toUrl('./workReport/reportInfoChoose.w')
				},
				"behaviorInfo" : {//业务经理
					url : require.toUrl('./workReport/behaviorInfo.w')
				},
				"testHtml" : {//业务经理
					url : require.toUrl('./test/test.html')
				},
			}
		});

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
		params.type = 'crm';// replace是代下单
		// var res = asCore.setGetFalseLogin(interFace.login, params);
		// if (res.errcode == 0) {//
		// 	localStorage.setItem("token", res.data.token);
		// 	localStorage.setItem("staff_id", res.data.staff_id);
		// 	localStorage.setItem("userId", res.data.user);
		// 	localStorage.setItem("staff_name", res.data.staff_name);
		// 	localStorage.setItem("company_id", state);
			justep.Shell.showPage("main");
		// } else {
		// 	justep.Util.hint("用户信息读取失败");

		// }
	};

	return Model;
});