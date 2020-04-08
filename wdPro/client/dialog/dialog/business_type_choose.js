define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.type_ID ="";
		this.type_Name = "";
	};
	// 获取
	Model.prototype.modelLoad = function(event) {
		var params = {};
		var res = asCore.setGetFalse(interFace.getClientSearchData, params);
		if (res.code === 200) {
			this.comp("business_Type_Data").loadData(res.data.business_type.list, false);
		} else {
			justep.Util.hint("业务模式获取失败");
		}
	};
	//获取客户分类
	Model.prototype.okBtnClick = function(event){
		if(this.type_ID == ""){
			justep.Util.hint("请选择销售区域");
			return;
		}
		var params ={};
		params.ID = this.type_ID;
		params.Name = this.type_Name;
		//提交选择的数据
		this.getParentModel().getBusiness_type(params);
		this.close();
	};
	//根据change获取值
	Model.prototype.radio1Change = function(event){
		var row = event.bindingContext.$object;
		this.type_ID = row.val("id");
		this.type_Name = row.val("name");
		
	};

	return Model;
});