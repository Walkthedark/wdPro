define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	// require("http://res.wx.qq.com/open/js/jweixin-1.4.0.js");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var Model = function() {
		this.callParent();
	};
	var self = this;
	Model.prototype.button1Click = function(event) {
		var a = "http://test.shared123.cn/image/20200326/4a181266b35bb49d28131f7785a395a6.png";
		var b= a.split("/");
		console.log(b.pop())
//		wx.invoke('selectExternalContact', {
//			"filterType" : 0, // 0表示展示全部外部联系人列表，1表示仅展示未曾选择过的外部联系人。默认值为0；除了0与1，其他值非法。在企业微信2.4.22及以后版本支持该参数
//		}, function(res) {
//			alert(res.err_msg);
//			if (res.err_msg == "selectExternalContact:ok") {
//				userIds = res.userIds; // 返回此次选择的外部联系人userId列表，数组类型
//				alert(userIds);
//			} else {
//				// 错误处理
//			}
//		});
	};
	Model.prototype.delData = function(event) {
		var flag = true;
		var file = event.target.files[0];
		var fileReader = new FileReader();
		console.log(file);
		var formData = new FormData();
		if(file.type.substring(0,5) =='image'){
			formData.append('image', file);
			flag =true;
		}else{
			formData.append('accessory', file);
			flag =false;
		}	
//		formData.append('token', 'C7541A5D63BE67A68465D66DE555D688');
//		formData.append('user', '18921619426');
//		formData.append('company_id', '1064');
		formData.append('token', localStorage.getItem("token"));
		formData.append('user', localStorage.getItem("userId"));
		formData.append('company_id',  localStorage.getItem("company_id"));
		$.ajax({
			url : flag?interFace.uploadImage:interFace.uploadAccessory, // 请求的接口地址
			type : 'POST',
			cache : false, // 上传文件不需要缓存
			data : formData,
			processData : false, // 不要去处理发送的数据
			contentType : false, // 不要去设置Content-Type请求头
			success : function(data) {
			},
			error : function(err) {
				console.log(err)
			}
		})

		fileReader.readAsArrayBuffer(file);
	};

	Model.prototype.convertBase64UrlToBlob = function(urlData, filetyp) {
		var bytes = window.atob(urlData.split(',')[1]);
		// 处理异常,将ascii码小于0的转换为大于0
		var ab = new ArrayBuffer(bytes.length);
		var ia = new Int8Array(ab);
		var i;
		for (i = 0; i < bytes.length; i++) {
			ia[i] = bytes.charCodeAt(i);
		}
		return new Blob([ ab ], {
			type : filetype
		});
	};

	Model.prototype.uploadImage = function(blob) {
		console.log();
	};
	return Model;
});