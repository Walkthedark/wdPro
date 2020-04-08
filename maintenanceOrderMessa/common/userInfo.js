define(function(require) {
	
	var id = "";//id
	var realName = "";//姓名
	var userName = "";//用户名
	var firstparty = "";//甲方单位
	var userMobile="";//手机号
	var pushChannelId = "";//推送渠道
	var opSign = "";//签名
	var lastAccessDate = "";//最后登录时间
	var pushUserId = "";//推送id
	var fn = {

			setId : function(v){ id = v; },
			getId : function() { return(id); },
			setRealName : function(v){ realName = v; },
			getRealName : function() { return(realName); },
			setFirstparty : function(v){ firstparty = v; },
			getFirstparty : function() { return(firstparty); },
			setUserName : function(v){ userName = v; },
			getUserName : function() { return(userName); },
			setUserMobile : function(v){ userMobile = v; },
			getUserMobile : function() { return(userMobile); },
			setPushChannelId : function(v){ pushChannelId = v; },
			getPushChannelId : function() { return(pushChannelId); },
			setopSign : function(v){ opSign = v; },
			getopSign : function() { return(opSign); },
			setLastAccessDate : function(v){ lastAccessDate = v; },
			getLastAccessDate : function() { return(lastAccessDate); },
			setPushUserId : function(v){ pushUserId = v; },
			getPushUserId : function() { return(pushUserId); },
			clear : function() {
				
				 id = "";//id
				 realName = "";//姓名
				 userName = "";//用户名
				 firstparty = "";//甲方单位
				 userMobile="";//手机号
				 pushChannelId = "";//推送渠道
				 opSign = "";//签名
				 lastAccessDate = "";//最后登录时间
				 pushUserId = "";//推送id
			},
			
			ifFlag:function(v){
				var text ="";
				if(v == 0){
					text ="否";
				}else if (v == 1){
					text ="是";
				}
				return text;
			}
		};
	
	return fn;
});