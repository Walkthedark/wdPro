define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.orderGoodsListCustomRefresh = function(event) {
		var orderList = [ {
			id : '1',
			order_coding : 'DH-R-20190312-410101',
			order_quantity : '1',
			order_create_time : '2019-03-12 18:00:00',
			order_sum : '12.00',
			order_money_state : '未收款',
			order_auting_state : '待退单审核'
		}, {
			id : '2',
			order_coding : 'DH-R-20190312-310101',
			order_quantity : '2',
			order_create_time : '2019-03-09 14:00:00',
			order_sum : '20.00',
			order_money_state : '未收款',
			order_auting_state : '待退单审核'
		} ]
		this.comp("orderGoodsList").loadData(orderList);
	};

	Model.prototype.li2Click = function(event){
		justep.Shell.showPage("orderDetail");
		
	};

	return Model;
});