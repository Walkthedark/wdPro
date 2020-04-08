define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		this.comp("windowContainer1").load("$UI/wdPro/workReport/newDialog/otherPepReport.w", {});
	};

	Model.prototype.button1Click = function(event) {
		this.comp("windowContainer1").load("$UI/wdPro/workReport/newDialog/myReport.w", {});
	};

	Model.prototype.button4Click = function(event) {
		this.comp("windowContainer1").load("$UI/wdPro/workReport/newDialog/ccMeReport.w", {});
	};

	Model.prototype.button5Click = function(event){
		alert("暂未开通")
	};
	//添加新的
	Model.prototype.button3Click = function(event){
		justep.Shell.showPage("reportInfoChoose", {});
	};

	return Model;
});