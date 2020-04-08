define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent(); 
		this.staff_id = "";
	};
	//加入CRM
	Model.prototype.button1Click = function(event){
		window.location.href = "../jumpClient/dialog/addClient.w?id="+this.staff_id;
	};

	Model.prototype.modelParamsReceive = function(event){
		this.staff_id =this.getContext().getRequestParameter("id");;//负值
	};

	return Model;
});