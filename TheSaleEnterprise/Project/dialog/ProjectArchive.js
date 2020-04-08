define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.comp("infoData").newData();
	};

	Model.prototype.li2Click = function(event) {
		this.comp("ProjectActivationDialog").open();
	};

	return Model;
});