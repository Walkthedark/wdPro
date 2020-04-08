define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {
		var params = {};
		params.token = localStorage.getItem("token");
		params.user=localStorage.getItem("user");
		params.company_id = localStorage.getItem("supplier_id");
		var res = asCore.getSupplier(inFace.client_list, params);
		if (res.code === 200) {
			this.comp("data1").loadData(res.data, false);
//			console.log(res);
		} else {
			justep.Util.hint(res.message);
		};
	};
	//确定选择供应商
	Model.prototype.button1Click = function(event){
		var data = this.comp("data1");
		if(data.getCurrentRowID()){
			var system_id = data.getValueByID("system_id", data.getCurrentRowID());
			//localStorage.setItem("supplier_id",'1053' );
			localStorage.setItem("company_id",system_id );
			this.close();
			this.getParentModel().chooseSup(event);
		}else{
			justep.Util.hint("请选择企业");
		}
	};

	return Model;
});