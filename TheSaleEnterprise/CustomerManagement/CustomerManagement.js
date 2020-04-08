define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};
	// 所属经销商订单查询
	Model.prototype.row1Click = function(event) {
		this.comp("orderQueryDialog").open();
	};
	// 所属经销商对账单
	Model.prototype.row3Click = function(event) {
		this.comp("statementsDialog").open();
	};
	// 客户通讯录
	Model.prototype.row5Click = function(event) {
		this.comp("addressBookDialog").open();
	};
	// 所属客户资料
	Model.prototype.row7Click = function(event) {
		this.comp("customerDataDialog").open();
	};

	return Model;
});