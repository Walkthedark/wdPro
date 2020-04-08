define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://api.map.baidu.com/getscript?v=2.0&ak=9UEds3vEtbqPXFko5QQN25xyiNH7W5GN");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var address = null;
	var Model = function() {
		this.callParent();
		this.imgData = "";
		this.imgDataArray = new Array();
	};
	Model.prototype.map = function(event) {
		// 百度地图API功能
		var map = new BMap.Map("container");
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r) {
			if (this.getStatus() == BMAP_STATUS_SUCCESS) {
				var mk = new BMap.Marker(r.point);
				map.addOverlay(mk);
				map.panTo(r.point);
				// console.log('您的位置：' + r.point.lng + ',' + r.point.lat);
				var geoc = new BMap.Geocoder();
				var pt = r.point;
				geoc.getLocation(pt, function(rs) {
					var addComp = rs.addressComponents;
					address = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
					// console.log(address);
					$("[xid=addresSpan]").text(address);
				});
			} else {
				console.log('failed' + this.getStatus());
			}
		}, {
			enableHighAccuracy : true
		});
		// 关于状态码
		// BMAP_STATUS_SUCCESS 检索成功。对应数值“0”。
		// BMAP_STATUS_CITY_LIST 城市列表。对应数值“1”。
		// BMAP_STATUS_UNKNOWN_LOCATION 位置结果未知。对应数值“2”。
		// BMAP_STATUS_UNKNOWN_ROUTE 导航结果未知。对应数值“3”。
		// BMAP_STATUS_INVALID_KEY 非法密钥。对应数值“4”。
		// BMAP_STATUS_INVALID_REQUEST 非法请求。对应数值“5”。
		// BMAP_STATUS_PERMISSION_DENIED 没有权限。对应数值“6”。(自 1.1 新增)
		// BMAP_STATUS_SERVICE_UNAVAILABLE 服务不可用。对应数值“7”。(自 1.1 新增)
		// BMAP_STATUS_TIMEOUT 超时。对应数值“8”。(自 1.1 新增)
	};
	Model.prototype.modelLoad = function(event) {
		this.map();
		this.init();
	};
	Model.prototype.init = function() {
		$("#goToWorkImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#upload").change(function() {
			var reader = new FileReader();
			reader.onload = function(e) {
				that.compress(this.result);
			};
			try {
				reader.readAsDataURL(this.files[0]);
			} catch (e) {
			}
		});
	}
	Model.prototype.compress = function(res) {
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
			var dataUrl = cvs.toDataURL('image/jpeg', 1);
			var Insert = document.getElementById("goToWorkImg1");
			var div6 = document.getElementById("goToWorkImg");
			var id = "photo" + justep.UUID.createUUID();
			var divIDs = "curvediv" + justep.UUID.createUUID();
			var html = "<img src='' alt='' id='" + id + "' class='simg'/>";
			var curvediv = document.createElement("div");
			curvediv.setAttribute("id", divIDs);
			curvediv.setAttribute("class", "lfloat simg");
			curvediv.style.zIndex = 1;
			div6.insertBefore(curvediv, Insert);
			// 增加img标签放置图片
			var oldHtml = document.getElementById(divIDs).innerHTML;
			document.getElementById(divIDs).innerHTML = oldHtml + html;
			$('#' + id).css("display", 'block');
			$('#' + id).attr('src', dataUrl);
			var imageData = dataUrl.substring(23);
			if (!self.imgData) {
				that.imgData = imageData;
			} else {
				that.imgData = that.imgData + "," + imageData;
			}
			// 上传略
			that.upload(imageData, divIDs);
		};
		img.src = res;
	};
	Model.prototype.upload = function(image_data, id) {
		/* 这里写上次方法,图片流是base64_encode的 */
		var self = this;
		justep.Baas.sendRequest({
			"url" : "/theSaleEnterprise/upload",
			"action" : "upload",
			"async" : false,
			"params" : {
				"imagedata" : image_data,
			},
			success : function(data) {
				if (data.error == "0") {
					justep.Util.hint("上传成功");
					self.comp("CData").setValue("tp", data.url);
					$("#goToWorkImg1").hide();
				} else {
					justep.Util.hint("上传失败");
					$("#" + id).remove();
					$("#goToWorkImg1").show();
				}
			},
			error : function() {
				layer.msg("上传失败");
			}
		});
	};
	Model.prototype.button2Click = function(event) {
		this.map();
	};

	// 拍照
	Model.prototype.GImageClick = function(event) {
		this.picSource(50, 1);
	};
	Model.prototype.picSource = function(quality, source) {

	};
	Model.prototype.button4Click = function(event) {
		var CData = this.comp("CData");
		// 上班说明 ： textarea1
		var sbdd = address;
		var sbzp = CData.getValue("tp");
		var sbsm = CData.getValue("sm");
		var sendUrl = "/index/mobile/index";
		debugger;
		asCore.sendPostGoToWork(sbdd, sbzp, sbsm, sendUrl, function(e) {
			if (e.success == 1) {
				justep.Util.hint("打卡成功！");
			} else {
				jsutep.Util.hint("打卡失败！");
			}
		});
	};
	return Model;
});
