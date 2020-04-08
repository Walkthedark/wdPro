define(function(require) {
	var $ = require("jquery");
	var loading = require("$UI/maintenanceOrderMessa/common/loading/loading");	
	//var async = false;//第三个参数默认值就是true,表示异步；false表示同步
	var fn = {
		requestGet : function(url, params,asyncT,alert) {
			loading.loadingStart5();
			var text = "";
			$.ajax({
				method : "GET",
				url : url,
				cache : false,
				async : asyncT,
				data : params,
				success : function(data) {
					loading.loadingEnd();
					text = data;		
				},
				"error" : function(msg) {
					loading.loadingEnd();
					layer.msg(alert+'信息加载失败');
				},
				"complete" : function(XMLHttpRequest, status) {
					loading.loadingEnd();
					if (status == 'timeout') {
						Ajax.abort();
						layer.msg(alert+'信息加载失败');

					}
				}
			});

			return text;
		},
		requestPost : function(url, params,asyncT,alert) {
			loading.loadingStart5();
			var text = "";
			$.ajax({
				method : "POST",
				url : url+"?token="+localStorage.getItem("token"),
				cache : false,
				async : asyncT,
				data : params,
				success : function(data) {
					loading.loadingEnd();
					text = data;
				},
				"error" : function(msg) {
					loading.loadingEnd();
					layer.msg(alert+'信息加载失败');

				},
				"complete" : function(XMLHttpRequest, status) {
					loading.loadingEnd();
					if (status == 'timeout') {
						Ajax.abort();
						layer.msg(alert+'信息加载失败');

					}
				}
			});

			return text;
		},
		requestLogin : function(url, params,asyncT,alert) {
			loading.loadingStart5();
			var text = "";
			$.ajax({
				method : "POST",
				url : url,
				cache : false,
				async : asyncT,
				data : params,
				success : function(data) {
					loading.loadingEnd();
					text = data;
				},
				"error" : function(msg) {
					loading.loadingEnd();
					layer.msg(alert+'信息加载失败');

				},
				"complete" : function(XMLHttpRequest, status) {
					loading.loadingEnd();
					if (status == 'timeout') {
						Ajax.abort();
						layer.msg(alert+'信息加载失败');

					}
				}
			});

			return text;
		},
	};
	return fn;
});
