define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var common = require("$UI/wdPro/common/common");
	var Model = function() {
		this.callParent();
	};
	// 参数接收事件
	Model.prototype.modelParamsReceive = function(event) {
		var Taddy = justep.Date.toString(new Date(), "yyyy-MM-dd");
		this.comp("input2").val(Taddy);
		var params = {};
		// params.date = Taddy ;
		params.date = '2019-06-13';
		var res = asCore.setGetFalse(interFace.other_report, params);
		if (res.code === 200) {
			this.comp("myreData").loadData(res.data, false);
			this.comp("myreData").refreshData();
			
			for (var int = 0; int < res.data.length; int++) {
				var p =[];
				for (var int2 = 0; int2 < res.data[int].cc_staff.length; int2++) {
					res.data[int].cc_staff[int2].fID =res.data[int].report_id;
					p.push(res.data[int].cc_staff[int2]);
				}
				console.log(p);
				this.comp("cc_staffData").loadData(p, true);
				this.comp("cc_staffData").refreshData();
			}
		} else {
			justep.Util.hint("获取我的汇报列表失败");
		}
	};
	// 新增计划
	Model.prototype.addWorkPlanClick = function(event) {

	};
	// 下一天
	Model.prototype.button1Click = function(event) {
		var DateValue = this.comp("input2").val();
		this.comp("input2").val(common.nextDate(DateValue));
		// 重新复制

	};
	// 上一天
	Model.prototype.button2Click = function(event) {
		var DateValue = this.comp("input2").val();
		this.comp("input2").val(common.Previousday(DateValue));
		// 重新搜索

	};
	// 星期几
	Model.prototype.getWeek = function(date) {
		var week = "";
		var newDate = new Date(date);
		if (newDate.getDay() == 0)
			week = "(周日)"
		if (newDate.getDay() == 1)
			week = "(周一)"
		if (newDate.getDay() == 2)
			week = "(周二)"
		if (newDate.getDay() == 3)
			week = "(周三)"
		if (newDate.getDay() == 4)
			week = "(周四)"
		if (newDate.getDay() == 5)
			week = "(周五)"
		if (newDate.getDay() == 6)
			week = "(周六)"
		return week;
	};
	//行点击事件
	Model.prototype.li1Click = function(event){
		//获取行点击事件进入详情页
		var row = event.bindingContext.$object;
		var report_id = row.val("report_id");//获取行ID
		//获取行点击事件进入详情页
		justep.Shell.showPage("workReportInfo", {data:{"report_id":report_id}});
	};
	return Model;
});