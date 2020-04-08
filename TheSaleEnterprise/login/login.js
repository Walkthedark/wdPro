define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/common/asCore");
	var inFace = require("$UI/TheSaleEnterprise/common/interfaceAdress");
	var MD5 = require('$UI/system/lib/base/md5');
	
	var Model = function() {
		this.callParent();
		md5 = new MD5();
	};

	// 图片路径转换
	Model.prototype.toUrl = function(url) {
		return url ? require.toUrl(url) : "";
	};

	Model.prototype.loginBtnClick = function(event) {
		// 登录
		var name = $(this.getElementByXid("username")).val();
		var pwd = $(this.getElementByXid("passwordInput")).val();
		var md5_pwd = md5.hex_md5(pwd);
		var accid = $(this.getElementByXid("password2")).val();
		var params={};
		params.username = name;
		params.password =md5_pwd;
		if (name && pwd) {
			//asCore.myLogin(name, pwd, accid);
			asCore.login(inFace.loginYz,params);
		} else {
			throw new Error("请输入用户名和密码")
		}
	};

	return Model;
});