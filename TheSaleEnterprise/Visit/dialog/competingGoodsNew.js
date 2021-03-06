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
		this.goodList;
	};
	Model.prototype.getTypeList = function() {
		var typeList = this.comp("typeList");
		var sendUrl = "/index/mobile/procategory";
		var data = {};
		asCore.procategory(sendUrl, data, function(data) {
			typeList.loadData(data);
		});
	}
	Model.prototype.getGoodList = function() {
		var self = this;
		var googdList = this.comp("googdList");
		var typeID = this.comp("infoData").getValue("category_id");
		var sendUrl = "/index/mobile/backcompitor";
		var data = {};
		data.netid = this.wdid;
		data.cat = typeID;
		asCore.backcompitor(sendUrl, data, function(data) {
			self.goodList = data;
			googdList.loadData(data);
		});
	}
	Model.prototype.modelLoad = function(event) {
		this.init();
		this.getTypeList();
		this.getGoodList();
	};
	Model.prototype.init = function() {
		$("#newComGoodsImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadnewComGoods").click();
		$("#uploadnewComGoods").unbind().change(function() {
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
				var Insert = document.getElementById("newComGoodsImg1");
				var div6 = document.getElementById("newComGoodsImg");
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
				$('#uploadnewComGoods').val('');
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
		this.wdid = event.data.net_id;
		this.id = event.data.id;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/tjjphb";
		var infoData = this.comp("infoData");
		var data = {};
		var jp_id = infoData.getValue("jp_id");
		var jpgg = infoData.getValue("jpgg");
		var lsj = infoData.getValue("lsj");
		var sfcx = infoData.getValue("sfcx");
		var jpms = infoData.getValue("jpms");
		var sczp = "";
		if (asCore.isNull(this.UrlData)) {
			sczp = this.UrlData;
		}
		data.sczp = sczp;
		data.net_id = this.wdid;
		data.bf_id = this.id;
		data.jp_id = jp_id;
		data.jpgg = jpgg;
		data.lsj = lsj;
		data.sfcx = sfcx;
		data.jpms = jpms;
		// 47.添加竞品汇报 地址：http://61.129.51.183:9986/index/mobile/tjjphb
		asCore.tjjphb(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint("添加成功！");
				self.comp("wReceiver").windowEnsure();
			} else {
				justep.Util.hint(data.msg);
			}
		});

	};

	Model.prototype.select1Change = function(event) {
		this.getGoodList();
	};

	Model.prototype.select2Change = function(event) {
		var value = event.value;
		var data = this.goodList;
		var infoData = this.comp("infoData");
		var flag = 0;
		var temp = "";
		for (i = 0; i < data.length; i++) {
			if (data[i].id == value) {
				flag = 1;
				temp = data[i].format;
			}
		}
		infoData.setValue("jpgg", temp);
	};

	return Model;
});