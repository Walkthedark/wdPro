define(function(require) {
	var $ = require('jquery');
	require("cordova!cordova-plugin-device");
	var JPushInstance = function() {
		if (window.plugins && window.plugins.jPushPlugin) {
			document.addEventListener("deviceready", this.onDeviceReady.bind(this), false);
			document.addEventListener("jpush.openNotification", this.onOpenNotification.bind(this), false);
			document.addEventListener("jpush.receiveNotification", this.onReceiveNotification.bind(this), false);
			document.addEventListener("jpush.receiveMessage", this.onReceiveMessage.bind(this), false);
		}
	};
	
	//hcr 解决第一次获取失败的问题
	JPushInstance.prototype.getRegistrationID = function(){
		 var dtd = $.Deferred();
		 if (this.registrationID){
			 dtd.resolve(this.registrationID);
		 }else{
			 if (window.plugins && window.plugins.jPushPlugin){
				 window.plugins.jPushPlugin.getRegistrationID(function(registrationID) {
					 self.registrationID = registrationID;
					 if (self.registrationID){
						 dtd.resolve(self.registrationID);	 
					 }else{
						 dtd.reject();
					 }
				 });
			 }else{
				 dtd.reject();
			 }
		 }
		 return dtd.promise();
	};
	

	JPushInstance.prototype.onDeviceReady = function() {
		var self = this;
		window.plugins.jPushPlugin.init();
		window.plugins.jPushPlugin.getRegistrationID(function(registrationID) {
			self.registrationID = registrationID;
		});
		if (device.platform == "Android") {
			window.plugins.jPushPlugin.setDebugMode(false);
			window.plugins.jPushPlugin.setApplicationIconBadgeNumber(0);
		} else {
			window.plugins.jPushPlugin.setDebugMode(false);
			window.plugins.jPushPlugin.setApplicationIconBadgeNumber(0);
		}
	};

	JPushInstance.prototype.onOpenNotification = function(event) {
		var alertContent;
		var message;
		var id="";
		if (device.platform == "Android") {
			alertContent = window.plugins.jPushPlugin.openNotification.alert;
			message = window.plugins.jPushPlugin.receiveMessage.message;
			messageJson = (new Function("return " + message))();
			id=messageJson.id;
		} else {
			alertContent = event.aps.alert;
			
		}
		window.plugins.jPushPlugin.setApplicationIconBadgeNumber(0);
		//justep.Util.hint(alertContent);
		//获取到消息的id,然后跳转到相对应的页面
		if(id){
			var url = "$UI/elevatorSystem/infoNotice/dialog/dialog/jpushMessageRecord.w"
			justep.Shell.showPage(url,{data:id});
		}
	};

	JPushInstance.prototype.onReceiveNotification = function(event) {
		var alertContent;
        if(device.platform == "Android"){
        	alertContent = window.plugins.jPushPlugin.receiveNotification.alert;
        }else{
        	alertContent   = event.aps.alert;
        }
        window.plugins.jPushPlugin.setApplicationIconBadgeNumber(0);
		//justep.Util.hint(alertContent);
	};

	JPushInstance.prototype.onReceiveMessage = function() {
		var message;
        if(device.platform == "Android"){
       		 message = window.plugins.jPushPlugin.receiveMessage.message;
        }else{
              message   = event.content;
        }
        window.plugins.jPushPlugin.setApplicationIconBadgeNumber(0);
	};

	return new JPushInstance();
});