define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var common = require("$UI/wd/common/common");
//	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function(){
		this.callParent();
	};
	//
	Model.prototype.modelParamsReceive = function(event){
		this.getP(event);
	};
	Model.prototype.getP = function(event){
		var res = common.getPromotionActiv("");
		if(res.code == 200){
			var data = this.comp("data1");
			var group = res.data.group;//获取组合促销
			var product = res.data.product;//获取单品促销
			var order = res.data.order;//获取订单优惠
			data.loadData(group, false);
			data.loadData(product, true);
			var p =[];
			if(order != "" || order!= null){
				p.push(order);
				data.loadData(p, true);
			}
			
		}
	};
	Model.prototype.div1Click = function(event){
		//
		var rowData = event.bindingContext.$object;
		var params = {};
		var promotion_id = rowData.val("promotion_id");
		var end_time = rowData.val("end_time");
		var group_goods_count = rowData.val("group_goods_count");
		var promotion_detail = rowData.val("promotion_detail");
		var promotion_rule = rowData.val("promotion_rule");
		var promotion_title = rowData.val("promotion_title");
		var promotion_type = rowData.val("promotion_type");
		var start_time = rowData.val("start_time");
		var promotion_cate = rowData.val("promotion_cate");
		params.start_time= start_time;
		params.promotion_id= promotion_id;
		params.end_time= end_time;
		params.group_goods_count= group_goods_count;
		params.promotion_detail= promotion_detail;
		params.promotion_rule= promotion_rule;
		params.promotion_title= promotion_title;
		params.promotion_type= promotion_type;
		params.promotion_cate= promotion_cate;
		justep.Shell.showPage('huoDongInfo', {data:params});
	};
	return Model;
});