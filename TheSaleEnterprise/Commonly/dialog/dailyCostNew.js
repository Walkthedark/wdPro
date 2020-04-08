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

	Model.prototype.depDialogReceive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var infoData = this.comp("infoData");
		infoData.setValue("jrbm", id);
		infoData.setValue("jrbmm", title);
	};

	Model.prototype.depInputClick = function(event) {
		this.comp("depDialog").open();
	};

	Model.prototype.input4Click = function(event) {
		this.comp("periodDialog").open();
	};

	Model.prototype.periodDialogReceive = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var infoData = this.comp("infoData");
		infoData.setValue("kaohe", id);
		infoData.setValue("kaohem", title);
	};

	Model.prototype.button3Click = function(event) {
		this.comp("infoDialog").open({
			data : {
				id : this.id
			}
		});
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/fullrcfybx";
		var infoData = this.comp("infoData");
		var costData = this.comp("costData");
		var data = {};
		var title = infoData.getValue("title");
		var kaohe = infoData.getValue("kaohe");
		var jrbm = infoData.getValue("jrbm");
		var payway = infoData.getValue("payway");
		var reason = infoData.getValue("reason");
		var sczp = "";
		if (asCore.isNull(this.UrlData)) {
			sczp = this.UrlData;
		}
		data.sczp = sczp;
		data.title = title;
		data.kaohe = kaohe;
		data.jrbm = jrbm;
		data.payway = payway;
		data.reason = reason;
		if (costData.getCount() == 0) {
			justep.Util.hint("至少添加一条费用记录");
			return;
		} else {
			var details = [];
			costData.each(function(param) {
				var params = {};
				params.feiid = param.row.val('feiid');
				params.feis = param.row.val('feis');
				params.start = param.row.val('start');
				params.end = param.row.val('end');
				params.chufa = param.row.val('chufa');
				params.mudi = param.row.val('mudi');
				params.remark = param.row.val('remark');
				params.jxs = param.row.val('jxs');
				details.push(params);
			});
			data.detail = details;
		}
		asCore.fullrcfybx(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint("提交成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint(data.msg);
			}
		});
	};
	Model.prototype.getPayTypeList = function() {
		var payTypeList = this.comp("payTypeList");
		var sendUrl = "/index/mobile/paylist";
		var data = {};
		asCore.paylist(sendUrl, data, function(data) {
			payTypeList.loadData(data);
		});
	}
	Model.prototype.modelLoad = function(event) {
		this.init();
		this.getPayTypeList();
	};
	Model.prototype.init = function() {
		$("#newDailyCostImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadnewDailyCost").click();
		$("#uploadnewDailyCost").unbind().change(function() {
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
				var Insert = document.getElementById("newDailyCostImg1");
				var div6 = document.getElementById("newDailyCostImg");
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
				$('#uploadnewDailyCost').val('');
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

	Model.prototype.infoDialogReceive = function(event) {
		var feiid = event.data.data.feiid;
		var feim = event.data.data.feim;
		var feis = event.data.data.feis;
		var start = event.data.data.start;
		var end = event.data.data.end;
		var chufa = event.data.data.chufa;
		var jxs = event.data.data.jxs;
		var jxsm = event.data.data.jxsm;
		var mudi = event.data.data.mudi;
		var remark = event.data.data.remark;
		var self = this;
		var costData = this.comp("costData");
		var n = costData.getCount();
		var id = n + 1;
		costData.newData({
			"defaultValues" : [ {
				"id" : id,
				"feis" : feis,
				"start" : start,
				"end" : end,
				"chufa" : chufa,
				"mudi" : mudi,
				"remark" : remark,
				"jxs" : jxs,
				"feiid" : feiid,
				"feim" : feim,
				"jxsm" : jxsm,
			} ]
		})
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
	return Model;
});