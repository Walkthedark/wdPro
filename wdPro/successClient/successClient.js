define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.order_id = "";
	};

	Model.prototype.button2Click = function(event) {
		var params = {};
		params.order_id = this.order_id;
		justep.Shell.showPage("clientInfo", {
			id : this.order_id
		});
	};

	Model.prototype.button7Click = function(event) {
		justep.Shell.showPage("main");
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.order_id = this.params.order_id;
	};

	return Model;
});