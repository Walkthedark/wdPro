define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		this.comp("MsgContainer").load();
	};

	Model.prototype.button3Click = function(event) {
		this.comp("moreContainer").load();
	};
	// 打卡上班
	Model.prototype.col15Click = function(event) {
		justep.Shell.showPage("GWork");
	};
	// 打卡下班
	Model.prototype.col18Click = function(event) {
		justep.Shell.showPage("AWork");

	};
	// 待办流程(上)
	Model.prototype.col5Click = function(event) {
		justep.Shell.showPage("Process");
	};
	// 待办流程(下)
	Model.prototype.col28Click = function(event) {
		justep.Shell.showPage("Process");
	};
	// 拜访任务
	Model.prototype.col6Click = function(event) {
		justep.Shell.showPage("VisitList");
	};
	// 工作日报
	Model.prototype.col22Click = function(event) {
		justep.Shell.showPage("WorkList");
	};
	// 拜访签到
	Model.prototype.col25Click = function(event) {
		justep.Shell.showPage("VisitSignIn");
	};
	// 常用申请
	Model.prototype.col33Click = function(event) {
		justep.Shell.showPage("Commonly");
	};
	// 渠道费用
	Model.prototype.col40Click = function(event) {
		justep.Shell.showPage("ChannelCost");
	};
	// 销售进度
	Model.prototype.col37Click = function(event) {
		justep.Shell.showPage("SalesProgress");
	};
	// 龙虎榜
	Model.prototype.col45Click = function(event) {
		justep.Shell.showPage("RankingList");
	};
	// 客户管理
	Model.prototype.col52Click = function(event) {
		justep.Shell.showPage("CustomerManagement");
	};
	// 下属管理
	Model.prototype.col49Click = function(event) {
		justep.Shell.showPage("Underling");
	};
	// 导购管理
	Model.prototype.col57Click = function(event) {
		justep.Shell.showPage("Shoppers");
	};
	// 项目管理
	Model.prototype.col64Click = function(event) {
		justep.Shell.showPage("Project");
	};
	// 日程管理
	Model.prototype.col61Click = function(event) {
		justep.Shell.showPage("Schedule");
	};
	// 综合查询
	Model.prototype.col69Click = function(event) {
		justep.Shell.showPage("IntegratedQuery");
	};

	Model.prototype.modelModelConstructDone = function(event){
//		//调用登录事件 
//		var sendUrl = "/index.php/index/mobile/login";
//		asCore.sendGetGisRequest(sendUrl, function(data){
//			if(data.success ==1){
//				//justep.Util.hint(data.msg);
//			} else {
//				justep.Util.hint(data.msg);
//			}
//		});
	};
	//代下单
	Model.prototype.col1Click = function(event){
		justep.Shell.showPage("salesOrder");
	};

	return Model;
});