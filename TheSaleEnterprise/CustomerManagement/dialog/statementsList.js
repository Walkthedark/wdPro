define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};
	// 费用
	Model.prototype.row3Click = function(event) {
		this.comp("costDialog").open({
			data : {
				id : this.id
			}
		});
	};
	// 货款
	Model.prototype.row5Click = function(event) {
		this.comp("paymentDialog").open({
			data : {
				id : this.id
			}
		});
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var self = this;
		var id = event.data.id;
		this.id = id;
		var name = event.data.name;
		var sn = event.data.sn;
		var CData = this.comp("CData");
		CData.newData({
			"defaultValues" : [ {
				"id" : asCore.isNull(id),
				"name" : asCore.isNull(name),
				"sn" : asCore.isNull(sn),
			} ]
		});
	};

	return Model;
});