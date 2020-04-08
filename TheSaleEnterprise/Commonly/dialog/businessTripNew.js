define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.imgData = "";
		this.imgDataArray = new Array();
		this.UrlData = "";
		this.id;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/tjccsq";
		var infoData = this.comp("infoData");
		var taveltype = infoData.getValue("taveltype");
		var title = infoData.getValue("title");
		var feiyong = infoData.getValue("feiyong");
		var target = infoData.getValue("target");
		var data = {};
		data.traveltype = taveltype;
		data.title = title;
		data.feiyong = feiyong;
		data.target = target;
		var zp = "";
		if (asCore.isNull(this.UrlData)) {
			zp = this.UrlData;
		}
		data.zp = zp;
		// 61.添加出差申请 地址：http://61.129.51.183:9986/index/mobile/tjccsq
		asCore.tjccsq(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("保存成功！");
				self.id = data.id;
				infoData.setValue("id", data.id);
			} else {
				justep.Util.hint("保存失败！");
			}
		});
	};

	Model.prototype.button3Click = function(event) {
		if (this.id) {
			this.comp("windowDialog1").open({
				data : {
					id : this.id
				}
			})
		} else {
			justep.Util.hint("请先保存主申请");
		}
	};
	Model.prototype.getTypeList = function() {
		var typeList = this.comp("typeList");
		var sendUrl = "/index/mobile/chuchaileixing";
		var data = {};
		asCore.chuchaileixing(sendUrl, data, function(data) {
			typeList.loadData(data);
		});
	}
	Model.prototype.modelLoad = function(event) {
		this.init();
		this.getTypeList();
		this.initDetailData();
	};
	Model.prototype.init = function() {
		$("#newBusinessTripImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadnewBusinessTrip").click();
		$("#uploadnewBusinessTrip").unbind().change(function() {
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
				var Insert = document.getElementById("newBusinessTripImg1");
				var div6 = document.getElementById("newBusinessTripImg");
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
				$('#uploadnewBusinessTrip').val('');
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
		var id = event.bindingContext.$object.val("id");
		this.deleteDetail(id);
	};
	Model.prototype.deleteDetail = function(id) {
		var self = this;
		var sendUrl = "/index/mobile/delccmx";
		var data = {};
		data.did = id;
		asCore.delccmx(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("删除成功！");
				self.initDetailData();
			} else {
				justep.Util.hint(data.msg);
			}
		});
	};
	Model.prototype.initDetailData = function() {
		var self = this;
		var sendUrl = "/index/mobile/ccsqxq";
		var detailData = this.comp("detailData");
		if (this.id) {
			asCore.ccsqxq(sendUrl, this.id, function(data) {
				detailData.loadData(data.xc);
			});
		} else {
			detailData.clear();
		}
	}
	Model.prototype.windowDialog1Close = function(event) {
		this.initDetailData();
	};
	Model.prototype.button5Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/tijiaochuchai";
		var infoData = this.comp("infoData");
		var taveltype = infoData.getValue("taveltype");
		var title = infoData.getValue("title");
		var feiyong = infoData.getValue("feiyong");
		var target = infoData.getValue("target");
		var data = {};
		data.traveltype = taveltype;
		data.title = title;
		data.feiyong = feiyong;
		data.target = target;
		var zp = "";
		if (asCore.isNull(this.UrlData)) {
			zp = this.UrlData;
		}
		data.zp = zp;
		// 61.添加出差申请 地址：http://61.129.51.183:9986/index/mobile/tjccsq
		asCore.tijiaochuchai(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("提交成功！");
				self.id = data.id;
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("提交失败！");
			}
		});
	};
	return Model;
});