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
		var res = asCore.setGetFalse(interFace.getTrade, params);
		if (res.code === 200) {
			var paret_data = this.comp("paret_data");
			paret_data.loadData(res.data, false);
			var child_data = this.comp("child_data");
			if (res.data.length > 0) {
				for (var int = 0; int < res.data.length; int++) {
					child_data.loadData(res.data[int].option, true);
				}
			}
		} else {
			justep.Util.hint("销售区域获取失败");
		}
	};
	// 获取客户分类
	Model.prototype.okBtnClick = function(event) {
		var params ={};
		var child_data = this.comp("child_data");
		var id_list =[];
		var name_list ="";
		child_data.each(function(obj) {
			//obj.row
			if(obj.row.val("choose") == 1){
				id_list.push(obj.row.val("trade_id"));
				name_list=name_list+obj.row.val("trade_name")+",";
			}
		});
		params.id = id_list;
		params.name = name_list;
		// 提交选择的数据
		this.getParentModel().getEnterprise_Radio(params);
		this.close();
	};
	// 根据change获取值
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.type_ID = row.val("id");
		this.type_Name = row.val("name");
	};
	Model.prototype.button3Click = function(event){
		//
		
	};
	return Model;
});