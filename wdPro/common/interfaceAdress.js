define(function(require) {
	var fn = require("$UI/wdPro/common/interface");
	return {
		//-------------------main-----
		//clientList:fn.path+"/shop/client/index",//Michel
		clientList:fn.path+"/crm/client/index",//新接口:获取客户列表
		//获取新增客户的基本信息
		//getClientSearchData:fn.path+"/shop/client/getClientSearchData",//Micheal
		getClientSearchData:fn.path+"/crm/client/getClientSearchData",//新接口
		//获取企业
//		getTrade:fn.path+"/shop/client/getTrade",//Micheal
		getTrade:fn.path+"/crm/trade/index",//新接口
		//联系人列表
//		linkman:fn.path+"/shop/client/linkman",//Micheal
		linkman:fn.path+"/crm/contract/index",//新街口
		//新增客户
//		saveClient:fn.path+"/shop/client/save",//Micheal
		saveClient:fn.path+"/crm/client/add",//新接口
		//客户详情
//		clientDetail:fn.path+"/shop/client/clientDetail",//Micheal
		clientDetail:fn.path+"/crm/client/detail",//新接口
		//历史跟单数据///id
//		easyDocumentary:fn.path+"/shop/client_documentary/easyDocumentary",//Micheal
		easyDocumentary:fn.path+"/crm/documentary/simple",//新接口
		//汇报///id
//		report:fn.path+"/shop/report",//Micheal
		report:fn.path+"/crm/report/index",//新接口
		//获取用户标签
//		tagList:fn.path+"/shop/staff_tag/tagList",//Micheal
		tagList:fn.path+"/crm/tag/index",//新接口
		//保存
//		saveLinkman:fn.path+"/shop/client/saveLinkman",//Micheal
		saveLinkman:fn.path+"/crm/contract/add",//新接口
		//跟单
//		salesOrder:fn.path+"/shop/client_documentary/index",//Micheal
		salesOrder:fn.path+"/crm/documentary/index",//新接口
		//跟单商品
//		relation_goods:fn.path+"/shop/goods/relation_goods",//Micheal
		relation_goods:fn.path+"/sales/goods/relation",//新接口
		//获取客户下的联系人
//		simpleLinkman:fn.path+"/shop/Client/simpleLinkman",//Micheal
		simpleLinkman:fn.path+"/crm/contract/simple",//新接口
		//新增跟单
//		add:fn.path+"/shop/client_documentary/add",//Micheal
		add:fn.path+"/crm/documentary/add",
		//修改跟单
//		editDocumentary:fn.path+"/shop/client_documentary/edit",//Micheal
		editDocumentary:fn.path+"/crm/documentary/edit",//新接口
		//跟单详情
//		detail:fn.path+"/shop/client_documentary/detail",//Micheal
		detail:fn.path+"/crm/documentary/detail",
		//删除详情
//		del_documentary:fn.path+"/shop/client_documentary/del_documentary",//Micheal	
		del_documentary:fn.path+"/crm/documentary/remove",
		//删除详情
//		getStage:fn.path+"/shop/client_documentary/stage",//micheal
		//getStage:fn.path+"/crm/documentary/stage",//
		//我的汇报
//		my_report:fn.path+"/shop/report/my_report",//Micheal
		my_report:fn.path+"/crm/report/my_report",//
		//抄送我的汇报
//		cc_mine_report:fn.path+"/shop/report/cc_mine_report",//Micheal
		cc_mine_report:fn.path+"/crm/report/cc_mine_report",//新接口
		//其他人的汇报
//		other_report:fn.path+"/shop/report/other_report",//Micheal
		other_report:fn.path+"/crm/report/other_report",//新接口
		//其他人的汇报
//		report_detail:fn.path+"/shop/report/report_detail", Micheal
		report_detail:fn.path+"/crm/report/report_detail",//新接口
		//评论
//		commentList:fn.path+"/shop/report/comment",Micheal
		commentList:fn.path+"/crm/report/comment",//新接口
		//评论
//		likesD:fn.path+"/shop/report/likes",//Micheal
		likesD:fn.path+"/crm/report/likes",//新接口
		//员工列表
		StaffEasy:fn.path+"/crm/Staff/easy",
		//部门列表
		Department:fn.path+"/crm/Department/all",
		//部门列表
		addWork:fn.path+"/crm/report/add",
		//登录
//		login:fn.path+"/crmwx/Wx/login",
		login:fn.path+"/crmwx/Wx/login",
		//签名
		getSignPackage:fn.path+"/crmwx/Wx/getSignPackage",
		//外部联系人签名
		getjssdk:fn.path+"/crmwx/Wx/getjssdk",
		//上传照片
		downloadImage:fn.path+"/Wx/downloadImage",
		//最近生日
		brithContract:fn.path+"/crm/contract/brithContract",
		//删除客户
		removeClientList:fn.path+"/crm/client/remove",
		//客户详情关联现有的客户
		clientRelevanceAdd:fn.path+"/crm/client/clientRelevance",
		//客户详情里面关联现有的联系人
		relationContract:fn.path+"/crm/contract/relation",
		//客户解除关联客户
		removeClient:fn.path+"/crm/client/removeClient",
		//联系人详情
		contactDetail:fn.path+"/crm/contract/detail",
		//联系人解除客户
		removeRelevancel:fn.path+"/crm/client/removeRelevance",
		//联系人关联客户
		addRelationClient:fn.path+"/crm/client/relationClient",
		relationClient:fn.path+"/crm/client/addRelationClient",
		//删除联系人
		removeLinkManw:fn.path+"/crm/contract/remove",
		//修改联系人
		editLinkMan:fn.path+"/crm/contract/edit",
		//修改客户
		editClientInfo:fn.path+"/crm/client/edit",
		//获取跟单阶段
		getStage:fn.path+"/crm/stage/index",
		//客户里面新增联系人
		addReletionContract:fn.path+"/crm/contract/addReletionContract",
		//业务经理列表
//		staffeasy:fn.path+"/crm/staff/easy",
		staffeasy:fn.path+"/crm/staff/easypage",
		//联系人数据多的
		//linkman:fn.path+"/shop/client/linkman",
		uploadImage:fn.path+"/crm/report/uploadImage",
		//上传文件
		uploadAccessory:fn.path+"/crm/report/uploadAccessory",
	};

});