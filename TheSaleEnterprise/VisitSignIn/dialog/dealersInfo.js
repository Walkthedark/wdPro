define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
	};
	Model.prototype.wReceiverReceive = function(event) {
		id = event.data.id;
		debugger
		var BData = this.comp("BData");
		var sendUrl = "/index/mobile/jxsbfjlxq";
		// 12. 经销商拜访记录详情 http://61.129.51.183:9986/index/mobile/jxsbfjlxq
		asCore.sendJxsbfjlxq(sendUrl, id, function(ret) {
			debugger
			/*
			 * var options = { defaultValues : ret }; data1.newData(options);
			 */
			if (ret.length > 0) {
				BData.newData();
				BData.setValue("bcbfxj", ret[0].bcbfxj);
				BData.setValue("bcbfxjzp", ret[0].bcbfxjzp);
				BData.setValue("bfjhtp", ret[0].bfjhtp);
				BData.setValue("bfrq", ret[0].bfrq);
				BData.setValue("jxs_title", ret[0].jxs_title);
				BData.setValue("qtdz", ret[0].qtdz);
				BData.setValue("qtpz", ret[0].qtpz);
				BData.setValue("qtsj", ret[0].qtsj);
				BData.setValue("xcbfmb", ret[0].xcbfmb);
				BData.setValue("xcbfrq", ret[0].xcbfrq);
			}

		});

	};

	// 
	Model.prototype.isVisit = function(event) {
		var BData = this.comp("BData");
		if (BData.count == 0) {
			return "没有拜访签到记录！"
		}
	};

	Model.prototype.output8Render = function(event) {
		var zp = event.value;
		if (asCore.isNull(zp) != "") {
			event.html = this.setImgList(zp);
		} else {
			event.html = "";
		}
	};
	Model.prototype.output10Render = function(event) {
		var zp = event.value;
		if (asCore.isNull(zp) != "") {
			event.html = this.setImgList(zp);
		} else {
			event.html = "";
		}
	};

	Model.prototype.output11Render = function(event) {
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

	return Model;
});