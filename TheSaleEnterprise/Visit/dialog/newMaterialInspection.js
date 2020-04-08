define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
		this.imgData = "";
		this.imgDataArray = new Array();
		this.UrlData = "";
	};

	Model.prototype.modelLoad = function(event) {
		this.init();
	};
	Model.prototype.init = function() {
		$("#newMaterialInspectionImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadnewMaterialInspection").click();
		$("#uploadnewMaterialInspection").unbind().change(function() {
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
				var Insert = document.getElementById("newMaterialInspectionImg1");
				var div6 = document.getElementById("newMaterialInspectionImg");
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
		debugger;
		var self = this;
		justep.Baas.sendRequest({
			"url" : "/theSaleEnterprise/upload",
			"action" : "upload",
			"async" : false,
			"params" : {
				"imagedata" : image_data,
			},
			success : function(data) {
				$('#uploadnewMaterialInspection').val('');
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

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var cDate = this.comp("cDate");
		var wlmc = cDate.getValue("wlmc");
		var jcjg = cDate.getValue("jcjg");
		var sl = cDate.getValue("sl");
		var jcms = cDate.getValue("jcms");
		var data = {};
		data.wlmc = wlmc;
		data.jcjg = jcjg;
		data.sl = sl;
		data.jcms = jcms;
		data.bf_id = this.id;
		data.id = this.wdid;
		if (asCore.isNull(this.UrlData)) {
			data.zp = this.UrlData;
		}
		var sendUrl = "/index/mobile/tjwljc";
		// 25.添加物料检 查 地址：http://61.129.51.183:9986/index/mobile/tjwljc
		asCore.sendTjwljc(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("添加物料成功！");
				self.comp("wReceiver").windowEnsure();
			} else {
				justep.Util.hint("添加物料失败！");
			}

		});
	};

	return Model;
});