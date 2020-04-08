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
	Model.prototype.button9Click = function(event) {
		this.comp("popOver2").show();
	};
	Model.prototype.grid1Reload = function(event) {
		var orderData = this.comp("checkData");
		var option = {
			col1 : '合计：',
			col4 : parseFloat(orderData.sum('col4')).toFixed(2),
		};
		this.comp("grid1").setFooterData(option);
	};
	Model.prototype.grid2Reload = function(event) {
		var orderData = this.comp("checkData");
		var option = {
			col1 : '合计：',
			col4 : parseFloat(orderData.sum('col4')).toFixed(2),
		};
		this.comp("grid2").setFooterData(option);
	};

	return Model;
});