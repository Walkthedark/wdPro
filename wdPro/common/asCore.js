define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	// 开发核心js
	var asCore = {};

	// 验证
	asCore.regular = function(val) {
		var flag = false;
		if (val.match(/^[ ]*$/)) {
			flag = true;
		}
		return flag;
	};
	asCore.login = function(URL, pramas) {
		var re = "";
		$.ajax({
			url : URL,
			data : pramas,
			type : "get",
			dataType : "json",
			success : function(res) {
				// aaa为服务器所返回的值
				if (res.code == 200) {
					localStorage.setItem("client_id", res.data.client_id);
					localStorage.setItem("client_Name", res.data.client_name);
					localStorage.setItem("token", res.data.token);
					justep.Shell.showPage("homeMane");
				} else {
					justep.Util.hint(res.message);
				}
			},
			error : function() {
				// 服务器连接失败
				justep.Util.hint("服务器连接失败");
			},
			beforeSend : function() {// 在success之前就进行了
				// 操作
			},
			complete : function() {// 在success之后就进行
				// 操作
			}
		});
		return re;
	};

	asCore.setGetFalse = function(URL, params) {
		var param = getUserIdAndToken(params);
		var re = "";
		$.ajax({
			type : "GET",
			url : URL,
			cache : false,
			async : false,
			dataType : 'json',
			// headers :getUserIdAndToken(),
			data : param
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			re = d;
		}).always(function() {
		});
		return re;
	};
	asCore.setGetFalseLogin = function(URL, params) {
		var re = "";
		$.ajax({
			type : "GET",
			url : URL,
			cache : false,
			async : false,
			dataType : 'json',
			// headers :getUserIdAndToken(),
			data : params
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			re = d;
		}).always(function() {
		});
		return re;
	};
	asCore.setPostFalse = function(URL, params) {
		var param = getUserIdAndToken(params);
		var re = "";
		$.ajax({
			type : "POST",
			url : URL,
			cache : false,
			async : false,
			dataType : 'json',
			data : param
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			re = d;
		}).always(function() {
		});
		return re;
	};
	function getUserIdAndToken(params) {
		params.token = localStorage.getItem("token");
		params.user = localStorage.getItem("userId");
		params.company_id = localStorage.getItem("company_id");
 		params.token = 'C7541A5D63BE67A68465D66DE555D688';
//		params.user = '18921619426';
//		params.company_id = '1047';
//		localStorage.setItem("company_id",'1064');
		params.token = 'C7541A5D63BE67A68465D66DE555D688';
		params.user = '18921619426';
		params.company_id = '1064';
		return params;
	};
	asCore.getWeiXinImage = function(mediaId) {
		var text;
		$.ajax({
			method : "GET",
			url : inface.getWeiXinImage,
			cache : false,
			async : false,
			data : {
				token : localStorage.getItem('token'),
				mediaId : mediaId,
			},
			success : function(data) {
				justep.Util.hint("图片上传成功");
			},
			"error" : function(msg) {
				layer.msg('图片上传失败!', {
					icon : 5
				});
			},
		});

		return text;
	}, function nextDate(CreateDate_Temp) {
		var curDate = new Date(CreateDate_Temp);
		var preDate = new Date(curDate.getTime() + 24 * 60 * 60 * 1000);
		var strDate = preDate.getFullYear() + "-";
		strDate += preDate.getMonth() + 1 >= 10 ? preDate.getMonth() + 1 + "-" : "0" + (preDate.getMonth() + 1) + "-"
		strDate += preDate.getDate() >= 10 ? preDate.getDate() : "0" + (preDate.getDate());
		return strDate;
	};
	function Previousday(CreateDate_Temp) {
		var curDate = new Date(CreateDate_Temp);
		var preDate = new Date(curDate.getTime() - 24 * 60 * 60 * 1000);
		var strDate = preDate.getFullYear() + "-";
		strDate += preDate.getMonth() + 1 >= 10 ? preDate.getMonth() + 1 + "-" : "0" + (preDate.getMonth() + 1) + "-"
		strDate += preDate.getDate() >= 10 ? preDate.getDate() : "0" + (preDate.getDate());
		return strDate;
	}
	;
	return asCore;
});