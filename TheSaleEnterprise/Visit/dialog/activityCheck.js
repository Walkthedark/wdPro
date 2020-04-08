define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};
	// 网点促销活动
	Model.prototype.li1Click = function(event) {
		var id = event.bindingContext.$object.val("id")
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};
	Model.prototype.wReceiverReceive = function(event) {
		this.initIngData();
		this.initFutureData();
		this.initHistoryData();
	};

	Model.prototype.input2Change = function(event) {
		this.initIngData();
	};

	Model.prototype.input3Change = function(event) {
		this.initFutureData();
	};
	Model.prototype.input4Change = function(event) {
		this.initHistoryData();
	};
	Model.prototype.initIngData = function() {
		var self = this;
		var sendUrl = "/index/mobile/schdbf_wdlb";
		var input = this.comp("input2").val();
		var wdmc = input ? input : "";
		var data = {};
		data.wdmc = wdmc;
		data.type = "1";
		asCore.schdbf_wdlb(sendUrl, data, function(data) {
			self.comp("BData").loadData(data);
		});
	}
	Model.prototype.initFutureData = function() {
		var self = this;
		var sendUrl = "/index/mobile/schdbf_wdlb";
		var input = this.comp("input3").val();
		var wdmc = input ? input : "";
		var data = {};
		data.wdmc = wdmc;
		data.type = "2";
		asCore.schdbf_wdlb(sendUrl, data, function(data) {
			self.comp("WData").loadData(data);
		});
	}
	Model.prototype.initHistoryData = function() {
		var self = this;
		var sendUrl = "/index/mobile/lishihuodong";
		var input = this.comp("input4").val();
		var wdmc = input ? input : "";
		var data = {};
		data.wdmc = wdmc;
		asCore.schdbf_wdlb(sendUrl, data, function(data) {
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