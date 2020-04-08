define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	require("http://api.map.baidu.com/getscript?v=2.0&ak=9UEds3vEtbqPXFko5QQN25xyiNH7W5GN");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('../main/mian.w')
				},
				"homeMane" : {
					url : require.toUrl('./main/mian.w')
				},
				"productDetail" : {
					url : require.toUrl('./Commonly/orderDialog/dialog/productDetail/productDetail.w')
				},
				"GWork" : {
					url : require.toUrl('./ClockIn/GoToWork.w')
				},
				"AWork" : {
					url : require.toUrl('./ClockIn/AfterWork.w')
				},
				"Process" : {
					url : require.toUrl('./Process/Process.w')
				},
				"VisitList" : {
					url : require.toUrl('./Visit/VisitList.w')
				},
				"WorkList" : {
					url : require.toUrl('./WorkReport/WorkReport.w')
				},
				"VisitSignIn" : {
					url : require.toUrl('./VisitSignIn/VisitSignIn.w')
				},
				"Commonly" : {
					url : require.toUrl('./Commonly/Commonly.w')
				},
				"ChannelCost" : {
					url : require.toUrl('./ChannelCost/ChannelCost.w')
				},
				"SalesProgress" : {
					url : require.toUrl('./SalesProgress/SalesProgress.w')
				},
				"RankingList" : {
					url : require.toUrl('./RankingList/RankingList.w')
				},
				"CustomerManagement" : {
					url : require.toUrl('./CustomerManagement/CustomerManagement.w')
				},
				"Underling" : {
					url : require.toUrl('./Underling/Underling.w')
				},
				"Shoppers" : {
					url : require.toUrl('./Shoppers/Shoppers.w')
				},
				"Project" : {
					url : require.toUrl('./Project/Project.w')
				},
				"Schedule" : {
					url : require.toUrl('./Schedule/Schedule.w')
				},
				"IntegratedQuery" : {
					url : require.toUrl('./IntegratedQuery/IntegratedQuery.w')
				},
				"login" : {
					url : require.toUrl('./login/login.w')
				},
				"salesOrder" : {
					url : require.toUrl('./Commonly/dialog/salesOrder.w')
				},
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		// 调用登录事件
		var sendUrl = "/index.php/index/mobile/login";
		asCore.sendGetGisRequest(sendUrl, function(data) {
			if (data.success == 1) {
				// justep.Util.hint(data.msg);
			} else {
				justep.Util.hint(data.msg);
			}
		});
	};
	return Model;
});