define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.wReceiverReceive = function(event) {
		var self = this;
		var id = event.data.id;
		var CData = this.comp("CData");
		var sendUrl = "/index/mobile/qdhbxq";
		var data = {};
		data.id = id;
		asCore.qdhbxq(sendUrl, data, function(ret) {
			CData.newData();
			CData.setValue("id", ret.id);
			CData.setValue("dwsj", ret.dwsj);
			CData.setValue("qdbm", ret.qdbm);
			CData.setValue("qddz", ret.qddz);
			CData.setValue("qdlx", ret.qdlx);
			CData.setValue("qdms", ret.qdms);
			CData.setValue("qdr", ret.qdr);
			CData.setValue("qdr_name", ret.qdr_name);
			CData.setValue("qdrq", ret.qdrq);
			CData.setValue("qdsj", ret.qdsj);
			CData.setValue("qdzp", ret.qdzp);
		});
	};

	Model.prototype.output10Render = function(event) {
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
	return Model;
});