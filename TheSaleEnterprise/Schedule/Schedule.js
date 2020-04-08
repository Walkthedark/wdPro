define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.data;
	};

	Model.prototype.modelLoad = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY-MM');
		this.comp("cDate").setValue("time", time);
		this.getSchedule();
	};
	Model.prototype.initTable = function() {
		var time = this.comp("cDate").getValue("time");
		$("#divTable1").empty();
		$("#divTable1").append(this.getMonthVisited(time));
		var list = this.getMonthDay(time);
		for (i = 0; i < list.length; i++) {
			var date = list[i];
			this.addclick(date, this);
		}
	}
	Model.prototype.getMonthVisited = function(time) {
		// ===================================方法开始
		var i, k, today = new Date(), // 获取当前日期
		y = time.substring(0, 4), // 获取日期中的年份
		m = parseInt(time.substring(5, 7), 10) - 1; // 获取日期中的月份(需要注意的是：月份是从0开始计算，获取的值比正常月份的值少1)
		var yy = today.getFullYear();
		var mm = today.getMonth();
		var month = m + 1;
		d = today.getDate(); // 获取日期中的日(方便在建立日期表格时高亮显示当天)
		var firstday = new Date(y, m, 1); // 获取当月的第一天
		var month_first = y + "-" + month + "-01";
		var lastday = new Date(y, month, 0);
		var month_last = y + "-" + month + "-" + lastday.getDate();
		var dayOfWeek = firstday.getDay() - 1, // 判断第一天是星期几(返回[0-6]中的一个，0代表星期天，1代表星期一，以此类推)
		days_per_month = new Array(31, 28 + isLeap(y), 31, 30, 31, 30, 31, 31, 30, 31, 30, 31), // 创建月份数组
		str_nums = Math.ceil((dayOfWeek + days_per_month[m]) / 7); // 确定日期表格所需的行数
		var tableHeader = '<table class="tableWidth" id="divTable11">'; // 打印表格第一行(显示星期)
		var tableContent = "";
		if (month < 10) {
			month = "0" + month;
		}
		for (i = 0; i < str_nums; i += 1) { // 二维数组创建日期表格
			var content = "";
			for (k = 0; k < 7; k++) {
				var idx = 7 * i + k; // 为每个表格创建索引,从0开始
				var date = idx - dayOfWeek + 1; // 将当月的1号与星期进行匹配
				if (date <= 0 || date > days_per_month[m]) {
					date = ' ';
					content = content + '<td class="yw_font yw_style" ><div class="topDiv noclick">' + date + '</div></div></td>';
				} else {
					date = idx - dayOfWeek + 1;
					var idy;
					if (date < 10) {
						idy = y + "-" + month + "-0" + date;
					} else {
						idy = y + "-" + month + "-" + date;
					}
					if (date == d && yy == y && mm == m) {
						content = content + '<td id = v' + idy + ' class="yw_font yw_style"><div id = vv' + idy + ' class="topDiv toadynoclick">' + date + '</div></div></td>';
						this.setcheduleList(idy);
					} else
						content = content + '<td id = v' + idy + ' class="yw_font yw_style"><div id = vv' + idy + ' class="topDiv noclick">' + date + '</div></div></td>';
				}

			}
			tableContent = tableContent + '<tr>' + content + '</tr>';
		}
		var tableFooter = '</table>';
		var Html = tableHeader + tableContent + tableFooter;
		return Html;
	}
	Model.prototype.addclick = function(sWorkDate, self) {
		$("#vv" + sWorkDate).click(function() {
			$("#divTable11 td").removeClass(function(index) {
				$(this).removeClass("clicked");
			});
			$("#v" + sWorkDate).addClass("clicked");
			self.setcheduleList(sWorkDate);
		});
	};
	Model.prototype.setcheduleList = function(time) {
		var data = this.data;
		var InData = this.comp("InData");
		var list = [];
		for (i = 0; i < data.length; i++) {
			var ks = data[i].ks;
			var js = data[i].js;
			if (time >= ks && time <= js) {
				list.push(data[i]);
			}
		}
		InData.clear();
		InData.loadData(list);
		if (list.length > 0) {
			$("[xid=label2]").text(time + "的日程安排(" + list.length + ")");
		} else {
			$("[xid=label2]").text(time + "的无日程安排");
		}
		if (list.length == 0) {
			$("#MyCustomerNone").show();
		} else {
			$("#MyCustomerNone").hide();
		}
	}
	Model.prototype.getMonthDay = function(time) {
		var myDate = new Date(time + "-01");
		var list = getDayAll(getPreMonth(myDate), getNextMonth(myDate));
		return list;
	}
	// 日期算法(月)
	Model.prototype.GetDateStr2 = function(day, AddDayCount) {
		var date = new Date(day);
		date.setMonth(date.getMonth() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		// var d = date.getDate();
		// return y + "-" + m + "-" + d;
		if (m < 10) {
			m = "0" + m;
		}
		return y + "-" + m;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("cDate").setValue("time", this.GetDateStr2(this.comp("cDate").getValue("time"), -1));
		this.getSchedule();
	};

	Model.prototype.button7Click = function(event) {
		this.comp("cDate").setValue("time", this.GetDateStr2(this.comp("cDate").getValue("time"), +1));
		this.getSchedule();
	};

	Model.prototype.button2Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.calendar1EventsSelected = function(event) {

	};
	Model.prototype.getSchedule = function() {
		var time = this.comp("cDate").getValue("time");
		var self = this;
		var sendUrl = "/index/mobile/rcap";
		var data = {};
		data.yue = time;
		asCore.rcap(sendUrl, data, function(data) {
			self.data = data;
			self.initTable();
		});
	}

	Model.prototype.newDialogReceived = function(event) {
		this.getSchedule();
	};

	return Model;
});

