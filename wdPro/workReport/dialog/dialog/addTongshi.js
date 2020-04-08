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
		var res = asCore.setGetFalse(interFace.StaffEasy, params);
		if (res.code === 200) {
			this.comp("client_Type_Data").loadData(res.data, false);
		} else {
			justep.Util.hint("员工列表获取失败");
		}
	};
	//获取客户分类
	Model.prototype.okBtnClick = function(event){
		var client_Type_Data = this.comp("client_Type_Data");
		var params ={};
		var type_ID_List=[];
		var type_Name =[];
		client_Type_Data.each(function(obj) {
			//obj.row
			var p ={};
			if(obj.row.val("choose") == 1){
				type_ID_List.push(obj.row.val("staff_id"));
				//type_Name=type_Name+obj.row.val("staff_name")+","
				p.staff_id= obj.row.val("staff_id");
				p.staff_name= obj.row.val("staff_name");
				type_Name.push(p);
			}
		});
		//检查选择的数据是否为空
		if(type_ID_List.length <= 0){
			justep.Util.hint("请选择员工");
			return;
		};
		params.ID = type_ID_List;
		params.Name = type_Name;
		//提交选择的数据
		this.getParentModel().getadd_Type(params);
		this.close();
	};

	return Model;
});