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
	};
	// 获取客户分类
	Model.prototype.okBtnClick = function(event) {
		if (this.type_ID == "") {
			justep.Util.hint("请选择销售区域");
			return;
		}
		var params = {};
		params.id = this.type_ID;
		params.name = this.type_Name;
		// 提交选择的数据//setLinkStateParams
		this.params.data.method.setLinkStateParams(params);
		justep.Shell.closePage();//关闭页面
	};
	// 根据change获取值
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.type_ID = row.val("id");
		this.type_Name = row.val("name");
	};
	return Model;
});