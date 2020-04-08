define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.getItems = function(id) {
		var itemData = this.comp("RData");
		var ret = [];
		itemData.each(function(param) {
			var row = param.row;
			if (row.val("deptId") == id)
				ret.push(row);
		});
		return ret;
	};
	Model.prototype.button2Click = function(event) {
		var period = "";
		$('input[name="period"]:checked').each(function() {
			// Id += $(this).val() + ",";
			period += $(this).next().text() + ",";
		});
		this.comp("periodReceiver").windowEnsure({
			"data" : period
		});
	};
	Model.prototype.button3Click = function(event) {
		var RData = this.comp("RData");
		RData.each(function(param) {
			var check = param.row.val('check');
			console.log(check);
			var id = param.row.val('userId');
			if (check == null || check == "" || check == undefined || check == "false") {
				RData.setValueByID("check", "true", id);
			}
			if (check == "true") {
				RData.setValueByID("check", "false", id);
			}
		});
	};
	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/kaohelist";
		var periodList = this.comp("periodList");
		var data = "";
		asCore.kaohelist(sendUrl, data, function(data) {
			periodList.loadData(data);
		});
	};
	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var title = row.val("title");
		this.comp("periodReceiver").windowEnsure({
			data : {
				id : id,
				title : title
			}
		});
	};
	return Model;
});