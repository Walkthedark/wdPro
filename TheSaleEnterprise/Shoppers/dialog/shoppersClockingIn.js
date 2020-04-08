define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY-MM-dd');
		$("[xid=cdateInput]").val(time);
	};

	// 日期算法(日)
	Model.prototype.GetDateStr2 = function(day, AddDayCount) {
		var date = new Date(day);
		date.setDate(date.getDate() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		var d = date.getDate();
		return y + "-" + m + "-" + d;
	};

	Model.prototype.button4Click = function(event) {
		$("[xid=cdateInput]").val(this.GetDateStr2($("[xid=cdateInput]").val(), -1));
	};
	Model.prototype.button7Click = function(event) {
		$("[xid=cdateInput]").val(this.GetDateStr2($("[xid=cdateInput]").val(), -1));
	};

	return Model;
});