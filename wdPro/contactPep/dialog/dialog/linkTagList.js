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
		var tagData = this.comp("tagData");
		var params ={};
		var type_ID_List=[];
		var type_Name ="";
		tagData.each(function(obj) {
			//obj.row
			if(obj.row.val("choose") == 1){
				type_ID_List.push(obj.row.val("tag_id"));
				type_Name=type_Name+obj.row.val("tag_name")+","
			}
		});
		//检查选择的数据是否为空
		if(type_ID_List.length <= 0){
			justep.Util.hint("为选择客户分类");
			return;
		};
		params.id = type_ID_List;
		params.name = type_Name;
		this.params.data.method.setTagParams(params);
		justep.Shell.closePage();//关闭页面
	};

	Model.prototype.modelParamsReceive = function(event) {

	};
	//
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.type_ID = row.val("id");
		this.type_Name = row.val("name");
	};
	Model.prototype.tagDataCustomRefresh = function(event){
		var params ={};
		var res = asCore.setGetFalse(interFace.tagList, params);
		if (res.code == 200) {
			var tagData = this.comp("tagData");
			tagData.loadData(res.data, false);
		} else {
			justep.Util.hint("客户标签");
		}
	};
	return Model;
});