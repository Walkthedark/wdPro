define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.comp("infoData").newData();
	};

	Model.prototype.button4Click = function(event){
		this.comp("listDialog").open();
	};

	return Model;
});