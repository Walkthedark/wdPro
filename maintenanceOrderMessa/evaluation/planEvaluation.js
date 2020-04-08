define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var fn = require("$UI/maintenanceOrderMessa/common/requestServer");
	var inface = require("$UI/maintenanceOrderMessa/common/interfaceAdress");
	var common = require("$UI/maintenanceOrderMessa/common/common");
	var Model = function() {
		this.callParent();
		this.id;
		this.status = 1;
	};
	Model.prototype.button8Click = function(event) {
		this.comp("button7").set({
			"label" : "不满意"
		});

		this.comp("button8").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button9").set({
			"icon" : "dataControl dataControl-starl"
		});
		this.comp("button10").set({
			"icon" : "dataControl dataControl-starl"
		});
		this.comp("button1").set({
			"icon" : "dataControl dataControl-starl"
		});
		this.status = 4;
	};

	Model.prototype.button9Click = function(event) {
		this.comp("button7").set({
			"label" : "一般"
		});
		this.comp("button8").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button9").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button10").set({
			"icon" : "dataControl dataControl-starl"
		});
		this.comp("button1").set({
			"icon" : "dataControl dataControl-starl"
		});
		this.status = 3;
	};

	Model.prototype.button10Click = function(event) {
		this.comp("button7").set({
			"label" : "满意"
		});
		this.comp("button8").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button9").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button10").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button1").set({
			"icon" : "dataControl dataControl-starl"
		});
		this.status = 2;
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.id = this.params.data.id;
	};

	Model.prototype.button1Click = function(event) {
		this.comp("button7").set({
			"label" : "优秀"
		});
		this.comp("button8").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button9").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button10").set({
			"icon" : "dataControl dataControl-star"
		});
		this.comp("button1").set({
			"icon" : "dataControl dataControl-star"
		});
		this.status = 1;
	};

	Model.prototype.addLogDiv_infoClick = function(event) {
		var txtValue = this.comp("textarea1").val();
		if (!common.patternNull(txtValue)) {
			justep.Util.hint("请填写意见反馈哦");
			return;
		}
		var params = {};
		params.fpEvaluate1 = this.status;
		params.ids = this.id;
		params.fpOption = txtValue;
		var data = fn.requestPost(inface.confirmAll, params, false, "发布评价");
		if (data.error == 0) {
			layer.msg('评价成功，正在为您返回上一层', {
				icon : 1
			});
			// this.params.data.method.refashGetParent(event);
			this.getParentModel().refashGetParent(event);
			this.comp("timer1").start();
		}
	};

	Model.prototype.timer1Stop = function(event) {
		this.close();
	};

	return Model;
});