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
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
	};
	//确定选择
	Model.prototype.okBtnClick = function(event){
		//
		var self = this ;
		var linkManData = this.comp("linkManData");
		var params = [];
		linkManData.each(function(obj){
			if(obj.row.val("choose") == 1){	
					var para = {};
					para.staff_id = obj.row.val("staff_id");
					params.push(para);
			} 
		});
		if(params.length <= 0){
			justep.Util.hint("请选择联系人",{"type":'warning'});
			return;
		}
		var par ={};
		par.client_id = this.id;
		par.staff = params;
		var res = asCore.setGetFalse(interFace.relationContract,par);
		if(res.code === 200){
			justep.Util.hint("联系人关联成功");
			//this.params.data.method.modelParamsReceive(event);
			history.back();
		}else{
			justep.Util.hint("联系人关联失败",{'type':'danger'});
			
		}
		
	};	
	
	Model.prototype.modelParamsReceive = function(event){
		this.id = this.params.data.id;
	};
	//获取关联客户
	Model.prototype.ListDataCustomRefresh = function(event){
			var params = {};
		var res = asCore.setGetFalse(interFace.linkman, params);
		if (res.code === 200) {
			var linkManData = this.comp("linkManData");
			linkManData.loadData(res.data.data, false);
			if (this.page == 1) {
				if (res.data.pager.total <= 15) {
					this.total = 1;
				} else {
					this.total = Math.ceil(res.data.pager.total / 15);
				}
			}
			this.page += 1;
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