define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.comp("infoData").newData();
	};

	Model.prototype.button4Click = function(event) {
		this.comp("listDialog").open();
	};

	Model.prototype.button5Click = function(event) {
		this.comp("staffDialog").open();
	};

	Model.prototype.staffDialogReceive = function(event) {
		var staff = event.data.data;
		this.comp("staffInput").val(staff);
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/tjrcap";
		var infoData = this.comp("infoData");
		var lx = infoData.getValue("lx");
		var ks = infoData.getValue("ks");
		var js = infoData.getValue("js");
		var dd = infoData.getValue("dd");
		var yq = infoData.getValue("yq");
		var data = {};
		data.lx = asCore.isNull(lx);
		data.ks = asCore.isNull(ks);
		data.js = asCore.isNull(js);
		data.dd = asCore.isNull(dd);
		data.yq = asCore.isNull(yq);
		asCore.tjrcap(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("新增成功");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("新增失败");
			}
		});
	};

	Model.prototype.button3Click = function(event) {
		this.comp("windowReceiver1").windowCancel();
	};

	return Model;
});