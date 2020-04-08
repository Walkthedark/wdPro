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

	Model.prototype.radioGroup1Change = function(event) {
		if (event.value == 1) {
			$("[xid=cosrDiv]").show();
		}
		if (event.value == 0) {
			$("[xid=cosrDiv]").hide();
		}
	};

	Model.prototype.grid1CellRender = function(event) {
		var rowID = event.row.val("id");
		if (event.colName == "handle")// 显示按钮
			event.html = "<button class='btn btn-default btnDel' onclick=\"justep.Bind.contextFor(this).$model.deleteRow('" + rowID + "');\">删除</button>";
	};
	Model.prototype.deleteRow = function(rowID) {
		var costData = this.comp("costData");
		costData.deleteData(costData.getRowByID(rowID));
	}
	Model.prototype.initDetailData = function() {
	}
	Model.prototype.depDialogReceive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var infoData = this.comp("infoData");
		infoData.setValue("bm", id);
		infoData.setValue("bmm", title);
	};

	Model.prototype.depInputClick = function(event) {
		this.comp("depDialog").open();
	};

	Model.prototype.input4Click = function(event) {
		this.comp("periodDialog").open();
	};

	Model.prototype.input6Click = function(event) {
		this.comp("personDialog").open();
	};
	Model.prototype.periodDialogReceive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var infoData = this.comp("infoData");
		infoData.setValue("kaohe", id);
		infoData.setValue("kaohem", title);
	};
	Model.prototype.personDialogReceive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var infoData = this.comp("infoData");
		infoData.setValue("shoukuan", id);
		infoData.setValue("shoukuanm", title);
	};
	Model.prototype.button4Click = function(event) {
		var self = this;
		// var sendUrl = "/index/mobile/tjwddd";
		var sendUrl = "/index/mobile/fullwysqd";
		var infoData = this.comp("infoData");
		var costData = this.comp("costData");
		var data = {};
		var title = infoData.getValue("title");
		var type = infoData.getValue("type");
		var neirong = infoData.getValue("neirong");
		var iscost = infoData.getValue("iscost");
		var bm = infoData.getValue("bm");
		var kaohe = infoData.getValue("kaohe");
		var zhifu = infoData.getValue("zhifu");
		var shoukuan = infoData.getValue("shoukuan");
		var fujian = "";
		if (asCore.isNull(this.UrlData)) {
			fujian = this.UrlData;
		}
		data.fujian = fujian;
		data.title = title;
		data.type = type;
		data.neirong = neirong;
		data.iscost = iscost;
		if (iscost == 1) {
			if (costData.getCount() == 0) {
				justep.Util.hint("至少添加一条费用记录");
				return;
			} else {
				data.bm = bm;
				data.kaohe = kaohe;
				data.zhifu = zhifu;
				data.shoukuan = shoukuan;
				var details = [];
				costData.each(function(param) {
					var params = {};
					params.feetype = param.row.val('feetypeID');
					params.fee = param.row.val('fee');
					params.remark = param.row.val('remark');
					details.push(params);
				});
				data.detail = details;
			}
		}
		asCore.fullwysqd(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint("提交成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint(data.msg);
			}
		});
	};
	Model.prototype.getTypeList = function() {
		var typeList = this.comp("typeList");
		var sendUrl = "/index/mobile/wylx";
		var data = {};
		asCore.wylx(sendUrl, data, function(data) {
			typeList.loadData(data);
		});
	}
	Model.prototype.getPayTypeList = function() {
		var payTypeList = this.comp("payTypeList");
		var sendUrl = "/index/mobile/paylist";
		var data = {};
		asCore.paylist(sendUrl, data, function(data) {
			payTypeList.loadData(data);
		});
	}
	Model.prototype.getFeeTypeList = function() {
		var feeTypeList = this.comp("feeTypeList");
		var sendUrl = "/index/mobile/richangkemuliset";
		var data = {};
		asCore.richangkemuliset(sendUrl, data, function(data) {
			feeTypeList.loadData(data);
		});
	}
	Model.prototype.modelLoad = function(event) {
		this.init();
		this.getTypeList();
		this.getPayTypeList();
		this.getFeeTypeList();
	};
	Model.prototype.init = function() {
		$("#newUniversalImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadnewUniversal").click();
		$("#uploadnewUniversal").unbind().change(function() {
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
				var Insert = document.getElementById("newUniversalImg1");
				var div6 = document.getElementById("newUniversalImg");
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
				$('#uploadnewUniversal').val('');
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
		this.comp("feeData").newData();
		this.comp("popOver1").show();
	};
	Model.prototype.button3Click = function(event) {
		this.comp("feeData").refreshData();
		this.comp("popOver1").hide();
	};
	Model.prototype.button5Click = function(event) {
		var self = this;
		var feeData = this.comp("feeData");
		var costData = this.comp("costData");
		var feetype = feeData.getValue("feetype");
		var fee = feeData.getValue("fee");
		var remark = feeData.getValue("remark");
		var feeTypeM = feeData.getValue("feeTypeM");
		var n = costData.getCount();
		var id = n + 1;
		costData.newData({
			"defaultValues" : [ {
				"id" : id,
				"feetype" : feeTypeM,
				"feetypeID" : feetype,
				"fee" : fee,
				"remark" : remark
			} ]
		})
		this.comp("popOver1").hide();
		feeData.refreshData();
	};

	return Model;
});