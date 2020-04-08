define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("css!$UI/maintenanceOrderMessa/common/layer/skin/default/layer").load();
	require("$UI/maintenanceOrderMessa/common/layer/layer");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.id = "";
	};

	Model.prototype.button3Click = function(event) {
		this.comp("popOver2").show();
	};
	// 通过
	Model.prototype.okSubBtnClick = function(event) {
		var para = {};
		para.id = this.id;
		para.sp_state = 1;
		para.sp_reason = "";
		this.shenhe(para);
	};
	Model.prototype.shenhe = function(params) {
		var self_ = this;
		try {
			$.ajax({
				method : "POST",
				url : inface.spHitch + "?token=" + localStorage.getItem("token"),
				cache : false,
				async : true,
				data : params,
				success : function(data) {
					if (data.error == 0) {
						layer.msg("审核成功", {
							icon : 1
						});
						self_.getInfo(event);
						self_.comp("popOver2").hide();
					} else {
						layer.msg(data.message);

					}
				},
				"error" : function(msg) {
				},
			});
		} catch (e) {
			// TODO: handle exception
		}
	};
	Model.prototype.button18Click = function(event) {
		this.comp("popOver2").hide();
	};

	Model.prototype.button17Click = function(event) {
		var text = this.comp("textarea2").val();
		if (text == null || text == "") {
			layer.msg("请填写退回说明");
			return;
		}
		var para = {};
		para.id = this.id;
		para.sp_state = 2;
		para.sp_reason = text;
		this.shenhe(para);
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.id = this.params.id;
		this.getInfo(event);
	};
	Model.prototype.getInfo = function(event) {
		var params = {};
		params.token = localStorage.getItem("token");
		params.id = this.id;
		var data1 = this.comp("data1");
		try {
			$.ajax({
				method : "GET",
				url : inface.getBaoXiu,
				cache : false,
				async : true,
				data : params,
				success : function(data) {
					// if (data.error == 0) {
					// 加载数据
					data1.loadData(data.data,false);
					data1.refreshData();
					// }
				},
				"error" : function(msg) {
				},
			});
		} catch (e) {
			// TODO: handle exception
		}
	};

	return Model;
});