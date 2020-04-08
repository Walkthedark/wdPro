define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function(){
		this.callParent();
		this.id = ""
	};
	//获取传过来的ID
	Model.prototype.modelParamsReceive = function(event){
//		this.id = this.params.data.id;
		this.id = this.getContext().getRequestParameter("id");
		var params = {};
		params.id = this.id;
		var res = asCore.setGetFalse(interFace.clientDetail, params);
		if (res.code === 200) {
			// relevanceDlientData 关联客户
			var relevanceDlientData = this.comp("relevanceDlientData");
			relevanceDlientData.loadData(res.data.relevance_client, false);
			relevanceDlientData.refreshData();
		} else {
			justep.Util.hint("客户关联客户加载失败");
		}
	};	
	//解除关联
	Model.prototype.button1Click = function(event){
		var row = event.bindingContext.$object;//获取需要解除的客户ID
		var client_id = row.val("client_id")
		var params = {};
		params.current_client_id = this.id;
		params.target_client_id = client_id;
		var res = asCore.setGetFalse(interFace.removeClient, params);
		if (res.code === 200) {
			justep.Util.hint("解除成功");
			var relevanceDlientData = this.comp("relevanceDlientData");
			//relevanceDlientData.deleteData(relevanceDlientData.getRowByID(client_id));
			relevanceDlientData.deleteData(row);
		} else {
			justep.Util.hint("客户解除关联失败",{'type':'danger'});
			
		}
	};	

	return Model;
});