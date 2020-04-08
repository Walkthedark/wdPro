define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	// 开发核心js
	var asCore = {};

	// '配置的URL请求'
	asCore.ServerURL = function() {
		return localStorage.getItem("ServerURL");
	};

	// +"配置服务名"
	asCore.ServerName = function() {
		return localStorage.getItem("ServerName");
	};
	asCore.ServerDB = function() {
		return localStorage.getItem("ServerDB");
	};
	asCore.search = function(array, type, value) {
		// if(!u.isArray(array)) throw new Error('第一个参数必须是数组类型');
		var arr = [];
		arr = array.filter(function(a) {
			// return a[type].toString().indexOf(value)!=-1;
			return a[type].toString() == value;
		});
		return arr;
	};
	asCore.search2 = function(array, type, value) {
		// if(!u.isArray(array)) throw new Error('第一个参数必须是数组类型');
		var arr = [];
		arr = array.filter(function(a) {
			// return a[type].toString().indexOf(value)!=-1;
			return a[type].toString() == value;
		});
		return arr;
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
	asCore.setlogin = function(URL, params) {
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
	asCore.getSupplier = function(URL, params) {
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
	function getUserIdAndToken(params) {
		params.token = localStorage.getItem("token");
		params.supplier_id = localStorage.getItem("supplier_id");
		params.company_id = localStorage.getItem("company_id");
		params.user = localStorage.getItem("user");
		return params;
	}
	return asCore;
});