define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.hd_id;
		this.bf_id;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("goodsDialog").open({
			data : {
				hd_id : this.hd_id,
				bf_id : this.bf_id
			}
		});
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.hd_id = event.data.hd_id;
		this.bf_id = event.data.bf_id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/hdhjlist";
		var data = {};
		data.hd_id = this.hd_id;
		data.bf_id = this.bf_id;
		asCore.hdhjlist(sendUrl, data, function(data) {
			self.comp("listData").loadData(data);
		});
	}
	Model.prototype.output6Render = function(event) {
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

	Model.prototype.goodsDialogClose = function(event) {
		this.initData();
	};

	return Model;
});