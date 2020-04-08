define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.getVisitData();
	};

	Model.prototype.button2Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};
	Model.prototype.button6Click = function(event) {
		this.comp("CData").setValue("name", "");
	};
	Model.prototype.button8Click = function(event) {
		this.getVisitData();
	};

	Model.prototype.getVisitData = function() {
		var name = this.comp("CData").getValue("name");
		var self = this;
		var sendUrl = "/index/mobile/xsbfgj";
		var pData = this.comp("pData");
		var data = {};
		if (asCore.isNull(name)) {
			data.em_name = name;
		}
		asCore.xsjxsbf(sendUrl, data, function(data) {
			debugger;
			pData.loadData(data);
		});
	}
	return Model;
});