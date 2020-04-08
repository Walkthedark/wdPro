define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://api.map.baidu.com/getscript?v=2.0&ak=9UEds3vEtbqPXFko5QQN25xyiNH7W5GN");
	var Model = function() {
		this.callParent();
		this.hd_id;
		this.bf_id;
		this.imgData = "";
		this.imgDataArray = new Array();
		this.UrlData = "";
	};
	Model.prototype.map = function(event) {
		// 百度地图API功能
		var cDate = this.comp("cData");
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
					var address = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
					cDate.setValue("addr", address);
				});
			} else {
				console.log('failed' + this.getStatus());
			}
		}, {
			enableHighAccuracy : true
		});
	};
	Model.prototype.modelLoad = function(event) {
		this.map();
		this.init();
	};
	Model.prototype.init = function() {
		$("#BelongsMarketImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadBelongsMarket").click();
		$("#uploadBelongsMarket").unbind().change(function() {
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
		var length = this.imgDataArray.length;
		if (length < 6) {
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
				var Insert = document.getElementById("BelongsMarketImg1");
				var div6 = document.getElementById("BelongsMarketImg");
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
				that.imgDataArray.push(imageData);
				// 上传略
				that.upload(imageData, divIDs);
			};
			img.src = res;
		} else {
			justep.Util.hint("此处只允许上传6张图片");
		}
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
				$('#uploadBelongsMarket').val('');
				if (data.error == "0") {
					justep.Util.hint("上传成功");
					if (self.UrlData) {
						self.UrlData = self.UrlData + ";" + data.url;
					} else {
						self.UrlData = data.url;
					}
				} else {
					justep.Util.hint("上传失败");
					$("#" + id).remove();
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
	Model.prototype.windowReceiver1Receive = function(event) {
		this.hd_id = event.data.hd_id;
		this.bf_id = event.data.bf_id;
	};
	Model.prototype.button4Click = function(event) {
		var cData = this.comp("cData");
		var jyhx = cData.getValue("jyhx");
		var addr = cData.getValue("addr");
		var hdms = cData.getValue("hdms");
		var self = this;
		var sendUrl = "/index/mobile/addhj";
		var zp = "";
		if (asCore.isNull(this.UrlData)) {
			zp = this.UrlData;
		}
		var data = {};
		data.jyhx = jyhx;
		data.addr = addr;
		data.hdms = hdms;
		data.zp = zp;
		data.bf_id = this.bf_id;
		data.hd_id = this.hd_id;
		asCore.addhj(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint(data.msg);
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint(data.msg);

			}
		});
	};
	return Model;
});