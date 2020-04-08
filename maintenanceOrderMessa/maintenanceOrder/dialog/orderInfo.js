define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var permissions = require("$UI/maintenanceOrderMessa/common/permissions");
	var interfaceNo = require("$UI/maintenanceOrderMessa/common/interface");
	var fn = require("$UI/maintenanceOrderMessa/common/requestServer");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var wx = require("https://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var Model = function(){
		this.callParent();
		this.id;
			this.filterValue="半月保";
		this.elevatorId;
	};

	Model.prototype.resetBtnClick = function(event){

	};
	Model.prototype.geturlImg = function(url) {
		return interfaceNo.path + url;
	};
	Model.prototype.okBtnClick = function(event){
		var params = {
			"id" : this.id,
			"flag":1,
			data : {
				method : this
			}
		};
		//justep.Shell.showPage("signature", params);
		this.comp("signlewinDialog").open({"data":params});
	};
	//参数接受事件
	Model.prototype.modelParamsReceive = function(event){
		this.id = this.params.id;
		// 调取接口获取
		var params = {};
		params.token = localStorage.getItem("token");
		params.id = this.id;
		var data = fn.requestGet(inface.getplanRdo, params, false, "保养计划详细");
		var hithData = this.comp("hithData");
		hithData.loadData(data.data);
		hithData.refreshData();
		this.elevatorId = this.comp("hithData").getValue("elevatorId");
		//获取保养单
	//	this.getMissionSingle(event);
		//获取图片
		this.getImageList(event);
		//保养模块
		this.getModel(event);
		//获取配件
		this.getaccessList(event);
	};
	Model.prototype.getaccessList = function(event) {
		// AccessoriesApi
		var self = this;
		var historyParData = this.comp("historyParData");
		var historySonMaterialData = this.comp("historySonMaterialData");

		var param = {};
		param.plan_id = this.id;
		param.token = localStorage.getItem("token");
		$.ajax({
			method : "GET",
			url : inface.apiReplaceHistory,
			cache : false,
			async : true,
			data : param,
			success : function(data) {
				if (data.error == 0) {
					// 加载数据
					historyParData.loadData(data.data.history, false);
					historySonMaterialData.loadData(data.data.material_detail, false);

				}
			},
			"error" : function(msg) {
			},
		});
		
	};
	
	Model.prototype.getModel = function(event) {
		//获取过滤条件
		this.getfilterValue(event);
		var aid = this.comp("hithData").getValue("id");
		
		var self = this;
		$.ajax({
			method : "GET",
			url : interfaceNo.path+"/owner.php/MaintainContent/module",
			cache : false,
			async : true,
			data : {
				token : localStorage.getItem("token"),
				maintenanceType : this.filterValue,
				elevatorID : this.elevatorId,
				aid:aid
			},
			success : function(data) {
				console.log(data);
				//
				if (data.success) {
					self.comp("modelData").loadData(data.data, false);
					self.comp("modelData").refreshData();
					var obj = data.maintenancePart;
					var params = [];
					var item1 = {};
					item1.id = justep.UUID.createUUID();
					item1.name = "全部";
					item1.length = self.comp("modelData").getCount();
					params.push(item1);
					for ( var p in obj) {
						var item = {};
						item.id = justep.UUID.createUUID();
						item.name = p;
						item.length = obj[p];
						params.push(item);
						console.log(item);
					}
					self.comp("Handraildata").loadData(params, false);
					self.comp("Handraildata").refreshData();

				}
			},
			"error" : function(msg) {
				layer.msg(alert + '信息加载失败');
			},
			"complete" : function(XMLHttpRequest, status) {
				if (status == 'timeout') {
					Ajax.abort();
					layer.msg(alert + '信息加载失败');

				}
			}
		});
		
		
	};
	//获取过滤条件
	Model.prototype.getfilterValue = function(event) {
		var hithData = this.comp("hithData");
		var quarterSNShow = hithData.getValue("quarterSNShow");// 这个是季度
		var halfyearSNShow = hithData.getValue("halfyearSNShow");// 这个是半年
		var yearSNShow = hithData.getValue("yearSNShow");// 这个是年
		if (yearSNShow == null || yearSNShow == "") {
			if (halfyearSNShow == null || halfyearSNShow == "") {
				if (quarterSNShow == null || quarterSNShow == "") {
				}else{
					this.filterValue = "季度保,半月保";
					$(this.getElementByXid("button12")).removeClass("btn-link");
					$(this.getElementByXid("button12")).removeClass("tc-btn-color");
					$(this.getElementByXid("button12")).addClass("btn-danger");
				}
			} else {
				this.filterValue = "半年保,季度保,半月保";
				// 移除
				$(this.getElementByXid("button12")).removeClass("btn-link");
				$(this.getElementByXid("button12")).removeClass("tc-btn-color");
				$(this.getElementByXid("button12")).addClass("btn-danger");
				$(this.getElementByXid("button13")).removeClass("btn-link");
				$(this.getElementByXid("button13")).removeClass("tc-btn-color");
				$(this.getElementByXid("button13")).addClass("btn-danger");
			}
		} else {
			this.filterValue = "年保,半年保,季度保,半月保";
			// 移除
			$(this.getElementByXid("button12")).removeClass("btn-link");
			$(this.getElementByXid("button12")).removeClass("tc-btn-color");
			$(this.getElementByXid("button12")).addClass("btn-danger");
			$(this.getElementByXid("button13")).removeClass("btn-link");
			$(this.getElementByXid("button13")).removeClass("tc-btn-color");
			$(this.getElementByXid("button13")).addClass("btn-danger");
			$(this.getElementByXid("button14")).removeClass("btn-link");
			$(this.getElementByXid("button14")).removeClass("tc-btn-color");
			$(this.getElementByXid("button14")).addClass("btn-danger");
		}
	
	};
