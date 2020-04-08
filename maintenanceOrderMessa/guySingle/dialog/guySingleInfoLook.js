define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var permissions = require("$UI/maintenanceOrderMessa/common/permissions");
	var fn = require("$UI/maintenanceOrderMessa/common/requestServer");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var wx = require("https://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.okBtnClick = function(event) {
		var params = {
			"id" : this.id,
			"flag":0,
			data : {
				method : this
			}
		};
		justep.Shell.showPage("signature", params);
	};

	Model.prototype.resetBtnClick = function(event) {

	};
	// 参数接受事件
	Model.prototype.modelParamsReceive = function(event) {
		// 获取参数信息
		this.id = this.params.id;
		// hithData.newData({
		// defaultValues : [ rowData ]
		// });
		var params = {};
		params.id = this.id;
		params.token = localStorage.getItem("token");
		this.refashData(params, false);
		this.getImageList(event);
	};
	Model.prototype.refashData = function(params, refash) {
		var data = fn.requestGet(inface.getHitch, params, false, "维修工单");
		var hithData = this.comp("hithData");
		hithData.loadData(data.data);
		hithData.refreshData();
		// 更换配件getAccessorie
		if (hithData.getValue("is_pj") == 1) {
			var data2 = fn.requestGet(inface.getAccessorie, params, false, "配件清单");
			if (data2.error == 0) {
				var Accessories = this.comp("Accessories");
				Accessories.loadData(data2.data);
				Accessories.refreshData();
			}
		}
	};
	// 获取图片
	Model.prototype.getImageList = function(event) {
		var imageList = this.comp("imageList");
		imageList.loadData(permissions.getCommonImg(this.id, "hitch", false));
		imageList.refreshData();
	};
	Model.prototype.output13Render = function(event) {
		var liftIDNo = event.bindingContext.$object.row.liftIDNo.value.latestValue;
		var model = event.value;
		event.html = this.isNull(model) + "&nbsp;" + "|" + "&nbsp" + this.isNull(liftIDNo);
	};
	Model.prototype.output2Render = function(event) {
		var accessories = event.bindingContext.$object.row.accessories.value.latestValue;
		var num = event.bindingContext.$object.row.num.value.latestValue;
		var unit = event.bindingContext.$object.row.unit.value.latestValue;
		var date = event.value;
		event.html = this.isNull(date) + "&nbsp;" + this.isNull(accessories) + "&nbsp;数量：" + this.isNull(num) + this.isNull(unit);

	};
	Model.prototype.isNull = function(data) {
		var val;
		if (data == "null" || data == null) {
			val = "";
		} else {
			val = data;
		}
		return val;
	};
	// 调取页面
	Model.prototype.refashGetParent = function(event) {
		var params = {};
		params.id = this.id;
		params.token = localStorage.getItem("token");
		this.refashData(params, false);
		
	};
//	//页面测试
//	Model.prototype.modelActive = function(event){
//		this.params.data.method.refashGetParent(event);
//	};
	//填写评价
	Model.prototype.evaluationBtnClick = function(event){
		//获取电梯id
		var elevatorId = this.comp("hithData").getValue("elevatorId");
			var params = {
			"id" : this.id,
			"elevatorId":elevatorId,
			data : {
				method : this
			}
		};
		justep.Shell.showPage("evaluation", params);
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

	return Model;
});