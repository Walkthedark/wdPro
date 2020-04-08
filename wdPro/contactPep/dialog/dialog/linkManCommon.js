define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.type_ID = "";
		this.type_Name = "";
		this.name = "";
	};
	// 获取
	Model.prototype.modelLoad = function(event) {
		// 接受上面传过来的参数，判断选择什么数据
		var params = {};
		var res = asCore.setGetFalse(interFace.tagList, params);
		if (res.code === 200) {
			var tagData = this.comp("tagData");
				tagData.loadData(res.data, false);
			//
		} else {
			justep.Util.hint("销售区域获取失败");
		}
	};
	// 获取客户分类
	Model.prototype.okBtnClick = function(event) {
		var tagData = this.comp("tagData");
		var params ={};
		var tag_ID_List=[];
		var tag_Name ="";
		tagData.each(function(obj) {
			//obj.row
			if(obj.row.val("choose") == 1){
				tag_ID_List.push(obj.row.val("tag_id"));
				tag_Name=tag_Name+obj.row.val("tag_name")+","
			}
		});
		//检查选择的数据是否为空
		if(tag_ID_List.length <= 0){
			justep.Util.hint("为选择客户分类");
			return;
		};
		params.ID = tag_ID_List;
		params.Name = tag_Name;
		// 提交选择的数据
		this.getParentModel().getTag(params);
		this.close();
	};
	
	return Model;
});