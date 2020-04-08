define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.type;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.button2Click = function(event) {
		var infoData = this.comp("infoData");
		infoData.each(function(param) {
			var check = param.row.val('co20');
			var id = param.row.val('id');
			if (check == null || check == "" || check == undefined || check == "false") {
				infoData.setValueByID("co20", "true", id);
			}
			if (check == "true") {
				infoData.setValueByID("co20", "false", id);
			}
		});
	};

	Model.prototype.li2Click = function(event) {
		this.comp("infoDialog").open();
	};
	// 重新整改
	Model.prototype.button3Click = function(event) {
		var self = this;
		var dpxx = this.comp("tData").getValue("yj");
		var para = {
			id : this.id,
			dpxx : dpxx
		}
		var sendUrl = "/index/mobile/schdcxzg";
		// 93.市场活动重新整改 地址：http://61.129.51.183:9986/index/mobile/schdcxzg
		asCore.schdcxzg(sendUrl, para, function(data) {
			if (data.success) {
				self.initData();
				justep.Util.hint("重新整改成功！");
			} else {
				justep.Util.hint("重新整改失败！");
			}
		});
	};
	// 审核通过
	Model.prototype.passButton2Click = function(event) {
		var self = this;
		var dpxx = this.comp("tData").getValue("yj");
		var para = {
			id : this.id,
			dpxx : dpxx
		}
		var sendUrl = "/index/mobile/schdshtg";
		// 92.市场活动审核通过 地址：http://61.129.51.183:9986/index/mobile/schdshtg
		asCore.schdshtg(sendUrl, para, function(data) {
			if (data.success) {
				self.initData();
				justep.Util.hint("通过审核成功！");
			} else {
				justep.Util.hint("通过审核失败！");
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.type = event.data.type;
		this.initData();
	};
	Model.prototype.initData = function() {
		var infoData = this.comp("infoData");
		var dpData = this.comp("dpData");
		this.comp("tData").setValue("yj", "");
		if (this.type == "feedBack") {
			var sendUrl = "/index/mobile/schdfkmxhblb";
			var para = {
				id : this.id
			}
			asCore.schdfkmxhblb(sendUrl, para, function(data) {
				infoData.newData({
					"defaultValues" : [ {
						"net_name" : asCore.isNull(data.net_name),
						"sfjyhx" : asCore.isNull(data.sfjyhx),
						"address" : asCore.isNull(data.address),
						"hdms" : asCore.isNull(data.hdms),
						"hdzp" : asCore.isNull(data.hdzp),
					} ]
				});
				dpData.loadData(data.data);
			});
		} else {
			var sendUrl = "/index/mobile/schdshpage";
			var para = {
				id : this.id
			}
			asCore.schdshpage(sendUrl, para, function(data) {
				infoData.newData({
					"defaultValues" : [ {
						"net_name" : asCore.isNull(data.net_name),
						"sfjyhx" : asCore.isNull(data.sfjyhx),
						"address" : asCore.isNull(data.address),
						"hdms" : asCore.isNull(data.hdms),
						"hdzp" : asCore.isNull(data.hdzp),
					} ]
				});
				dpData.loadData(data.data);
			});
		}
	}
	Model.prototype.output3Render = function(event) {
		var zp = event.value;
		if (asCore.isNull(zp) != "") {
			event.html = this.setImgList(zp);
		} else {
			event.html = "";
		}
	};
	Model.prototype.setImgList = function(imgUrl) {
		var imgList = imgUrl.split(";");
		var html = '<div class="imgline" xid="div74">';
		for (i = 0; i < imgList.length; i++) {
			var img = imgList[i];
			html = html + "<div class=\"lfloat\" onclick=\"justep.Bind.contextFor(this).$model.ShowImg('" + img + "');\"><a href=\"#\"><img src=\"" + img + "\" class=\"lfloat simg\"/></a></div>";
		}
		return html + "</div>";
	}
	Model.prototype.ShowImg = function(url) {
		this.comp("showImg").open({
			data : {
				url : url
			}
		});
	}
	Model.prototype.output18Render = function(event) {
		if (event.value == 1)
			event.html = "是";
		else
			event.html = "否"
	};
	Model.prototype.output7Render = function(event) {
		if (event.value == 1)
			event.html = "审核通过";
		else
			event.html = "重新修改"
	};
	return Model;
});