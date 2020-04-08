define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function(){
		this.callParent();
		this.type_ID = "";
		this.type_Name = "";
		this.client_id_arr =[];
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
				p.staff_id=obj.row.val("staff_id")
				pL.staff_id =obj.row.val("staff_id");
				pL.staff_name =obj.row.val("staff_name");
				pL.flag =1;
				type_ID_List.push(p);
				type_Name.push(pL);
			}
		});
		var params ={};
		params.ID = type_ID_List;
		params.Name  = type_Name;
		//上传
		this.getParentModel().setLinkM(params);
		this.close();
	};	
	
	Model.prototype.modelParamsReceive = function(event){
		var client = this.params.data.client_id_arr;
		console.log(client);
		var clList=[];
		for (var int = 0; int < client.length; int++) {
			clList.push(client[int].client_id);
		}
		this.client_id_arr =clList;
		this.ListDataCustomRefresh(event);
	};
	//获取关联客户
	Model.prototype.ListDataCustomRefresh = function(event){
		var params ={};
		var res = asCore.setGetFalse(interFace.linkman,params);
		if(res.code === 200){
			var ListData = this.comp("ListData");
			ListData.loadData(res.data.data, false);
		}else{
			justep.Util.hint("联系人列表加载失败");
		}
	};
	//
	Model.prototype.radio1Change = function(event){
		var row = event.bindingContext.$object;
		this.type_ID = row.val("staff_id");
		this.type_Name = row.val("staff_name");
	};
	return Model;
});