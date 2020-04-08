define(function(require) {

	var token="";
	var messageInterface = {
			//消息分类列表
			messageIfication : "http://www.shared123.cn/PushNews/getMenus",
			//消息列表
			getPushNews : "http://www.shared123.cn/PushNews/getPushNews",
			//消息阅读
			pushNewsRead : "http://www.shared123.cn/PushNews/read",	
			//新增推送消息
			addPushNews : "http://www.shared123.cn/PushNews/addApi",
			
		};
	
	return messageInterface;
});