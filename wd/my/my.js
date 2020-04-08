define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.data2CustomRefresh = function(event){
			var userInfo=[{user_name:'上海执掌天下'}];
			this.comp("data2").loadData(userInfo);
	};

	Model.prototype.companyBtnClick = function(event){
		justep.Shell.showPage("companyInfo");
	};

	Model.prototype.deliveryBtnClick = function(event){
			justep.Shell.showPage("addressList");
	};

	Model.prototype.button5Click = function(event){
	justep.Shell.showPage("selectReturnGoods");
		
	};

	Model.prototype.returnGoodsBtnClick = function(event){
			justep.Shell.showPage("returnSuccessList");
	};

	Model.prototype.button2Click = function(event){
		if(localStorage.getItem("pageFlag") == 1){
			localStorage.setItem("pageFlag", 2);
		}else{
			localStorage.setItem("pageFlag", 1);
		}
		justep.Util.hint("页面选择切换成功")
	};

	return Model;
});