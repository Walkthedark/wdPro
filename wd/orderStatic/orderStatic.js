define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.monthOrderCustomRefresh = function(event) {
		var year = [ {
			id : '1',
			year : '2019'
		}, {
			id : "2",
			year : '2018'
		}, {
			id : "3",
			year : "2017"
		} ];
		var monthOrder = [ {
			id : "1",
			month : "3",
			order_quantity : '0',
			return_quantity : '0',
			order_sum : '0',
			return_sum : '0'
		} ,{
			id : "2",
			month : "2",
			order_quantity : '0',
			return_quantity : '0',
			order_sum : '0',
			return_sum : '0'
		},{
			id : "3",
			month : "1",
			order_quantity : '0',
			return_quantity : '0',
			order_sum : '0',
			return_sum : '0'
		}]
		
		this.comp("year").loadData(year);
		this.comp('monthOrder').loadData(monthOrder);
	};

	Model.prototype.orderFilterBtnClick = function(event){
		justep.Shell.showPage("orderStaticSearch");
	};

	return Model;
});