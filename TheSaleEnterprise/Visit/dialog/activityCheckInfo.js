define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.wdid;
	};

	Model.prototype.li1Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event) {
		// this.comp("BData").loadData(event.data);
		this.wdid = event.data.id;
		this.initHistoryData();
	};
	Model.prototype.initHistoryData = function() {
		var self = this;
		var sendUrl = "/index/mobile/schdbf_bqhd";
		var data = {};
		data.id = this.wdid;
		asCore.schdbf_bqhd(sendUrl, data, function(data) {
			var temp = [];
			for (i = 0; i < data.length; i++) {
				var params = {};
				params.id = data[i].id;
				params.feetype = data[i].feetype;
				params.start = data[i].start;
				params.end = data[i].end;
				params.pro_type = data[i].pro_type;
				params.pro = data[i].pro;
				params.type = data[i].type;
				params.hc_status = data[i].hc_status;
				params.sn = data[i].sn;
				params.id = data[i].id;
				if (data[i].hc_stauts == "0" || data[i].hc_stauts == "1") {
					params.imgSrc = self.getImageUrl("$UI/TheSaleEnterprise/Visit/dialog/img/weijianhe.png");
				} else {
					params.imgSrc = self.getImageUrl("$UI/TheSaleEnterprise/Visit/dialog/img/yijianhe.png");
				}
				temp.push(params);
			}
			self.comp("LData").loadData(temp);
		});
	}
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.output14Render = function(event) {
		var start = event.value;
		var end = event.bindingContext.$object.val("end")
		event.html = start + "~" + end;
	};

	return Model;
});