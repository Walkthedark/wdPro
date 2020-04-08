define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 考勤查询
	Model.prototype.row1Click = function(event) {
		this.comp("workQueryDialog").open();
	};
	// 企业通讯录
	Model.prototype.row3Click = function(event) {
		this.comp("addressBookDialog").open();
	};
	// 库存查询
	Model.prototype.row5Click = function(event) {
		this.comp("inventoryDialog").open();
	};
	// 分区龙虎榜
	Model.prototype.row7Click = function(event) {
		this.comp("RankingListDialog").open();
	};
	// 分区销售进度
	Model.prototype.row9Click = function(event) {
		this.comp("SalesProgressDialog").open();
	};
	// 我的销售进度
	Model.prototype.row11Click = function(event) {
		this.comp("mySalesProgressADialog").open();
	};
	// 所属区域拜访
	Model.prototype.row16Click = function(event) {
		this.comp("RegionalVisitDialog").open();
	};
	// 企业二维码
	Model.prototype.row17Click = function(event) {
		this.comp("QRialog").open();
	};
	

	return Model;
});