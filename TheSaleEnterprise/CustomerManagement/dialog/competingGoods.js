define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.net_id;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open({
			data : {
				"net_id" : this.net_id
			}
		});
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
		this.comp("updateDialog").open();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.net_id = event.data.net_id;
	};

	return Model;
});