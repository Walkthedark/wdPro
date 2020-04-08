define(function(require) {
	var $ = require("jquery");
	var userInfo = require("$UI/maintenanceOrderMessa/common/userInfo");
	var common = {
		// 判断是否是空字符串
		patternNull : function(str) {
			var text = false;
			if (str.replace(/\s*/g, "").length != 0) {
				text = true;
			}
			
			return text;
		},
		setUserInfo : function(data) {
			userInfo.setId(data.data.userInfo.id);
			userInfo.setRealName(data.data.userInfo.realName);
			userInfo.setFirstparty(data.data.userInfo.firstparty);
			userInfo.setUserName(data.data.userInfo.userName);
			userInfo.setUserMobile(data.data.userInfo.userMobile);

			userInfo.setPushChannelId(data.data.userInfo.pushChannelId);
			userInfo.setopSign(data.data.userInfo.opSign);
			userInfo.setPushUserId(data.data.userInfo.pushUserId);

			userInfo.setLastAccessDate(data.data.userInfo.lastAccessDate);

		},
		nextDate : function(CreateDate_Temp) {
			var curDate = new Date(CreateDate_Temp);
			var preDate = new Date(curDate.getTime() + 24 * 60 * 60 * 1000);
			var strDate = preDate.getFullYear() + "-";
			strDate += preDate.getMonth() + 1 >= 10 ? preDate.getMonth() + 1 + "-" : "0" + (preDate.getMonth() + 1) + "-"
			strDate += preDate.getDate() >= 10 ? preDate.getDate() : "0" + (preDate.getDate());
			// strDate += nextDate.getHours() + ":";
			// strDate += nextDate.getMinutes() + ":";
			// strDate += nextDate.getSeconds();

			return strDate;
		},
		Previousday : function(CreateDate_Temp) {
			var curDate = new Date(CreateDate_Temp);
			var preDate = new Date(curDate.getTime() - 24 * 60 * 60 * 1000);
			var strDate = preDate.getFullYear() + "-";
			strDate += preDate.getMonth() + 1 >= 10 ? preDate.getMonth() + 1 + "-" : "0" + (preDate.getMonth() + 1) + "-"
			strDate += preDate.getDate() >= 10 ? preDate.getDate() : "0" + (preDate.getDate());
			return strDate;
		},
		getOneMonthNum : function(CreateDate_Temp) {
			// 获取下个月的日期
			var nextDate = this.getnextMonthDate(CreateDate_Temp);
//			alert(CreateDate_Temp);
		//	alert(nextDate);
			var days = this.getndays(CreateDate_Temp, nextDate);
			var strDate = new Date(CreateDate_Temp)
			
			var endDate = new Date(nextDate);
			var getDay = strDate.getDate();
			var params = [];
			// debugger
			if (days == 31) {
				for (var int = 0; int < days; int++) {

					var newDays = getDay + int;

					if (newDays <= 31) {

						var returnDate = strDate.getFullYear() + "-";
						returnDate += strDate.getMonth() + 1 >= 10 ? strDate.getMonth() + 1 + "-" : "0" + (strDate.getMonth() + 1) + "-";
						returnDate += newDays >= 10 ? newDays : "0" + (newDays);
						var paras = {};
						paras.date = returnDate;
						params.push(paras);

					} else {
						var newDays = getDay + int;
						var returnDate = endDate.getFullYear() + "-";
						returnDate += endDate.getMonth() + 1 >= 10 ? endDate.getMonth() + 1 + "-" : "0" + (endDate.getMonth() + 1) + "-";
						returnDate += newDays - 31 >= 10 ? newDays - 31 : "0" + (newDays - 31);
						var paras = {};
						paras.date = returnDate;
						params.push(paras);
					}
				}
			} else {
				for (var int = 0; int < days; int++) {
					var newDays = getDay + int;
					if (newDays <= 30) {
						// var str =
						// strDate.getFullYear()+"-"+strDate.getMonth()+1>=10?strDate.getMonth()+1:"0"+(strDate.getMonth()+1)//+"-"+newDays;
						var returnDate = strDate.getFullYear() + "-";
						returnDate += strDate.getMonth() + 1 >= 10 ? strDate.getMonth() + 1 + "-" : "0" + (strDate.getMonth() + 1) + "-";
						returnDate += newDays >= 10 ? newDays : "0" + (newDays);
						var paras = {};
						paras.date = returnDate;
						params.push(paras);

					} else {
						var newDays = getDay + int;
						var returnDate = endDate.getFullYear() + "-";
						returnDate += endDate.getMonth() + 1 >= 10 ? endDate.getMonth() + 1 + "-" : "0" + (endDate.getMonth() + 1) + "-";
						returnDate += newDays - 30 >= 10 ? newDays - 30 : "0" + (newDays - 30);
						var paras = {};
						paras.date = returnDate;
						params.push(paras);
					}
				}
			}
			return params;

		},
		getnextMonthDate : function(CreateDate_Temp) {
			var arr = CreateDate_Temp.split('-');
			var year = arr[0]; // 获取当前日期的年份
			var month = arr[1]; // 获取当前日期的月份
			var day = arr[2]; // 获取当前日期的日
			var days = new Date(year, month, 0);
			days = days.getDate(); // 获取当前日期中的月的天数
			var year2 = year;
			var month2 = parseInt(month) + 1;
			if (month2 == 13) {
				year2 = parseInt(year2) + 1;
				month2 = 1;
			}
			var day2 = day;
			var days2 = new Date(year2, month2, 0);
			days2 = days2.getDate();
			if (day2 > days2) {
				day2 = days2;
			}
			if (month2 < 10) {
				month2 = '0' + month2;
			}

			var t2 = year2 + '-' + month2 + '-' + day2;
			return t2;
		},
		getndays : function(strDateStart, strDateEnd) {
			var strSeparator = "-"; // 日期分隔符
			var oDate1;
			var oDate2;
			var iDays;
			oDate1 = strDateStart.split(strSeparator);
			oDate2 = strDateEnd.split(strSeparator);
			var strDateS = new Date(oDate1[0], oDate1[1] - 1, oDate1[2]);
			var strDateE = new Date(oDate2[0], oDate2[1] - 1, oDate2[2]);
			iDays = parseInt(Math.abs(strDateS - strDateE) / 1000 / 60 / 60 / 24)// 把相差的毫秒数转换为天数
			return iDays;
		}
	};
	return common;
});
