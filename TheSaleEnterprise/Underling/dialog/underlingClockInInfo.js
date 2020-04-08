define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {

		var time = justep.Date.toString(new Date(), 'YYYY-MM');
		$("[xid=dateSpan]").text(time);
	};
	// 日期算法
	Model.prototype.GetDateStr = function(day, AddDayCount) {
		var date = new Date(day);
		date.setMonth(date.getMonth() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		// var d = date.getDate();
		// return y + "-" + m + "-" + d;
		return y + "-" + m;
	};
	Model.prototype.button4Click = function(event) {
		$("[xid=dateSpan]").text(this.GetDateStr($("[xid=dateSpan]").text(), -1));
	};
	Model.prototype.button7Click = function(event) {
		$("[xid=dateSpan]").text(this.GetDateStr($("[xid=dateSpan]").text(), +1));
	};
	Model.prototype.li1Click = function(event){
		this.comp("infoDialog").open();
	};
	return Model;
});