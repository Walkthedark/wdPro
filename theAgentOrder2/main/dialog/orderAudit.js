define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//模型加载
	Model.prototype.modelLoad = function(event){
		
		
	};
	
	Model.prototype.content4Active = function(event){
		var params = {};
		params.order_id = this.params.order_id;
		this.comp("windowContainer2").refresh("$UI/theAgentOrder2/main/dialog/dialog/orderMoney.w", params);
	};

	Model.prototype.content3Active = function(event){
		var params = {};
		params.order_id = this.params.order_id;
		this.comp("windowContainer1").refresh("$UI/theAgentOrder2/main/dialog/dialog/placeAnOrder.w", params);
	};	

	return Model;
});