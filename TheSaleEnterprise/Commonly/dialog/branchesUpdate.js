define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	Model.prototype.grid1Reload = function(event) {
		var orderData = this.comp("orderData");
		var option = {
			col3 : '合计：',
			col4 : parseFloat(orderData.sum('col4')).toFixed(2),
		};
		this.comp("grid1").setFooterData(option);
	};
	Model.prototype.button4Click = function(event) {
		this.comp("infoDialog").open();
	};
	return Model;
});