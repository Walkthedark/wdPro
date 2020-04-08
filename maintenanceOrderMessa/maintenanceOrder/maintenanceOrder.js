define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var fn = require("$UI/maintenanceOrderMessa/common/requestServer");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var common = require("$UI/maintenanceOrderMessa/common/common");	
	var Model = function(){
		this.callParent();
		this.status = 1;
		this.page = 1;
		this.pageTotal = 0;
	};
	//详细信息
	Model.prototype.tenPlanInfoDIvClick = function(event){
		var id = event.bindingContext.$object.row.id.value.latestValue;
		var params = {
            "id": id,
        };
        //跳转页面
		justep.Shell.showPage("orderInfo", params);
	};
	//模型加载
	Model.prototype.modelLoad = function(event){
		var params = {};
		params.token = localStorage.getItem("token");
		params.fpStateName = this.status;
		this.refashData(params, false);
	};
	Model.prototype.refashData = function(params, refash) {
		var self = this;
		var TenplanData = this.comp("TenplanData");
		// 调用接口
		var data = fn.requestGet(inface.getplanRdo, params, false,"保养计划");
		console.log(data);
		TenplanData.loadData(data.data, refash);
		// 第第一次加载获取总页数
		if (this.page == 1) {
			this.pageTotal = data.pageTotal;
			$(this.getElementByXid("loadDataRefashDiv")).show();
		}
		// 如果当前也等于总页数，则隐藏/或者改变提示子
		if (this.pageTotal <= this.page) {
			// 换掉图片
			// $(this.getElementByXid("i16")).addClass("linear linear-sad");
			setTimeout(function() {
				self.comp("button18").set({
					"icon" : "linear linear-sad"
				});
			}, 1000);
			self.comp("button18").set({
				"label" : "没有更多数据了"
			});
		} else {
			setTimeout(function() {
				self.comp("button18").set({
					"icon" : "icon-loop"
				});
			}, 1000);

		}
		this.page++;
	};
	//加载下一页
	Model.prototype.loadDataRefashDivClick = function(event){
			if (this.pageTotal < this.page) {
			layer.msg('真的没有更多信息了');
			return;
		
		};
		var params = {};
		params.token = localStorage.getItem("token");
		params.status = this.status;
//		if(this.refash){
//			params.project = this.inputValue;
//		}
		// 从新重置当前页数
		params.page = this.page;
		// 调取刷新数据
		this.refashData(params, true);
	};
	return Model;
});