// 获取图片
	Model.prototype.getImageList = function(event) {
		var imageList = this.comp("imageList");
		imageList.loadData(permissions.getCommonImg(this.id, "keep_arrange", false));
		imageList.refreshData();
	};
	Model.prototype.getMissionSingle = function(event) {
		var params = {};
		params.aid=this.id;
		params.token = localStorage.getItem("token");
		var data = fn.requestGet(inface.getMissionSingle, params, false, "保养计划详细");
		var quarterData = this.comp("quarterData");
		var standardData = this.comp("standard");
		standardData.loadData(data.data.standard);
		standardData.refreshData();
		
	};
	
	//打开评价页面
	Model.prototype.planEvaluationBtnClick = function(event){
		var params = {
			"id" : this.id,
			data : {
				method : this
			}
		};
		//justep.Shell.showPage("planEvaluation", params);
		this.comp("windowDialog2").open({"data":params});
	};
	Model.prototype.refashGetParent = function(event) {
		var params = {};
		params.token = localStorage.getItem("token");
		params.id = this.id;
		var data = fn.requestGet(inface.getplanRdo, params, false, "保养计划详细刷新");
		var hithData = this.comp("hithData");
		hithData.loadData(data.data);
		hithData.refreshData();
		
	};
	Model.prototype.image1Click = function(event){
		var extension = event.bindingContext.$object.row.extension.value.latestValue;
		var url = event.bindingContext.$object.row.newUrl.value.latestValue;
		if (extension.toUpperCase() == "PNG" || extension.toUpperCase() == "JPG" || extension.toUpperCase() == "JIF" || extension.toUpperCase() == "BMP") {
			wx.previewImage({
				current : url, // 当前显示图片的http链接
				urls : [url]
			// 需要预览的图片http链接列表
			});
		} else {
			layer.msg("只有图片可以点击预览");
		}
	};
	Model.prototype.button2Click = function(event){
		var name = event.bindingContext.$object.row.name.value.latestValue;
		var seachValue = "";
		if (name == "全部") {
			seachValue = "";
		} else {
			seachValue = "$row.val(" + "\"" + "maintenancePart" + "\"" + ")==" + "\"" + name + "\"";
		}
		this.comp("list4").set({
			"filter" : seachValue
		});
		this.comp("list4").refresh();
	};
	Model.prototype.image3Click = function(event){

	};
	
	return Model;
});