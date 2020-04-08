define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.returnOrderListCustomRefresh = function(event) {
		var reList = [ {
			id : '1',
			re_coding : 'DH-R-20190312-410101',
			re_quantity : '1',
			re_time : '2019-03-12 18:00:00',
			re_sum : '12.00',
			re_money_state : '未收款',
			re_auditing_state : '待退单审核'
		}, {
			id : '2',
			re_coding : 'DH-R-20190312-310101',
			re_quantity : '2',
			re_time : '2019-03-09 14:00:00',
			re_sum : '20.00',
			re_money_state : '未收款',
			re_auditing_state : '待退单审核'
		},{
			id : '3',
			re_coding : 'DH-R-20190312-415101',
			re_quantity : '1',
			re_time : '2019-03-08 13:00:00',
			re_sum : '10.00',
			re_money_state : '未收款',
			re_auditing_state : '待退单审核'
		} ]
		this.comp("returnOrderList").loadData(reList);
	};

	Model.prototype.li1Click = function(event){
		justep.Shell.showPage("returnOrderDetail");
	};

	return Model;
});