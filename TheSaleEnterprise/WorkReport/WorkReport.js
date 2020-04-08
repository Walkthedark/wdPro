define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var id = null;
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.init();
	};
	Model.prototype.init = function() {
		var sendUrl = "/index/mobile/gzrb";
		var data = {};
		var workData = this.comp("workData");
		asCore.getWorkReport(sendUrl, data, function(data) {
			debugger;
			workData.loadData(data.data);
		});
	}
	Model.prototype.plImageClick = function(event) {
		this.comp("popOver3").show();
	};

	Model.prototype.button6Click = function(event) {
		this.comp("popOver3").hide();
		this.comp("popOver2").show();
	};

	Model.prototype.button9Click = function(event) {
		// 获取当前id
		debugger
		id = event.bindingContext.$object.val("id")
		this.comp("popOver3").show();
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.button5Click = function(event) {
		// 日报点赞 地址：http://61.129.51.183:9986/index/mobile/rbdz
		var sendUrl = "/index/mobile/rbdz";
		asCore.sendPostDZ(sendUrl, id, function(data) {
			if (data.success == 1) {
				justep.Util.hint("点赞成功！");
			} else {
				justep.Util.hint("点赞失败！");
			}
		});
	};

	Model.prototype.button7Click = function(event) {
		// 9.日报评论 地址：http://61.129.51.183:9986/index/mobile/rbpl
		var sendUrl = "/index/mobile/rbpl";
		var content = this.comp("input1").val();
		asCore.sendPostRBPL(sendUrl, id, content, function(data) {
			debugger
			if (data.success == 1) {
				justep.Util.hint("评论成功！");
			} else {
				justep.Util.hint("评论失败！");
			}
		})

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
	Model.prototype.newDialogClose = function(event) {
		this.init();
	};

	Model.prototype.output3Render = function(event) {
		var zp = event.value;
		if (asCore.isNull(zp) != "") {
			event.html = this.setImgList(zp);
		} else {
			event.html = "";
		}
	};

	return Model;
});