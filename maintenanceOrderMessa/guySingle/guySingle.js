define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var fn = require("$UI/maintenanceOrderMessa/common/requestServer");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		// 分页数据
		this.status = 0;
		this.page = 1;
		this.pageTotal = 0;
	};
	// 页面加载事件
	Model.prototype.modelLoad = function(event) {
		//
		var params = {};
		params.fpStateName = 0;
		params.token = localStorage.getItem("token");
		this.refashData(params, false);
	};
	// 刷新数据
	Model.prototype.refashData = function(params, refash) {
		var data = fn.requestGet(inface.getHitch, params, false, "维修工单");
		var hithData = this.comp("hithData");
		var self = this;
		// 获取总页数
		if (this.page == 1) {
			this.pageTotal = data.pageTotal;
			// 显示加载数据提示
			$(this.getElementByXid("loadDataRefashDiv")).show();
		}
		;
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

		hithData.loadData(data.data, refash);
		hithData.refreshData();
	};
	// 加载更多
	Model.prototype.loadDataRefashDivClick = function(event) {
		if (this.pageTotal < this.page) {
			layer.msg('真的没有更多信息了');
			return;

		};
		this.comp("button18").set({
			"icon" : "icon-looping"
		});
		var params = {};
		params.fpStateName = 0;
		params.token = localStorage.getItem("token");
		params.page = this.page;
		this.refashData(params, true);
		
	};
	//打开详细页面
	Model.prototype.tenPlanInfoDIvClick = function(event){
		//var hithData = this.comp("hithData");
		//获取值数据
		var id = event.bindingContext.$object.row.id.value.latestValue;
		//获取航数据
	
		
		//var rowData = hithData.getRowByID(id).toJson();
		var params = {
            "rowid": id,
               data: {
                method:this
            }
        };
		justep.Shell.showPage("guySingleInfo",params);
	
	};
	Model.prototype.refashGetParent = function(event) {
		alert("1")
	};
	
	return Model;
});