define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var ShellImpl = require('$UI/system/lib/portal/shellImpl');
	var CommonUtils = require("$UI/system/components/justep/common/utils");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var fn = require("$UI/maintenanceOrderMessa/common/requestServer");
	var common = require("$UI/maintenanceOrderMessa/common/common");
	require("css!$UI/maintenanceOrderMessa/common/layer/skin/default/layer").load();
	require("$UI/maintenanceOrderMessa/common/layer/layer");
	var wx = require("https://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var Model = function() {
		this.callParent();
		var shellImpl = new ShellImpl(this, {
			"contentsXid" : "pages",
			"pageMappings" : {
				"main" : {
					url : require.toUrl('./main/main.w')
				},
				"guySingleInfo" : {// 维修签字
					url : require.toUrl('../maintenanceOrderMessa/guySingle/dialog/guySingleInfo.w')
				},
				"orderInfo" : {// 维保签字
					url : require.toUrl('../maintenanceOrderMessa/maintenanceOrder/dialog/orderInfo.w')
				},
				"signature" : {// 签字
					url : require.toUrl('../maintenanceOrderMessa/signature-pad/signature.w')
				},
				"planEvaluation" : {// 维保评价
					url : require.toUrl('../maintenanceOrderMessa/evaluation/planEvaluation.w')
				},
				"evaluation" : {// 维修评价
					url : require.toUrl('../maintenanceOrderMessa/evaluation/evaluation.w')
				},
				"guySingleInfoLook" : {// 维修详情查看
					url : require.toUrl('../maintenanceOrderMessa/guySingle/dialog/guySingleInfoLook.w')
				},
				"orderLook" : {// 维保详情查看
					url : require.toUrl('../maintenanceOrderMessa/maintenanceOrder/dialog/orderLook.w')
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

	Model.prototype.modelLoad = function(event) {
		// 判断
		var code = this.getContext().getRequestParameter("code");
		var state = this.getContext().getRequestParameter("state");
		// var flag = this.getContext().getRequestParameter("flag");
		var id = this.getContext().getRequestParameter("id");
		var st = id.split("|");
		var self = this;
		var params = {};
		params.code = code;
		params.compNo = state;
		$.ajax({
			method : "GET",
			url : inface.wy_loginYz,
			cache : false,
			async : false,
			data : params,
			success : function(data) {
				if (data.error == 0) {
					localStorage.setItem("token", data.data.token);
//
					// //储存用户信息
					common.setUserInfo(data);
					if (st[1] == 0) {
						var para = {
							"id" : st[0],
						};	
						// 跳转页面
						var url = "$UI/maintenanceOrderMessa/guySingle/dialog/guySingleInfo.w";
						self.comp("windowContainer1").load(url, para);
						// justep.Shell.showPage("guySingleInfo", para);
					} else if (st[1] == 1) {

						var para = {
							"id" : st[0],
						};
						// 跳转页
						var url = "$UI/maintenanceOrderMessa/maintenanceOrder/dialog/orderInfo.w";
						self.comp("windowContainer1").load(url, para);
						// justep.Shell.showPage("orderInfo", para);
					} else if (st[1] == 2) {

						var para = {
							"id" : st[0],
						};
						// 跳转页
						var url = "$UI/maintenanceOrderMessa/guySingle/dialog/guySingleInfoLook.w";
						self.comp("windowContainer1").load(url, para);
						// justep.Shell.showPage("orderInfo", para);
					} else if (st[1] == 3) {

						var para = {
							"id" : st[0],
						};
						// 跳转页
						var url = "$UI/maintenanceOrderMessa/maintenanceOrder/dialog/orderLook.w";
						self.comp("windowContainer1").load(url, para);
						// justep.Shell.showPage("orderInfo", para);
					}else if (st[1] == 4) {

						var para = {
							"id" : st[0],
						};
						// 跳转页
						var url = "$UI/maintenanceOrderMessa/reportreview/reportreview.w";
						self.comp("windowContainer1").load(url, para);
						// justep.Shell.showPage("orderInfo", para);
					}
			}
				regFromWxSer();
		},
			"error" : function(msg) {
				layer.msg('登录信息加载失败');
			},
			"complete" : function(XMLHttpRequest, status) {
				if (status == 'timeout') {
					Ajax.abort();
					layer.msg(alert + '登录信息加载失败');

				}
			}
		});

		// justep.Shell.showPage("guySingleInfo");
	};
	function regFromWxSer() {
		$.ajax({
			method : "GET",
			url : inface.getSignPackage,
			cache : false,
			async : false,
			data : {
				url : location.href.split('#')[0],
				token : localStorage.getItem("token")
			},
			success : function(data) {
				// 这里是正式
				wx.config({
					debug : false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
					appId : data.appId, // 必填，公众号的唯一标识
					timestamp : data.timestamp, // 必填，生成签名的时间戳
					nonceStr : data.nonceStr, // 必填，生成签名的随机串
					signature : data.signature,// 必填，签名，见附录1
					jsApiList : [ "scanQRCode", 'chooseImage', 'previewImage', 'uploadImage', 'downloadImage' ]
				// 必填，需要使用的JS接口列表,如不申请会无权限使用相关的微信api，所有JS接口列表见附录2
				});
			}

		});
	}
	return Model;
});