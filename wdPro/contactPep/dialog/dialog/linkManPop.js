define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function(){
		this.callParent();
	};
	//确定选择
	Model.prototype.okBtnClick = function(event){
		var data = this.comp("ListData");
		var type_ID_List =[];
		var type_Name = [];
		data.each(function(obj) {
			var p = {};
			var pL ={};
			//obj.row
			if(obj.row.val("choose") == 1){
				p.client_id=obj.row.val("client_id")
				pL.client_id =obj.row.val("client_id");
				pL.client_name =obj.row.val("client_name");
				pL.flag =1;
				type_ID_List.push(p);
				type_Name.push(pL);
			}
		});
		var params ={};
		params.ID = type_ID_List;
		params.Name  = type_Name;
		this.getParentModel().setManPop(params);
		this.close();
	};	
	
	Model.prototype.modelParamsReceive = function(event){
		
	};
	//获取关联客户
	Model.prototype.ListDataCustomRefresh = function(event){
		var params ={};
		var res = asCore.setGetFalse(interFace.clientList,params);
		if(res.code === 200){
			var ListData = this.comp("ListData");
			ListData.loadData(res.data.data,false);
		}else{
			justep.Util.hint("客户列表加载失败");
		}
	};
	return Model;
});