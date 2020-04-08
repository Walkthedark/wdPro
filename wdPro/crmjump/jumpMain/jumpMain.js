define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var asCore = require("$UI/wdPro/common/asCore");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		//this.getregFromWxSer(event);
		this.staff_id = "";
	};
	// 获取客户的userID
	Model.prototype.button1Click = function(event) {
		// justep.Shell.showPage("contactPepInfoInfo", {id:'0000000014' });
	};
	Model.prototype.getregFromWxSer = function(event) {
//		window.open("./test/test.html");
		window.location.href="./test/test.html";
		//justep.Shell.showPage("");
		return ;
		//
		var self = this;
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
					self.getregFromWxSertong(event);
				});

			}

		});
	};
	Model.prototype.getregFromWxSertong = function(event) {
		var self = this;
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
//						wx.invoke('getCurExternalContact', {}, function(res) {
//							if (res.err_msg == "getCurExternalContact:ok") {
//								userId = res.userId; // 返回当前外部联系人userId
//								
//							} else {
//								alert("客户配置异常");
//							}
//						});
						justep.Shell.showPage("test");
					},
					fail : function(res) {
						if (res.errMsg.indexOf('function not exist') > -1) {
							alert('版本过低请升级');
						}
					}
				// 必填，需要使用的JS接口列表,如不申请会无权限使用相关的微信api，所有JS接口列表见附录2
				});
			}
		});
	};
	// 获取联系人信息
	Model.prototype.getlinkManInfo = function(event) {
		// contactDetail
		var params = {};
		params.id = this.staff_id;
		var res = asCore.setGetFalse(interFace.contactDetail, params);
		if (res.code == 200) {// 获取用户的信息
			// 判断是否为空
			if (res.data == null) {// 没有加入
				justep.Shell.showPage("addLcientJump", {
					id : params.id
				});
			} else {// 跳转详情
				justep.Shell.showPage("contactPepInfoInfo", {
					id : params.id
				});

			}
		}
	};

	Model.prototype.modelLoad = function(event){
		window.location.href = "../wdPro/test/test.html";
	};

	return Model;
});