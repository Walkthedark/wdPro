define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://res.wx.qq.com/open/js/jweixin-1.3.0.js");
	var asCore = require("$UI/wdPro/common/asCore");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		//regFromWxSer();

	};
	function regFromWxSer() {
		$.ajax({
			method : "GET",
			url : interFace.getSignPackage,
			cache : false,
			async : false,
			data : {
				url : location.href.split('#')[0],
				token : localStorage.getItem("token"),
				company_id : localStorage.getItem("company_id")
			},
			success : function(data) {
				// 这里是正式
				wx.config({
					beta : true,
					debug : false, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
					appId : data.appId, // 必填，公众号的唯一标识
					timestamp : data.timestamp, // 必填，生成签名的时间戳
					nonceStr : data.nonceStr, // 必填，生成签名的随机串
					signature : data.signature,// 必填，签名，见附录1
					jsApiList : [ "scanQRCode", 'chooseImage', 'previewImage', 'uploadImage', 'downloadImage' ]
				// 必填，需要使用的JS接口列表,如不申请会无权限使用相关的微信api，所有JS接口列表见附录2
				});
				wx.ready(function() {
					// config信息验证后会执行ready方法，所有接口调用都必须在config接口获得结果之后，config是一个客户端的异步操作，所以如果需要在页面加载时就调用相关接口，则须把相关接口放在ready函数中调用来确保正确执行。对于用户触发时才调用的接口，则可以直接调用，不需要放在ready函数中。
					regFromWxSertong();
				});

			}

		});
	}
	function regFromWxSertong() {
		$.ajax({
			method : "GET",
			url : interFace.getjssdk,
			cache : false,
			async : false,
			data : {
				url : location.href.split('#')[0],
				token : localStorage.getItem("token"),
				company_id : localStorage.getItem("company_id")
			},
			success : function(data) {
				// 这里是正式
				wx.agentConfig({
					corpid : data.corpid, // 必填，公众号的唯一标识
					agentid : data.agentid, // 必填，公众号的唯一标识
					timestamp : data.timestamp, // 必填，生成签名的时间戳
					nonceStr : data.nonceStr, // 必填，生成签名的随机串
					signature : data.signature,// 必填，签名，见附录1
					jsApiList : [ "selectExternalContact", 'openUserProfile', 'shareToExternalContact', 'sendChatMessage', 'getCurExternalContact', 'getCurExternalChat', 'applyCodeForCreateChat' ],
					success : function(res) {
						// 回调
						alert("注册成功");
						

					},
					fail : function(res) {
						alert(res.errMsg);
						if (res.errMsg.indexOf('function not exist') > -1) {
							alert('版本过低请升级');
						}
					}
				// 必填，需要使用的JS接口列表,如不申请会无权限使用相关的微信api，所有JS接口列表见附录2
				});
			}

		});
	}
	// 打开客户
	Model.prototype.button20Click = function(event) {
		justep.Shell.showPage("clientMainList");
	};
	// 打开联系人contactPep
	Model.prototype.button19Click = function(event) {
		justep.Shell.showPage("contactPep");
	};
	// 销售跟单
	Model.prototype.button15Click = function(event) {
		justep.Shell.showPage("salesOrder");
	};
	//
	Model.prototype.button7Click = function(event) {
		// workReport
//		justep.Shell.showPage("workReport");
		justep.Shell.showPage("workNmain");
	};

	Model.prototype.button17Click = function(event) {
		// outTimeDocumT
		justep.Shell.showPage("outTimeDocumT");
	};

	Model.prototype.button22Click = function(event) {
		// birthday
		justep.Shell.showPage("birthday");
	};
	Model.prototype.button4Click = function(event) {
		
	};
	Model.prototype.button3Click = function(event) {
		//justep.Shell.showPage("testHtml");
		//window.open("./test/test.html");
	};

	return Model;
});