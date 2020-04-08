define(function(require) {
	var wx = require("https://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var me= this;
	var images = window.images = {
		localId : [],
		serverId : [],
		baseDateId : []
	};
	var fn = {
			chooseImage : function() {
			wx.chooseImage({
				success : function(res) {
					images.localId = res.localIds;
					XianShiImage();
				}
			});
		}
	};
	 function XianShiImage(){
		var me=this;
		var i = 0, length = images.localId.length;
		//var imagedata=me.comp("snImageData");
		images.serverId = [];
		function upload() {
			wx.getLocalImgData({
				localId : images.localId[i],
				success : function(res) {
					i++;
					var localData = res.localData;
					images.baseDateId.push(res.localData);
					if (i < length) {
						upload();
					}	
				},
				fail : function(res) {
					alert(JSON.stringify(res));
				}
			});
		}
		upload();
	};
	return fn;
});