define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var pData = this.params.data;
		var data = this.comp("data1");
		var p = [];
		p.push(pData);
		data.loadData(p, false)
		data.refreshData();
		//:4买赠（赠品） 5直降 6打折//1满赠（赠品） 2满减 （减少金额） 3满折（打折） 4买赠（赠品
		//promotion_rule
		var s = "";
		if(pData.promotion_cate == 1){//单品
			var text = this.getPromotion_Cate(pData.promotion_rule);
			 s = "单个商品满足条件"+text;
		}else if(pData.promotion_cate == 2){//订单
			var text = this.getPromotion_Cate(pData.promotion_rule);
			 s = "总订单满足条件"+text;
		}else {//组合
			var text = this.getPromotion_Cate(pData.promotion_rule);
			 s = "多个商品满足条件"+text;
		}
		$(this.getElementByXid("h52")).html(s);
		//获取商品
		console.log(pData.promotion_detail);
		var goodsDataM = this.comp("goodsDataM");
		for (var int = 0; int < pData.promotion_detail.length; int++) {
			if(int == 0){
				goodsDataM.loadData(pData.promotion_detail[int].product, false);
				console.log(pData.promotion_detail[int].product);
			}else{
				console.log(pData.promotion_detail[int].product);
				goodsDataM.loadData(pData.promotion_detail[int].product, true, null, 0, true);
			}
		}
		
	};
	Model.prototype.getPromotion_Cate = function(params) {
		//
		var text = "";
		if(params == 1){
			text = "满赠(送赠品)"
		}else if(params == 2){
			text = "满减(减少金额)"
		}else if(params == 3){
			text = "满折(打折)"
		}else if(params == 4){
			text = "买赠(赠品)"
		}else if(params == 5){
			text = "直降(减少金额)"
		}else if(params == 6){
			text = "打折(减少金额)"
		}
		return text;
	};
	return Model;
});