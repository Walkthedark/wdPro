define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
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
		var id = event.bindingContext.$object.val("id");
		this.comp("windowDialog1").open({
			data : {
				id : id,
				type : "feedBack"
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var infoData = this.comp("infoData");
		var cData = this.comp("cData");
		var sendUrl = "/index/mobile/schdfkmx";
		var para = {
			id : this.id
		}
		// 94.活动执行反馈网点列表 地址：http://61.129.51.183:9986/index/mobile/schdfk
		asCore.schdfkmx(sendUrl, para, function(data) {
			infoData.loadData(data.data);
			if (data.data[0].net) {
				$("#activityFeedbackInfoTitle").text("网点:" + data.data[0].net);
			} else {
				$("#activityFeedbackInfoTitle").text("网点:");
			}
		});
	}
	Model.prototype.output19Render = function(event) {
		var start = event.value;
		var end = event.bindingContext.$object.val("end");
		event.html = start + "~" + end;
	};
	return Model;
});