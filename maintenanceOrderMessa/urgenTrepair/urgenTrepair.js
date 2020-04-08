define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/maintenanceOrderMessa/common/fn");
	var itface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var loading = require("$UI/maintenanceOrderMessa/common/loading/loading");
	require("css!$UI/maintenanceOrderMessa/common/layer/skin/default/layer").load();
	var wx = require("http://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	require("$UI/maintenanceOrderMessa/common/layer/layer");
	var common = require("$UI/maintenanceOrderMessa/common/common");
	var Model = function() {
		this.callParent();
		this.id;
	};
	function regFromWxSer() {
		$.ajax({
			method : "GET",
			url : itface.getSignPackage,
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
	Model.prototype.planEvaluationBtnClick = function(event) {
			var params = {
			"id" : this.id,
			"elevatorId":"000",
			data : {
				method : this
			}
		};
		this.comp("windowDialog2").open({"data":params});
	};

	Model.prototype.modelParamsReceive = function(event) {
		// this.id = this.getContext().getRequestParameter("id");
		// localStorage.setItem("token", '4tirl2946uh2csemfvi9sl9ch5');
		// this.initData();
		this.loginInfo(event);
	};
	Model.prototype.loginInfo = function(state) {
		var _self = this;
		var state = this.getContext().getRequestParameter("state");
		var code = this.getContext().getRequestParameter("code");
		this.id = this.getContext().getRequestParameter("id");
		localStorage.setItem("compNo", state);
//		// // 获取
		$.ajax({
			method : "GET",
			url : itface.wy_loginYz,
			cache : false,
			async : false,
			data : {
				code : code,
				compNo : state
			},
			success : function(data) {
				// 获取用户信息set
				if (data.error == 0) {
					localStorage.setItem("token", data.data.token);
					// 储存用户信息
					common.setUserInfo(data);
					_self.initData();
					_self.getaccessList(event);
					 regFromWxSer();
				} else {
					layer.msg('帐号信息加载失败A');
					// parent.WeixinJSBridge.call('closeWindow');
				}
			},
			"error" : function(msg) {
				layer.msg('帐号信息加载失败B');
				// parent.WeixinJSBridge.call('closeWindow');
			},
		});
	};
	
	Model.prototype.getaccessList = function(event) {
		// AccessoriesApi
		var self = this;
		var historyParData = this.comp("historyParData");
		var historySonMaterialData = this.comp("historySonMaterialData");
		var param = {};
		param.plan_id = this.id;
		param.plan_type = 1;
		param.token = localStorage.getItem("token");
		try {
			$.ajax({
				method : "GET",
				url : itface.apiReplaceHistory,
				cache : false,
				async : true,
				data : param,
				success : function(data) {
					if (data.error == 0) {
						// 加载数据
						historyParData.loadData(data.data.history, false);
						historySonMaterialData.loadData(data.data.material_detail, false);

					}
				},
				"error" : function(msg) {
				},
			});
		} catch (e) {
			// TODO: handle exception
		}
	};
	Model.prototype.initData = function() {
		var self = this;
		loading.loadingStart5();
		var BillData = this.comp("BillData");
		var params = {};
		params.token = localStorage.getItem("token");
		params.id = this.id;
		$.ajax({
			method : "GET",
			url : itface.apiGetMoreData,
			cache : false,
			async : true,
			data : params,
			success : function(data) {
				loading.loadingEnd();
				var item = data.data;
				BillData.newData({
					"defaultValues" : [ {
						"id" : fn.isNull(item.id),
						"sheetNo" : fn.isNull(item.sheetNo),
						"hitch_image" : fn.isNull(item.hitch_image),
						"scene_image" : fn.isNull(item.scene_image),
						"remark" : fn.isNull(item.remark),
						"signInTime" : fn.isNull(item.signInTime),
						"opSign" : fn.isNull(item.opSign),
						"signOutTime" : fn.isNull(item.signOutTime),
						"faultDes" : fn.isNull(item.faultDes),
						"faultType" : fn.isNull(item.faultType),
						"faultReason" : fn.isNull(item.faultReason),
						"solution" : fn.isNull(item.solution),
						"result" : fn.isNull(item.result),
						"receipt_time" : fn.isNull(item.receipt_time),
						"receipt_addr" : fn.isNull(item.receipt_addr),
						"depart_time" : fn.isNull(item.depart_time),
						"depart_addr" : fn.isNull(item.depart_addr),
						"signInAddr" : fn.isNull(item.signInAddr),
						"signOutAddr" : fn.isNull(item.signOutAddr),
						"address" : fn.isNull(item.address),
						"teamName" : fn.isNull(item.teamName),
						"contract_expire" : fn.isNull(item.contract_expire),
						"total_arrange" : fn.isNull(item.total_arrange),
						"total_hitch" : fn.isNull(item.total_hitch),
						"season_hitch" : fn.isNull(item.season_hitch),
						"month_hitch" : fn.isNull(item.month_hitch),
						"repairman" : fn.isNull(item.repairman),
						"depart_user" : fn.isNull(item.depart_user),
						"signInUser" : fn.isNull(item.signInUser),
						"signOutUser" : fn.isNull(item.signOutUser),
						"fpEvaluate1" : fn.isNull(item.fpEvaluate1),
						"fpEvaluate2" : fn.isNull(item.fpEvaluate2),
						"state" : fn.isNull(item.state)
					} ]
				});
				self.id = fn.isNull(item.id);
				// self.initHandleInfo(item);
				// self.initStatusInfo(item.state);
				if (item.hitch_image) {
					$("#troublePhoneBillDetailImg").empty();
					for (i = 0; i < item.hitch_image.length; i++) {
						self.setImgHtml(fn.getNewUrl(item.hitch_image[i]), 1);
					}
				}
				if (item.scene_image) {
					$("#troublePhoneNowDetailImg").empty();
					for (i = 0; i < item.scene_image.length; i++) {
						self.setImgHtml(fn.getNewUrl(item.scene_image[i]), 2);
					}
				}
				if (item.opSign || item.opSign2) {
					$("#troublePhoneNoneDetailImg").empty();
					if (item.opSign) {
						self.setImgHtml(fn.getNewUrl(item.opSign), 3);
					}
					if (item.opSign2) {
						self.setImgHtml(fn.getNewUrl(item.opSign2), 3);
					}
				}
				var status = fn.isNull(item.state);
				if (status == 1 || status == 2 || status == 3 || status == 4) {// 未完成
					document.getElementById(self.getIDByXID("bottom1")).style.display = "none";
				} else if (status == 5) {// 已完成
					document.getElementById(self.getIDByXID("bottom1")).style.display = "block";
					if (item.opSign) {// 已签字
						self.comp("button10").set({
							"disabled" : true
						})
					} else {// 未签字
						self.comp("button10").set({
							"disabled" : false
						})
					}

				} else {
					document.getElementById(self.getIDByXID("bottom1")).style.display = "none";
				}
			},
			"error" : function(msg) {
				loading.loadingEnd();
				layer.msg('信息加载失败');
			},
			"complete" : function(XMLHttpRequest, status) {
				loading.loadingEnd();
				if (status == 'timeout') {
					Ajax.abort();
					layer.msg('信息加载失败');
				}
			}
		});
	}
	Model.prototype.setImgHtml = function(url, type) {
		var that = this;
		var img = new Image(), maxH = 300;
		img.onload = function() {
			var cvs = document.createElement('canvas'), ctx = cvs.getContext('2d');
			if (img.height > maxH) {
				img.width *= maxH / img.height;
				img.height = maxH;
			}
			cvs.width = img.width;
			cvs.height = img.height;
			ctx.clearRect(0, 0, cvs.width, cvs.height);
			ctx.drawImage(img, 0, 0, img.width, img.height);
			var Insert;
			var div6;
			var imgDiv;
			if (type == 1) {
				div6 = document.getElementById("troublePhoneBillDetailImg");
				imgDiv = $("#troublePhoneBillDetailImg");
			} else if (type == 2) {
				div6 = document.getElementById("troublePhoneNowDetailImg");
				imgDiv = $("#troublePhoneNowDetailImg");
			} else if (type == 3) {
				div6 = document.getElementById("troublePhoneNoneDetailImg");
				imgDiv = $("#troublePhoneNoneDetailImg");
			}
			var id = "photo" + justep.UUID.createUUID();
			var divIDs = "curvediv" + justep.UUID.createUUID();
			var html = "<img src='' alt='' id='" + id + "' class='simg'/>";
			var curvediv = document.createElement("div");
			curvediv.setAttribute("id", divIDs);
			curvediv.setAttribute("class", "lfloat simg");
			curvediv.style.zIndex = 1;
			curvediv.onclick = openImg;
			// imgDiv.empty();
			// imgDiv.append(curvediv);
			div6.insertBefore(curvediv, Insert);
			var oldHtml = document.getElementById(divIDs).innerHTML;
			document.getElementById(divIDs).innerHTML = oldHtml + html;
			$('#' + id).css("display", 'block');
			$('#' + id).attr('src', url);
			if (type == 1) {
				$("#troubleDetailText1").css("display", 'none');
			} else {
				$("#troubleDetailText2").css("display", 'none');
			}
			function openImg() {
				wx.previewImage({
					current : url, // 当前显示图片的http链接
					urls : [ url ]
				// 需要预览的图片http链接列表
				});
			}
		};
		img.src = url;
	}
	Model.prototype.image3Click = function(event) {
		var url = server.path + "/" + this.listData[0].opSign2;
		wx.previewImage({
			current : url, // 当前显示图片的http链接
			urls : [ url ]
		// 需要预览的图片http链接列表
		});
	};
	Model.prototype.image2Click = function(event) {
		var extension = event.bindingContext.$object.row.extension.value.latestValue;
		var url = event.bindingContext.$object.row.newUrl.value.latestValue;
		if (extension.toUpperCase() == "PNG" || extension.toUpperCase() == "JPG" || extension.toUpperCase() == "JIF" || extension.toUpperCase() == "BMP") {
			wx.previewImage({
				current : url, // 当前显示图片的http链接
				urls : [ url ]
			// 需要预览的图片http链接列表
			});
		} else {
			layer.msg("只有图片可以点击预览");
		}
	};
	Model.prototype.geturlImg = function(url) {
		return server.path + url;
	};
	Model.prototype.button13Click = function(event) {
		parent.WeixinJSBridge.call('closeWindow');
	};
	Model.prototype.button10Click = function(event) {
		var params = {
			"id" : this.id,
			"flag" : 0,
			data : {
				method : this
			}
		};
		this.comp("signatureWinDialog").open({
			"data" : params
		});

	};
	Model.prototype.signatureWinDialogClose = function(event) {
		this.initData();
	};
	Model.prototype.refashGetParent = function(event) {
		this.initData();
	};
	return Model;
});