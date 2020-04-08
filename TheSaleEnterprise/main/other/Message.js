define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.output3Render = function(event) {
		if (event.value == "1") {
			event.html = "<font style='color:#c0c0c0'>已读</font>";
		}
		if (event.value == "0") {
			event.html = "<font style='color:#FA7922'>未读</font>";
		}
	};

	Model.prototype.li1Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		this.comp("infoDialog").open({
			"data" : {
				"id" : id
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		this.init();
	};
	Model.prototype.init = function() {
		var self = this;
		var sendUrl = "/index/mobile/message";
		var MsgData = this.comp("MsgData");
		var data = "";
		asCore.message(sendUrl, data, function(data) {
			MsgData.loadData(data);
		});
	}
	Model.prototype.button2Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/allyidu";
		var MsgData = this.comp("MsgData");
		var data = "";
		asCore.allyidu(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("设置成功");
				self.init();
			} else {
				justep.Util.hint("设置失败");
			}
		});
	};

	return Model;
});