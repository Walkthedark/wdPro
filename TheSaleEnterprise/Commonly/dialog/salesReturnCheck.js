define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		var jxs = this.comp("input1");
		this.comp("newDialog").open({ data : {jxs : jxs}});
	};

	return Model;
});