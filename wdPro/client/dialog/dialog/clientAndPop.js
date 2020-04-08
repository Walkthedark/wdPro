define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function(){
		this.callParent();
		this.type_ID = "";
		this.type_Name = "";
		this.id = "";
	};
	//确定选择
	Model.prototype.okBtnClick = function(event){
		//
		var self = this ;
		var ListData = this.comp("ListData");
		var params = [];
		ListData.each(function(obj){
			if(obj.row.val("choose") == 1){	
				if(obj.row.val("client_id") != self.id){
					params.push(obj.row.val("client_id"))
				}
			} 
		});
		if(params.length <= 0){
			justep.Util.hint("请选择客户",{"type":'warning'});
			return;
		}
		var par ={};
		par.current_client_id = this.id;
		par.target_client_ids = params;
		var res = asCore.setGetFalse(interFace.clientRelevanceAdd,par);
		if(res.code === 200){
			justep.Util.hint("关联成功");
			//this.params.data.method.modelParamsReceive(event);
			history.back();
		}else{
			justep.Util.hint("客户关联失败",{'type':'danger'});
			
		}
		
	};	
	
	Model.prototype.modelParamsReceive = function(event){
		this.id = this.params.data.id;
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
	//
	Model.prototype.radio1Change = function(event){
		var row = event.bindingContext.$object;
		this.type_ID = row.val("client_id");
		this.type_Name = row.val("client_name");
	};
	Model.prototype.button1Click = function(event){
		history.back();
	};
	return Model;
});