function isLeap(year) {
	return year % 4 == 0 ? (year % 100 != 0 ? 1 : (year % 400 == 0 ? 1 : 0)) : 0;
}
function compareTime(beginDate, endDate) {
	var d1 = new Date(beginDate.replace(/\-/g, "\/"));
	var d2 = new Date(endDate.replace(/\-/g, "\/"));
	if (beginDate != "" && endDate != "" && d1 > d2) {
		return true;
	} else {
		return false;
	}
}
function getPreMonth(date) {
	var year = date.getFullYear();
	var month = date.getMonth();
	var day = date.getDate();
	var days = new Date(year, month, 0);
	days = days.getDate(); // 获取当前日期中月的天数
	var year2 = year;
	var month2 = parseInt(month);
	if (month2 == 0) {
		year2 = parseInt(year2) - 1;
		month2 = 12;
	}
	if (month2 < 10) {
		month2 = '0' + month2;
	}
	var t2 = year2 + '-' + month2 + '-' + 01;
	return t2;
}

function getNextMonth(date) {
	var year = date.getFullYear();
	var month = date.getMonth();
	var day = date.getDate();
	var days = new Date(year, month, 0);
	days = days.getDate(); // 获取当前日期中的月的天数
	var year2 = year;
	var month2 = parseInt(month) + 2;
	if (month2 == 13) {
		year2 = parseInt(year2) + 1;
		month2 = 1;
	}
	var day2 = day;
	var days2 = new Date(year2, month2, 0);
	var days2 = days2.getDate();
	if (month2 < 10) {
		month2 = '0' + month2;
	}
	var t2 = year2 + '-' + month2 + '-' + days2;
	return t2;
}
function getDayAll(begin, end) {
	var dateAllArr = new Array();
	var ab = begin.split("-");
	var ae = end.split("-");
	var db = new Date();
	db.setUTCFullYear(ab[0], ab[1] - 1, ab[2]);
	var de = new Date();
	de.setUTCFullYear(ae[0], ae[1] - 1, ae[2]);
	var unixDb = db.getTime();
	var unixDe = de.getTime();
	for (var k = unixDb; k <= unixDe;) {
		var date = new Date(parseInt(k));
		date = date.format();
		dateAllArr.push(date.toString());
		k = k + 24 * 60 * 60 * 1000;
	}
	return dateAllArr;
}
Date.prototype.format = function() {
	var s = '';
	s += this.getFullYear() + '-'; // 获取年份。
	var month = this.getMonth() + 1;
	if (month < 10)
		month = '0' + month;
	var day = this.getDate();
	if (day < 10)
		day = '0' + day;
	s += month + "-"; // 获取月份。
	s += day; // 获取日。
	return (s); // 返回日期。
};