define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.orderGoodsListCustomRefresh = function(event){
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
		}]
		this.comp("orderGoodsList").loadData(orderList);
	};

	Model.prototype.orderStaticBtnClick = function(event){
		justep.Shell.showPage("orderStatic");
	};

	Model.prototype.seachBtnClick = function(event){
			justep.Shell.showPage("orderSearch");
	};

	Model.prototype.li1Click = function(event){
		justep.Shell.showPage("orderDetail");
	};
	//订货单
	Model.prototype.li2Click = function(event){

	};

	Model.prototype.orderDataCustomRefresh = function(event){
		var params = {};
		var res = asCore.setGetFalse(inFace.orderList, params);
		if (res.code === 200) {
			this.comp("orderData").loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		};
	};

	return Model;
});