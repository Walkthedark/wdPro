define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.bf_id;
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var cDate = this.comp("GoodsData");
		var cp_id = cDate.getValue("cp_id");
		var jcqk_zt = cDate.getValue("jcqk_zt");
		var jcqk_jg = cDate.getValue("jcqk_jg");
		var jcqk_bz = cDate.getValue("jcqk_bz");
		var data = {};
		data.bf_id = this.bf_id;
		data.cp_id = cp_id;
		data.jcqk_zt = jcqk_zt;
		data.jcqk_jg = jcqk_jg;
		data.jcqk_bz = jcqk_bz;
		var sendUrl = "/index/mobile/xgcpjc";
		asCore.xgcpjc(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("修改成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("修改失败！");
			}
		});
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.id = event.data.id;
		this.bf_id = event.data.bf_id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/cpjcmx";
		var orderData = this.comp("GoodsData");
		var data = {};
		data.cp_id = this.id;
		data.bf_id = this.bf_id;
		asCore.cpjcmx(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"cp_id" : asCore.isNull(data.data.cp_id),
					"pro_name" : asCore.isNull(data.data.pro_name),
					"jcqk_zt" : asCore.isNull(data.data.jcqk_zt),
					"jcqk_jg" : asCore.isNull(data.data.jcqk_jg),
					"jcqk_bz" : asCore.isNull(data.data.jcqk_bz),
					"pro_name" : asCore.isNull(data.data.pro_name),
					"unit" : asCore.isNull(data.data.unit)
				} ]
			});
		});
	}
	Model.prototype.modelLoad = function(event) {
	}

	return Model;
});