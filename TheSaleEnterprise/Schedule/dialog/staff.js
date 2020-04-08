define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

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
		var staff = "";
		$('input[name="staff"]:checked').each(function() {
			// Id += $(this).val() + ",";
			staff += $(this).next().text() + ",";
		});
		this.comp("periodReceiver").windowEnsure({
			"data" : staff
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
	return Model;
});