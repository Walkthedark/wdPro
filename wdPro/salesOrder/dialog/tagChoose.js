define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.type_ID = "";
		this.type_Name = "";
	};
	// 确定选择
	Model.prototype.okBtnClick = function(event) {

		if (this.type_ID == "") {
			justep.Util.hint("请选择关联客户");
			return;
		}
		var params = {};
		params.ID = this.type_ID;
		params.Name = this.type_Name;
		// 上传
		this.getParentModel().setTag(params);
		this.close();
	};

	Model.prototype.modelParamsReceive = function(event) {

	};
	// 获取关联客户
	Model.prototype.ListDataCustomRefresh = function(event) {
		var params = {};
		var res = asCore.setPostFalse(interFace.getStage, params);
		if(res.code == 200){
			this.comp("ListData").loadData(res.data, false);
		}else{
			justep.Util.hint("跟单阶段加载失败", {'type':'danger'})
		}
		//
	};
	//
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.type_ID = row.val("stage_id");
		this.type_Name = row.val("stage");
	};
	return Model;
});