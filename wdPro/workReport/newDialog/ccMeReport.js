define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var common = require("$UI/wdPro/common/common");
	var Model = function() {
		this.callParent();
		this.report_action = '行为';
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.page1 = 1;// 用户
		this.total1 = 0;// 用户
		this.staff_id = "";
	};
	// 参数接收事件
	Model.prototype.modelParamsReceive = function(event) {
		// 重置参数
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.page1 = 1;// 当前页数
		this.total1 = 0;// 总页数
		var Taddy = justep.Date.toString(new Date(), "yyyy-MM-dd");
		this.comp("input2").val(Taddy);
		// 加入用户
		var params = {};
		var res = asCore.setGetFalse(interFace.staffeasy, params);
		if (res.code === 200) {
			this.comp("business_Type_Data").clear();
			this.comp("business_Type_Data").loadData(res.data.data, false);
			if (this.page1 == 1) {
				if (res.data.count <= 10) {
					this.total1 = 1;
				} else {
					this.total1 = Math.ceil(res.data.count / 10);
				}

			}
			this.page1 += 1;
		} else {
			justep.Util.hint("员工列表获取失败", {
				'type' : 'danger'
			});
		}
	};
	// 新增计划
	Model.prototype.addWorkPlanClick = function(event) {

	};
	// 下一天
	Model.prototype.button7Click = function(event) {
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		var DateValue = this.comp("input2").val();
		var dateNow = common.nextDate(DateValue);
		this.comp("input2").val(dateNow);
		// 重新复制
		this.refashData(dateNow);
	};
	// 上一天
	Model.prototype.button6Click = function(event) {
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		var DateValue = this.comp("input2").val();
		var dateNow = common.Previousday(DateValue);
		this.comp("input2").val(dateNow);
		// 重新搜索
		this.refashData(dateNow);
	};
	//
	Model.prototype.refashData = function(date) {
		var params = {};
		params.date = date;
		params.report_action = this.report_action;
		params.page = this.page;
		var res = asCore.setGetFalse(interFace.other_report, params);
		if (res.code === 200) {
			this.comp("myreData").loadData(res.data.data, false);
			this.comp("myreData").refreshData();
			if (this.page == 1) {
				this.total = Math.ceil(res.data.pager.total / 10);
			}
			;
			for (var int = 0; int < res.data.data.length; int++) {
				var p = [];
				for (var int2 = 0; int2 < res.data.data[int].cc_staff.length; int2++) {
					res.data.data[int].cc_staff[int2].fID = res.data.data[int].report_id;
					p.push(res.data.data[int].cc_staff[int2]);
				}
				this.comp("cc_staffData").loadData(p, false);
				this.comp("cc_staffData").refreshData();
			}
			this.page += 1;
		} else {
			justep.Util.hint("获取他人的汇报列表失败");
		}

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
	// 行点击事件
	Model.prototype.li1Click = function(event) {
		// 获取行点击事件进入详情页
		var row = event.bindingContext.$object;
		var report_id = row.val("report_id");// 获取行ID
		justep.Shell.showPage("workReportInfo", {
			data : {
				"report_id" : report_id
			}
		});
	};
	// 行为
	Model.prototype.button1Click = function(event) {
		
		this.report_action = "行为";
		this.comp("contents2").to(0);
		this.modelParamsReceive(event);
	};
	// 计划
	Model.prototype.button2Click = function(event) {
		this.comp("contents2").to(0);
		this.report_action = "计划";
		this.modelParamsReceive(event);
	};
	// 待定
	Model.prototype.button3Click = function(event) {
		this.comp("contents2").to(0);
		this.report_action = "待定";
		this.modelParamsReceive(event);
	};
	// 加载数据
	Model.prototype.setRefashData = function(event) {
		var params = {};
		var date = this.comp("input2").val();
		params.report_action = this.report_action;
		params.date = date;
		params.page = this.page;
		params.create_staff_id = this.staff_id;
		var res = asCore.setGetFalse(interFace.other_report, params);
		if (res.code === 200) {
			this.comp("myreData").loadData(res.data.data, false);
			this.comp("myreData").refreshData();
			this.comp("cc_staffData").clear();
			if (this.page == 1) {
				this.total = Math.ceil(res.data.pager.total / 10);
			}
			;
			for (var int = 0; int < res.data.data.length; int++) {
				var p = [];
				for (var int2 = 0; int2 < res.data.data[int].cc_staff.length; int2++) {
					res.data.data[int].cc_staff[int2].fID = res.data.data[int].report_id;
					p.push(res.data.data[int].cc_staff[int2]);
				}
				this.comp("cc_staffData").loadData(p, true);
				this.comp("cc_staffData").refreshData();
			}
			this.page += 1;
			this.comp("contents2").to(1);
		} else {
			justep.Util.hint("获取他人的汇报列表失败");
		}
	};
	// 上划加载
	Model.prototype.scrollView1PullUp = function(event) {
		if (this.total < this.page) {
			return;
		}
		;
		this.upLoadDataRefash(event);
	};
	//
	Model.prototype.upLoadDataRefash = function(event) {
		var params = {};
		var date = this.comp("input2").val();
		params.report_action = this.report_action;
		params.date = date;
		params.page = this.page;
		params.create_staff_id = this.staff_id;
		var res = asCore.setGetFalse(interFace.cc_mine_report, params);
		if (res.code === 200) {
			this.comp("myreData").loadData(res.data.data, true);
			this.comp("myreData").refreshData();
			for (var int = 0; int < res.data.data.length; int++) {
				var p = [];
				for (var int2 = 0; int2 < res.data.data[int].cc_staff.length; int2++) {
					res.data.data[int].cc_staff[int2].fID = res.data.data[int].report_id;
					p.push(res.data.data[int].cc_staff[int2]);
				}
				this.comp("cc_staffData").loadData(p, true);
				this.comp("cc_staffData").refreshData();
			}
			this.page += 1;
		} else {
			justep.Util.hint("获取他人的汇报列表失败");
		}

	};
	// 用户下滑事件
	Model.prototype.scrollView2PullUp = function(event) {
		if (this.total1 < this.page1) {
			return;
		}
		;
		var params = {};
		params.page = this.page1;
		this.setUpGetRequest(params);
	};
	Model.prototype.setUpGetRequest = function(params) {
		var res = asCore.setGetFalse(interFace.staffeasy, params);
		if (res.code === 200) {
			this.comp("business_Type_Data").loadData(res.data.data, true);
			if (this.page1 == 1) {
				if (res.data.count <= 10) {
					this.total1 = 1;
				} else {
					this.total1 = Math.ceil(res.data.count / 10);
				}

			}
			this.page1 += 1;
		} else {
			justep.Util.hint("员工列表获取失败", {
				'type' : 'danger'
			});
		}
	};
	//行点击事件
	Model.prototype.li3Click = function(event){
		var row = event.bindingContext.$object;
		var staff_id = row.val("staff_id");//抄送我的人
		this.staff_id =staff_id;
		this.setRefashData(event);
	};
	return Model;
});