define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
		this.workInfo={};
	};
	//新增汇报
	Model.prototype.addSalesOrderClick = function(event){
		
	};
	//新增行为
	Model.prototype.div11Click = function(event){
		justep.Shell.showPage("behaviorInfo", {
			data : {
				flag : "行为",
			}
		});
	};
	//新增计划
	Model.prototype.div9Click = function(event){
		justep.Shell.showPage("addCommonPlan", {
			data : {
				flag : "计划",
			}
		});
	};
	//新增袋地瓜
	Model.prototype.div8Click = function(event){
		justep.Shell.showPage("behaviorInfo", {
			data : {
				flag : "待定",
			}
		});
	};
	//获取客户
	Model.prototype.modelParamsReceive = function(event){
		
	};
	
	Model.prototype.modelLoad = function(event){
	};
	
	return Model;
});