define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//发起申购
	Model.prototype.initiateBtnClick = function(event){
		this.comp("initiatePopMenu").show();//media-heading
	};

	Model.prototype.messageBtnClick = function(event){
		justep.Shell.showPage("message");
	};

	Model.prototype.gerenXinziClick = function(event){
		justep.Shell.showPage("personalCenter");
	};

	Model.prototype.media8Click = function(event){
		justep.Shell.showPage("feedback");
	};
	//
	Model.prototype.faqiShenGouBtnClick = function(event){
		justep.Shell.showPage("purchase");
	};
	//对账
	Model.prototype.col5Click = function(event){
		
		justep.Shell.showPage("reconciliation");
	};

	Model.prototype.col24Click = function(event){
	//
		justep.Shell.showPage("setApp");
	};

	Model.prototype.col4Click = function(event){
		//
		justep.Shell.showPage("placeTheOrder");
	};

	Model.prototype.col1Click = function(event){
		//
		justep.Shell.showPage("theGoods");
	};

	Model.prototype.mainTenPlan = function(event){
		justep.Shell.showPage("nuclearAccount");
	};
	//
	Model.prototype.col7Click = function(event){
		justep.Shell.showPage("purchaseMeg");
	};
	//采购管理
	
	Model.prototype.col2Click = function(event){
		//
		justep.Shell.showPage("supplyMeg");
	};
	
	Model.prototype.col44Click = function(event){
		//
		justep.Shell.showPage("theGoodsMeg");
	};
	
	Model.prototype.col8Click = function(event){
		justep.Shell.showPage("returnsMeg");
	};
	
	Model.prototype.col23Click = function(event){
		justep.Shell.showPage("permissions");
	};
	
	return Model;
});