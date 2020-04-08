define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
	};
	// 获取
	Model.prototype.modelLoad = function(event) {
		var params = {};
		var res = asCore.setGetFalse(interFace.getClientSearchData, params);
		if (res.code === 200) {
			this.comp("client_Type_Data").loadData(res.data.category.list, false);
		} else {
			justep.Util.hint("客户分类获取失败");
		}
	};
	//获取客户分类
	Model.prototype.okBtnClick = function(event){
		var client_Type_Data = this.comp("client_Type_Data");
		var params ={};
		var type_ID_List=[];
		var type_Name ="";
		client_Type_Data.each(function(obj) {
			//obj.row
			if(obj.row.val("choose") == 1){
				type_ID_List.push(obj.row.val("id"));
				type_Name=type_Name+obj.row.val("name")+","
			}
		});
		//检查选择的数据是否为空
		if(type_ID_List.length <= 0){
			justep.Util.hint("为选择客户分类");
			return;
		};
		params.ID = type_ID_List;
		params.Name = type_Name;
		//提交选择的数据
		this.getParentModel().getClinet_Type(params);
		this.close();
	};

	return Model;
});