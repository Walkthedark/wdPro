define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.button3Click = function(event) {
		this.comp("popOver1").show();
	};

	return Model;
});