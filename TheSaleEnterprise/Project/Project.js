define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.col22Click = function(event) {
		this.comp("contents2").to("content12");
	};

	Model.prototype.row8Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.li2Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.row9Click = function(event) {
		this.comp("listDialog").open();
	};

	return Model;
});