define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var self = this;
	var asCore = function() {
		this.callParent();
		self = this;
	};
	asCore.JKIP = "http://www.shared123.cn";// 接口地址
	//asCore.JKIP = "http://www.f0xca.cn";// 接口地址
//	asCore.JKIP = "http://47.93.37.232";// 接口地址  

	asCore.toUrl = function(url) {// 图片路径转换
		return url ? require.toUrl(url) : "";
	};
	asCore.getIMGurl = function(photo, id, morenimg) {
		var src = "";
		if (photo != '' && photo != null && photo != '[]' && photo != 'null' && photo != 'undefined' && photo != undefined) {
			var imageJson = eval("(" + photo + ")");
			var realFileName = imageJson[0]["realFileName"];
			var storeFileName = imageJson[0]["storeFileName"];
			var ownerID = id;
			var operateType = "browse";
			var url = me.actionUrl + '?realFileName=' + realFileName + '&storeFileName=' + storeFileName + '&ownerID=' + ownerID;
			src = require.toUrl(url);
		} else {
			if (morenimg) {
				src = require.toUrl(morenimg);
			} else
				src = require.toUrl('$UI/masterGroup/img/9.png');
		}
		return src;
	}

	window.asCore = asCore;
	return asCore;
});
