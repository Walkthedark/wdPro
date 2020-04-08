define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.documentary_id = "";
	};
	// 修改
	Model.prototype.editBtnClick = function(event) {
		justep.Shell.showPage("editSalesOrder", {
			id : this.documentary_id
		});
	};
	// 删除
	Model.prototype.delBtnClick = function(event) {
		this.comp("messageDialog").show();
	};
	// 参数加载事件
	Model.prototype.modelParamsReceive = function(event) {
		this.documentary_id = this.params.id;
		var params = {};
		params.id = this.documentary_id;
		var res = asCore.setGetFalse(interFace.detail, params);
		if (res.code === 200) {
			var ListData = this.comp("ListData");
			var p = [];
			p.push(res.data);
			ListData.loadData(p, false);
			ListData.refreshData();
			// set值客户
			if (res.data.client_id != null) {
				$(this.getElementByXid("h53")).html(res.data.client.client_name);
			}
			;
			// set 联系人值
			// if(res.data.staff_id != null){
			// this.comp("input6").val(res.data.staff.staff_name);
			// }
		} else {
			justep.Util.hint("跟单详情获取失败", {
				type : 'danger'
			});
		}
	};
	Model.prototype.messageDialogOK = function(event){
		var params ={};
		params.id = this.documentary_id;
		var res = asCore.setPostFalse(interFace.del_documentary,params);
		if(res.code === 200){
			justep.Util.hint("跟单删除成功");
		}else{
			justep.Util.hint("跟单删除失败",{'type':'danger'});
		}
		
	};
	//打开详细信息
	Model.prototype.labelEdit7Click = function(event){
		//
		justep.Shell.showPage("infoAddsalesOrder", {
			id : this.documentary_id
		});
	};
	
	return Model;
});