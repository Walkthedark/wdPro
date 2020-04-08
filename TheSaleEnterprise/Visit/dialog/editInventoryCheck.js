define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.imgData = "";
		this.imgDataArray = new Array();
		this.UrlData = "";
		this.UrlList = new Array();
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var cDate = this.comp("cDate");
		var cp_id = cDate.getValue("cp_id");
		var kcqk_lx = cDate.getValue("kcqk_lx");
		var kcqk_scrq = cDate.getValue("kcqk_scrq");
		var kcqk_kcsl_x = cDate.getValue("kcqk_kcsl_x");
		var kcqk_kcsl_z = cDate.getValue("kcqk_kcsl_z");
		var sm = cDate.getValue("sm");
		var data = {};
		data.cp_id = cp_id;
		data.kcqk_lx = kcqk_lx;
		data.kcqk_scrq = kcqk_scrq;
		data.kcqk_kcsl_x = kcqk_kcsl_x;
		data.kcqk_kcsl_z = kcqk_kcsl_z;
		data.sm = sm;
		data.id = this.id;
		if (asCore.isNull(this.UrlData)) {
			data.zp = this.UrlData;
		}
		var sendUrl = "/index/mobile/xgkcjc";
		// 35. 添加库存检查 ：http://61.129.51.183:9986/index/mobile/tjkcjc
		asCore.sendXgkcjc(sendUrl, data, function(data) {
			debugger;
			if (data.success) {
				justep.Util.hint("修改成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("修改失败！");
			}
		});
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.id = event.data.id;
		this.initData();
	};
	Model.prototype.getTypeList = function() {
		var typeList = this.comp("typeList");
		var sendUrl = "/index/mobile/kctype";
		var data = {};
		asCore.kctype(sendUrl, data, function(data) {
			typeList.loadData(data);
		});
	}
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/kcjcmx";
		var orderData = this.comp("cDate");
		var data = {};
		data.id = this.id;
		asCore.kcjcmx(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"id" : this.id,
					"cp_id" : asCore.isNull(data.cp_id),
					"cp_dpmc" : asCore.isNull(data.cp_dpmc),
					"kcqk_lx" : asCore.isNull(data.kcqk_lx),
					"kcqk_scrq" : asCore.isNull(data.kcqk_scrq),
					"kcqk_kcsl_x" : asCore.isNull(data.kcqk_kcsl_x),
					"kcqk_kcsl_z" : asCore.isNull(data.kcqk_kcsl_z),
					"sm" : asCore.isNull(data.sm)
				} ]
			});
			self.initImg(data.zp);
		});
	}
	Model.prototype.modelLoad = function(event) {
		this.init();
		this.getTypeList();
	};
	Model.prototype.init = function() {
		$("#editInventoryCheckImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadeditInventoryCheck").click();
		$("#uploadeditInventoryCheck").unbind().change(function() {
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
				var Insert = document.getElementById("editInventoryCheckImg1");
				var div6 = document.getElementById("editInventoryCheckImg");
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
				$('#uploadeditInventoryCheck').val('');
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
	Model.prototype.windowDialog1Receive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var cData = this.comp("cDate");
		cData.setValue("cp_id", id);
		cData.setValue("cp_dpmc", title);
	};
	Model.prototype.initImg = function(imgUrl) {
		if (imgUrl) {
			var imgUrlList = imgUrl.split(";");
			for (i = 0; i < imgUrlList.length; i++) {
				var url = imgUrlList[i];
				this.imgDataArray.push(url);
				this.UrlList.push(url);
				if (this.UrlData) {
					this.UrlData = this.UrlData + ";" + url;
				} else {
					this.UrlData = url;
				}
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
					var Insert = document.getElementById("editInventoryCheckImg1");
					var div6 = document.getElementById("editInventoryCheckImg");
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
					// 上传略
				};
				img.src = url;
			}
		}
	}
	return Model;
});