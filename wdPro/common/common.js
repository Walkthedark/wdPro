define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	// 开发核心js
	var common = {};

	// 验证
	common.regular = function(val) {
		var flag = false;
		if (val.match(/^[ ]*$/)) {
			flag = true;
		}
		return flag;
	};
	common.nextDate = function(CreateDate_Temp) {
		var curDate = new Date(CreateDate_Temp);
		var preDate = new Date(curDate.getTime() + 24 * 60 * 60 * 1000);
		var strDate = preDate.getFullYear() + "-";
		strDate += preDate.getMonth() + 1 >= 10 ? preDate.getMonth() + 1 + "-" : "0" + (preDate.getMonth() + 1) + "-"
		strDate += preDate.getDate() >= 10 ? preDate.getDate() : "0" + (preDate.getDate());
		return strDate;
	};
	common.Previousday = function(CreateDate_Temp) {
		var curDate = new Date(CreateDate_Temp);
		var preDate = new Date(curDate.getTime() - 24 * 60 * 60 * 1000);
		var strDate = preDate.getFullYear() + "-";
		strDate += preDate.getMonth() + 1 >= 10 ? preDate.getMonth() + 1 + "-" : "0" + (preDate.getMonth() + 1) + "-"
		strDate += preDate.getDate() >= 10 ? preDate.getDate() : "0" + (preDate.getDate());
		return strDate;
	};
	return common;
});