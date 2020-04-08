define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.bf_id;
	};

	Model.prototype.li1Click = function(event) {
		var hd_id = event.bindingContext.$object.val("hd_id")
		this.comp("infoDialog").open({
			data : {
				hd_id : hd_id,
				bf_id : this.bf_id
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.bf_id = event.data.id;
		this.initIngData();
	};
	Model.prototype.initIngData = function() {
		var self = this;
		var sendUrl = "/index/mobile/suoshuhuibaoxq";
		var data = {};
		data.bf_id = this.bf_id;
		asCore.suoshuhuibaoxq(sendUrl, data, function(data) {
			debugger;
			self.comp("BData").loadData(data);
		});
	}
	Model.prototype.output4Render = function(event) {
		var start = event.value;
		var end = event.bindingContext.$object.val("end")
		event.html = start + "~" + end;
	};
	return Model;
});