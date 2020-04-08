define(function(require) {
	var $ = require("jquery");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var server = require("$UI/maintenanceOrderMessa/common/interface");
	var justep = require("$UI/system/lib/justep");
	require("css!$UI/maintenanceOrderMessa/common/layer/skin/default/layer").load();
	require("$UI/maintenanceOrderMessa/common/layer/layer");
	
	var self = this;
	var fn = {
		getPermissions : function(access) {
			var text = "";
			$.ajax({
				method : "GET",
				url :inface.getPermissions,
				cache : false,
				async : false,
				data : {
					token : localStorage.getItem('token'),
					access : access
				},
				success : function(data) {
					text = data.error;
				},
				"error" : function(msg) {
					layer.msg('获取权限失败!', {
						icon : 5
					});
				},
			});

			return text;
		},
		getWeiXinImage : function(mediaId,sqlName,id,flag) {
			var text ;
			$.ajax({
				method : "GET",
				url : inface.getWeiXinImage,
				cache : false,
				async : false,
				data : {
					token : localStorage.getItem('token'),
					mediaId : mediaId
				},
				success : function(data) {
					if(data.error == 0){
						if(flag==1){
							//这个是走公共的上传附件的接口//这里的sqlname是表明
							text=fn.getCommonUp(data.data.url,data.data.name,data.data.size,sqlName,id);	
						}else{
							//这个是走自己单独的上传附件的接口//这里的sqlname是数字//url,name,size,sqlName,id
							text=fn.upOnlyImg(data.data.url,data.data.name,data.data.size,sqlName,id);
						}
						
					}			
				},
				"error" : function(msg) {
					layer.msg('图片上传失败!', {
						icon : 5
					});
				},
			});

			return text;
		},
		//公共的接口
		getCommonUp : function(url,name,size,sqlName,id) {
			//alert("123");
			var res;
			$.ajax({
				method : "POST",
				url : inface.getCommonUp+'?token='+localStorage.getItem('token'),
				cache : false,
				async : false,
				data : {
					url:url,//图片路径
					size:size,//图片大小
					filename:name,//图片名称
					uploadUser:localStorage.getItem("userName"),
					uploadUser_id:localStorage.getItem("userId"),
					extension:'jpg',
					source:'相册',
					sqlName:sqlName,
					catenateId:id
				
				},
				success : function(data) {
					res=data;
					
				},
				"error" : function(msg) {
					layer.msg('获取权限失败!', {
						icon : 5
					});
				},
			});
			return res;
		},
		
		//从单独的接口获取照片
		getOnlyImgUp : function(id,type) {
			var res;
			 $.ajax({
				"url" : inface.getOnlyImgUp,
				"type" : 'GET',
				cache : false,
				"async" : false,
				"dataType" : 'json',
				"timeout" : 5000,
				"data" : {
					"token" : localStorage.getItem('token'),
					"PID" : id,
					"isType" : type
				},
				"success" : function(data) {
					$.bootstrapLoading.end();
					res=data;
				},
				"error" : function(msg) {
					layer.msg('刷新附件清单失败', {
						icon : 5
					});
				},
				"complete" : function(XMLHttpRequest, status) {
					if (status == 'timeout') {
						Ajax.abort();
						layer.msg('刷新附件清单失败', {
							icon : 5
						});
					}
				}
			});
			return res;
		},
		//从公共的的接口获取照片
		getCommonImg : function(id,sqlName,asyncT) {
			var res;
			 $.ajax({
				"url" : inface.getCommonImg,
				"type" : 'GET',
				cache : false,
				"async" : asyncT,
				"dataType" : 'json',
				"timeout" : 5000,
				"data" : {
					"token" : localStorage.getItem('token'),
					"id" : id,
					"name" : sqlName
				},
				"success" : function(data) {
					res = fn.getNewUrl(data.data);
				},
				"error" : function(msg) {
					layer.msg('刷新附件清单失败', {
						icon : 5
					});
				},
				"complete" : function(XMLHttpRequest, status) {
					if (status == 'timeout') {
						Ajax.abort();
						layer.msg('刷新附件清单失败', {
							icon : 5
						});
					}
				}
			});
			return res;
		},
		getNewAddressUrl : function(data) {
			var ImgList = [];
			if (data != "" && data != "undefined" && data != "null" && typeof (data) != "undefined") {
				for (var i = 0; i < data.length; i++) {
					var params = {};
					params.id = data[i].id;
					params.fileName = data[i].fileName;
					var nameNew=(data[i].fileName+"").toString();
					var uploadAddress = data[i].address;
					var newUrl = "";
					var extension = data[i].extension;
					params.filesize = data[i].fileSize;
					params.uploadPeople = data[i].user;
					params.extension = data[i].extension;
					params.newName = nameNew.substring(nameNew.length-10,nameNew.length);
					if (uploadAddress.indexOf("http") >= 0) {
						if (extension.toUpperCase() == "PNG" || extension.toUpperCase() == "JPG" || extension.toUpperCase() == "JIF" || extension.toUpperCase() == "BMP")
							newUrl = uploadAddress;
					//	newName=
						else if (extension.toUpperCase() == "XLS" || extension.toUpperCase() == "XLSX")
							newUrl = this.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Excel.png");
						else if (extension.toUpperCase() == "DOC" || extension.toUpperCase() == "DOCX")
							newUrl = this.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Word.png");
						else if (extension.toUpperCase() == "POWERPOINT")
							newUrl = this.getImageUrl("$UI/maintenanceOrderMessa/img/Office/PowerPoint.png");
						else
							newUrl = this.getImageUrl("$UI/maintenanceOrderMessa/img/Office/UnKnow.png");
					} else {
						if (extension.toUpperCase() == "PNG" || extension.toUpperCase() == "JPG" || extension.toUpperCase() == "JIF" || extension.toUpperCase() == "BMP"){
							newUrl = server.path + uploadAddress;
							uploadAddress = server.path + uploadAddress;		
						}
						else if (extension.toUpperCase() == "XLS" || extension.toUpperCase() == "XLSX")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Excel.png");
						else if (extension.toUpperCase() == "DOC" || extension.toUpperCase() == "DOCX")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Word.png");
						else if (extension.toUpperCase() == "POWERPOINT")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/PowerPoint.png");
						else if (extension.toUpperCase() == "TXT")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/filetxt.png");
						else
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/UnKnow.png");
						
					}
					params.uploadAddress = uploadAddress;
					params.newUrl = newUrl;
					ImgList.push(params);
				}
			}
			return ImgList;
			
		},
		//获取公共接口的路径
		getNewUrl : function(data) {
			var ImgList = [];
			if (data != "" && data != "undefined" && data != "null" && typeof (data) != "undefined") {
				
				for (var i = 0; i < data.length; i++) {
					var params = {};
					
					params.id = data[i].id;
					
					params.filename = data[i].filename;
					var url = data[i].url;
					var nameNew=(data[i].filename+"").toString();
					var newUrl = "";
					var extension = data[i].extension;
					params.size = data[i].size;
					params.uploadUser = data[i].uploadUser;
					params.extension = data[i].extension;
					params.uploadDate = data[i].uploadDate;
					params.source = data[i].source;
					params.catenateId = data[i].catenateId;
					params.newName = nameNew.substring(nameNew.length-10,nameNew.length);
					if (url.indexOf("http") >= 0) {
						if (extension.toUpperCase() == "PNG" || extension.toUpperCase() == "JPG" || extension.toUpperCase() == "JIF" || extension.toUpperCase() == "BMP")
							newUrl = url;
						else if (extension.toUpperCase() == "XLS" || extension.toUpperCase() == "XLSX")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Excel.png");
						else if (extension.toUpperCase() == "DOC" || extension.toUpperCase() == "DOCX")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Word.png");
						else if (extension.toUpperCase() == "POWERPOINT")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/PowerPoint.png");
						else if (extension.toUpperCase() == "TXT")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/filetxt.png");
						else
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/UnKnow.png");
					} else {
						if (extension.toUpperCase() == "PNG" || extension.toUpperCase() == "JPG" || extension.toUpperCase() == "JIF" || extension.toUpperCase() == "BMP"){
							newUrl = server.path + url;
							url = server.path + url;
						}	
						else if (extension.toUpperCase() == "XLS" || extension.toUpperCase() == "XLSX")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Excel.png");
						else if (extension.toUpperCase() == "DOC" || extension.toUpperCase() == "DOCX")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/Word.png");
						else if (extension.toUpperCase() == "POWERPOINT")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/PowerPoint.png");
						else if (extension.toUpperCase() == "TXT")
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/filetxt.png");
						else
							newUrl = fn.getImageUrl("$UI/maintenanceOrderMessa/img/Office/UnKnow.png");			
					}
					params.url = url;
					params.newUrl = newUrl;
					ImgList.push(params);
				}
			}
			return ImgList;
			
		},//图片本地路径
		getImageUrl : function(url) {
			return require.toUrl(url);
		},
		upOnlyImg : function(url,name,size,sqlName,id) {
			var res;
			$.ajax({
				method : "POST",
				url : inface.upOnlyImg + '?token='+localStorage.getItem('token'),
				cache : false,
				async : false,
				data : {
					PID:id,//图片路径
					fileSize:size,//图片大小
					fileName:name,//图片名称
					user:localStorage.getItem("userName"),
					user_id:localStorage.getItem("userId"),
					dateFile:justep.Date.toString(new Date(), 'yyyy-MM-dd'),//文档创建时间	
					date:justep.Date.toString(new Date(), 'yyyy-MM-dd'),//文件上传时间
					address:url,
					extension:'jpg',
					isType:sqlName
				
				},
				success : function(data) {
					res=data;
					
				},
				"error" : function(msg) {
					layer.msg('获取权限失败!', {
						icon : 5
					});
				},
			});
			return res;
		},
	};
	return fn;
});
