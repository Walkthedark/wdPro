define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.faqiShenGouBtnClick = function(event){
		justep.Shell.showPage("chooseGongyingS");
	};

	Model.prototype.button15Click = function(event){
		justep.Shell.showPage("addGongYings");
	};

	Model.prototype.button1Click = function(event){
		justep.Shell.showPage("jibenSett");
	};

	Model.prototype.button3Click = function(event){
		//
		justep.Shell.showPage("myDepartment");
	};

	Model.prototype.button20Click = function(event){
		//
		justep.Shell.showPage("dePartMentInfo");
	};

	return Model;
});