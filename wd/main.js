define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/js/asCore");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button1Click = function(event) {
		var ServerURL = this.comp("nameInput").val();
		var ServerName = this.comp("servernameInput").val();
		var ServerDB = this.comp("dataBaseInp").val();
		var ServerURL = "http://61.129.51.183:8880";// 测试数据，正式时注销
		var ServerName = "ZDynW"; // 测试数据，正式时注销
		if (ServerURL && ServerName) {
			localStorage.setItem("ServerURL", ServerURL);
			localStorage.setItem("ServerName", ServerName);
			localStorage.setItem("ServerDB", ServerDB);
			asCore.myGetServer();
		} else {
			throw new Error("请设置服务器地址和服务器名称")
		}
	};

	Model.prototype.buttoqweqwen1Click = function(event) {
		// 第一步,获取服务器信息
		$.ajax({
			type : 'post',
			url : 'http://61.129.51.183:7070/ZDynW/loginMB',
			data : JSON.stringify({
				ds : 'default', // 配置的数据源
				flag : '0',// 配置的运行标志
			}),
			dataType : 'json',
			contentType : 'application/json;charset=UTF-8',
			crossDomain : true,
			cache : false,
			async : false
		}).fail(function(jqXHR, textStatus, errorThrown) {
			debugger
			// 异常错误处理
		}).done(function(d) {
			debugger
			if (d) {
				if (d.code > 0) {
					// 成功，d.value 为成功后的信息
					loginSucc(d.value); // 成功后调用
					// 成功后转入首页
				} else {
					// 失败
					// 直接进入配置界面
				}
			} else {
				// 异常错误处理
			}
		}).always(function() {
		});
	};

	Model.prototype.button2Click = function(event) {
		debugger
		var dd = JSON.stringify({
			ds : 'default', // 配置的数据源
			flag : '0',// 配置的运行标志
		});
		justep.Baas.sendRequest({
			"url" : "/YUI/YUI",
			"action" : "myAjax",
			"async" : false,
			"params" : {
				url : 'http://61.129.51.183:7070/ZDynsever/loginMB',
				param1 : dd
			},
			"success" : function(data) {
				debugger
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		// 缓存，自动填充 服务器地址和名称
		var ServerURL = asCore.ServerURL();
		if (ServerURL) {
			this.comp("nameInput").val(ServerURL);
		}
		var ServerName = asCore.ServerName();
		if (ServerName) {
			this.comp("servernameInput").val(ServerName);
		}
		var ServerDB = asCore.ServerDB();
		if (ServerName) {
			this.comp("dataBaseInp").val(ServerDB);
		}
	};

	return Model;
});