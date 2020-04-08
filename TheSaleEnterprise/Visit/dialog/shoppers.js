define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var id = null;
	var Model = function() {
		this.callParent();
	};
	// 在岗检查
	Model.prototype.button4Click = function(event) {
		var dg_id = event.bindingContext.$object.val("dg_id")
		this.comp("InspectionDialog").open({
			data : {
				dg_id : dg_id
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		id = event.data.id;
	};

	Model.prototype.bgsdgCustomRefresh = function(event) {
		id = 1;// 只有1有数据
		var sendUrl = "/index/mobile/bgsdg";
		var self = this;
		var cnt = "";
		asCore.sendBgsdg(sendUrl, id, function(data) {
			debugger;
			self.comp("bgsdg").loadData(data.data);
			cnt = data.cnt;
			$("#" + self.getIDByXID("span6")).html("本公司导购员" + data.cnt + "人");
		});
	};

	Model.prototype.jxsdgCustomRefresh = function(event) {
		var id = 1;// 只有1有数据
		var self = this;
		var sendUrl = "/index/mobile/jxsdg";
		asCore.sendJxsdg(sendUrl, id, function(data) {
			debugger;
			self.comp("jxsdg").loadData(data.data);
			cnt = data.cnt;
			$("#" + self.getIDByXID("span3")).html("本店供货经销商" + data.data.length + "家（经销商共有导购员" + data.cnt + "人）");
		});
	};

	return Model;
});