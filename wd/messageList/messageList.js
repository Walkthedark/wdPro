define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.comp("setTitle").set({
			"title" : this.params.title
		})
		this.id = this.params.id;
		this.getData();
	};
	Model.prototype.getData = function(event) {
		// ajax
		var messageList1 = [ {
			id : "1",
			type : '系统公告',
			message_title : '易订货2月份',
			message_time : '2016-04-21 20:56:28'
		} ]
		this.comp("messageList").loadData(messageList1)
	};
	// Model.prototype.getP = function(event){
	// this.getParentModel().refashData(event);
	// };
	return Model;
});