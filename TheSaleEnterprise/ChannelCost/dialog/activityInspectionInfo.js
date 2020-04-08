define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.net_id;
		this.net_name;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.button2Click = function(event) {
		var infoData = this.comp("infoData");
		infoData.each(function(param) {
			var check = param.row.val('is');
			var id = param.row.val('id');
			if (check == null || check == "" || check == undefined || check == "false") {
				infoData.setValueByID("is", "true", id);
			}
			if (check == "true") {
				infoData.setValueByID("is", "false", id);
			}
		});
	};

	Model.prototype.li2Click = function(event) {
		var product = event.bindingContext.$object.val("product");
		var mxId = event.bindingContext.$object.val("id");
		this.comp("updateDialog").open({
			data : {
				net_id : this.net_id,
				net_name : this.net_name,
				product : product,
				mxId : mxId
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		var net_id = event.data.net_id;
		var net_name = event.data.net_name;
		this.net_id = net_id;
		this.net_name = net_name;
		$("#checkMxTitle").text(net_name)
		this.initData();
	};

	Model.prototype.output18Render = function(event) {
		var start = event.value;
		var end = event.bindingContext.$object.val("end");
		event.html = start + "~" + end;
	};

	Model.prototype.initData = function() {
		var infoData = this.comp("infoData");
		var self = this;
		var sendUrl = "/index/mobile/wdhdmx";
		// 88.网点活动明细 地址：http://61.129.51.183:9986/index/mobile/wdhdmx
		asCore.wdhdmx(sendUrl, this.net_id, function(data) {
			infoData.loadData(data.data);
		});
	}
	Model.prototype.button3Click = function(event) {// 确定汇报
		var self = this;
		var infoData = this.comp("infoData");
		var ids = "";
		infoData.each(function(param) {
			var is = param.row.val('is');
			var id = param.row.val('id');
			if (is) {
				if (ids) {
					ids += "," + id;
				} else {
					ids = id;
				}
			}
		})
		if (ids) {
			var sendUrl = "/index/mobile/schdjctijiao";
			var param = {};
			param.ids = ids;
			// 88.网点活动明细 地址：http://61.129.51.183:9986/index/mobile/wdhdmx
			asCore.schdjctijiao(sendUrl, param, function(data) {
				if (data.success) {
					justep.Util.hint("提交成功！");
					self.close();
				} else {
					justep.Util.hint("提交失败！");
				}
			});
		} else {
			justep.Util.hint("请选择有效的数据进行提交");
		}
	};
	Model.prototype.output1Render = function(event) {
		var val = event.value;
		if (val == "0") {
			event.html = "非常规";
		} else if (val == "1") {
			event.html = "进场";
		} else {
			event.html = "常规";
		}
	};
	return Model;
});