define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.row1Click = function(event) {
		this.comp("customerDialog").open();
	};

	Model.prototype.row3Click = function(event) {
		this.comp("activityCheckDialog").open();
	};

	Model.prototype.modelLoad = function(event){

	};

	return Model;
});