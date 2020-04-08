define(function(require) {
	var fn = require("$UI/maintenanceOrderMessa/common/interface");
	return {
		//-------------------main-----
		//验证是否绑定
		wy_loginYz:fn.path+"/WeiXin/wy_login",
		//登录绑定/
		wy_login:fn.path+"/Index/wy_login?module=index",
		//------------------维保计划-----
		getplanRdo:fn.path+"/owner.php/MaintainPlan/getplanRdo",//获取保养计划列表
		model:fn.path+"/owner.php/MaintainContent/module",//
		getplanRdo2:fn.path+"/owner.php/MaintainPlan/getplanRdo2",//获取保养计划列表
		//获取保养总条数
		getMonthNum:fn.path+"/owner.php/MaintainPlan/getMonthNun",
		//获取年检信息
		getYearChecking:fn.path+"/owner.php/YearChecking/search?state=5&isGetCard=1",
		//------------------维修工单------------
		//获取已经完成的维修工单
		getHitch:fn.path+"/owner.php/MaintenanceHitch/getHitch?type=4",
		//获取维修工单的配件
		getAccessorie:fn.path+"/owner.php/MaintenanceHitch/Accessories",
		//保养单
		getMissionSingle:fn.path+"/owner.php/MaintainPlan/getMissionSingle",
		//签名维修
		addopSign:fn.path+"/owner.php/MaintenanceHitch/addopSign",
		apiReplaceHistory : fn.path + "/MaterialPurchasingRequisition/apiReplaceHistory",//更换配件历史
		//物业端
		apiReplaceHistory : fn.path + "/owner.php/MaintenanceHitch/apiReplaceHistory",
		//保养维修
		PlanaddopSign:fn.path+"/owner.php/MaintainPlan/addopSign",
		//评价
		SaveHitch:fn.path+"/owner.php/MaintenanceHitch/SaveHitch",
		//评价
		confirmAll:fn.path+"/owner.php//MaintainPlan/confirmAll",
		//电梯报修
		getBaoXiu:fn.path+"/owner.php/MaintenanceHitch/getHitch?type=5",
		//报修审核
		spHitch:fn.path+"/owner.php/MaintenanceHitch/spHitch",
		//电梯档案
		searchHitch:fn.path+"/owner.php/MaintainElevator/search",
		//新增故障报修
		addHitch:fn.path+"/owner.php/MaintenanceHitch/addHitch",
		//common 获取
		getPermissions:fn.path+"/owner.php/BaseData/GNAccess",//查看权限
		//
		getWeiXinImage:fn.path+"/owner.php/WeiXinQiYe/downloadImage",//下载微信服务器中的照片
		getCommonUp:fn.path+"/owner.php/File/add",//公共接口上传照片
		getOnlyImgUp:fn.path+"/owner.php/UploadFile/search",//单独获取照片
		getCommonImg:fn.path+"/owner.php/File/select",//公共接口获取照片
		upOnlyImg:fn.path+"/owner.php/UploadFile/addApi",//单独接口上传照片
		// 微信验证
		getSignPackage : fn.path + "/WeiXin/getSignPackage",
		// 报修单最详细信息
		apiGetMoreData : fn.path + "/owner.php/MaintenanceHitch/apiGetMoreData",
		
	};

});