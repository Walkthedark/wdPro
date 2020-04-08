define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var server = require("$UI/faultUrgentRepair/common/interface");
	var fn = {};
	fn.isNull = function(data) {
		var val;
		if (data == "null" || data == null || data == undefined) {
			val = "";
		} else {
			val = data;
		}
		return val;
	}
	fn.accSub = function(arg1, arg2) {
		var r1, r2, m, n;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch (e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch (e) {
			r2 = 0;
		}
		m = Math.pow(10, Math.max(r1, r2)); // last modify by deeka //动态控制精度长度
		n = (r1 >= r2) ? r1 : r2;
		return ((arg1 * m - arg2 * m) / m).toFixed(n);
	}
	fn.accAdd = function(arg1, arg2) {
		var r1, r2, m, c;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch (e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch (e) {
			r2 = 0;
		}
		c = Math.abs(r1 - r2);
		m = Math.pow(10, Math.max(r1, r2));
		if (c > 0) {
			var cm = Math.pow(10, c);
			if (r1 > r2) {
				arg1 = Number(arg1.toString().replace(".", ""));
				arg2 = Number(arg2.toString().replace(".", "")) * cm;
			} else {
				arg1 = Number(arg1.toString().replace(".", "")) * cm;
				arg2 = Number(arg2.toString().replace(".", ""));
			}
		} else {
			arg1 = Number(arg1.toString().replace(".", ""));
			arg2 = Number(arg2.toString().replace(".", ""));
		}
		return (arg1 + arg2) / m;
	}
	fn.accDiv = function(arg1, arg2) {
		var t1 = 0, t2 = 0, r1, r2;
		try {
			t1 = arg1.toString().split(".")[1].length;
		} catch (e) {
		}
		try {
			t2 = arg2.toString().split(".")[1].length;
		} catch (e) {
		}
		with (Math) {
			r1 = Number(arg1.toString().replace(".", ""));
			r2 = Number(arg2.toString().replace(".", ""));
			return (r1 / r2) * pow(10, t2 - t1);
		}
	}
	fn.accMul = function(arg1, arg2) {
		var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
		try {
			m += s1.split(".")[1].length;
		} catch (e) {
		}
		try {
			m += s2.split(".")[1].length;
		} catch (e) {
		}
		return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m);
	}
	fn.switchStatus = function(status) {
		if (status == 0) {
			return "关闭";
		} else if (status == 1) {
			return "打开";
		} else {
			return "未知";
		}
	}
	fn.playStatus = function(status) {
		if (status == 0) {
			return "空闲";
		} else if (status == 1) {
			return "正在播放";
		} else if (status == 2) {
			return "暂停";
		} else if (status == 3) {
			return "停止";
		} else if (status == 4) {
			return "未知";
		} else if (status == 5) {
			return "异常";
		}
	}
	fn.transfStory = function(story) {
		if (story < 1024) {
			return stroy + "M";
		}
		if (story >= 1024 && story < 1024 * 1024) {
			return this.accDiv(story, 1024).toFixed(1) + "G";
		}
		if (story >= 1024 * 1024) {
			return this.accDiv(story, 1024 * 1024).toFixed(1) + "T";
		}
	}
	fn.transfromDate = function(sjc) { // shijianchuo是整数，否则要parseInt转换
		var time = new Date(parseInt(sjc + "000"));
		var y = time.getFullYear();
		var m = time.getMonth() + 1;
		var d = time.getDate();
		var h = time.getHours();
		var mm = time.getMinutes();
		var s = time.getSeconds();
		return y + '-' + this.add0(m) + '-' + this.add0(d) + ' ' + this.add0(h) + ':' + this.add0(mm) + ':' + this.add0(s);
	}
	fn.add0 = function(m) {
		return m < 10 ? '0' + m : m
	}
	fn.remainTime = function(duration, play) {
		var remain = duration - play;
		// 计算出相差天数
		var days = Math.floor(remain / (24 * 3600 * 1000))
		// 计算出小时数
		var leave1 = remain % (24 * 3600 * 1000) // 计算天数后剩余的毫秒数
		var hours = Math.floor(leave1 / (3600 * 1000))
		// 计算相差分钟数
		var leave2 = leave1 % (3600 * 1000) // 计算小时数后剩余的毫秒数
		var minutes = Math.floor(leave2 / (60 * 1000))
		// 计算相差秒数
		var leave3 = leave2 % (60 * 1000) // 计算分钟数后剩余的毫秒数
		var seconds = Math.round(leave3 / 1000)
		return this.add0(hours) + ":" + this.add0(minutes) + ":" + this.add0(seconds);
	}
	fn.transfromTime = function(s) {
		if (s) {
			// 计算出相差天数
			var days = Math.floor(s / (24 * 3600))
			// 计算出小时数
			var leave1 = s % (24 * 3600) // 计算天数后剩余的毫秒数
			var hours = Math.floor(leave1 / (3600))
			// 计算相差分钟数
			var leave2 = leave1 % (3600) // 计算小时数后剩余的毫秒数
			var minutes = Math.floor(leave2 / (60))
			// 计算相差秒数
			var leave3 = leave2 % (60) // 计算分钟数后剩余的毫秒数
			var seconds = Math.round(leave3 / 1)
			return this.add0(hours) + ":" + this.add0(minutes) + ":" + this.add0(seconds);
		} else {
			return ""
		}
	}
	fn.getNewUrl = function(url) {
		var newUrl;
		if (url != "" && url != "undefined" && url != "null" && typeof (url) != "undefined") {
			newUrl = server.path + "/" + url;
		}
		return newUrl;
	}
	window.fn = fn;
	return fn;
});