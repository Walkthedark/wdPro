define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.wdid;
		this.wdmc;
		this.temp;
		this.oid;
		this.bf_id;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("infoDialog").open({
			data : {
				oid : this.oid,
				wdid : this.wdid
			}
		});
	};

	Model.prototype.button2Click = function(event) {
		var self = this;
		var orderData = this.comp("orderData");
		var jxs = orderData.getValue("jxs");
		var lxr = orderData.getValue("shr");
		var dh = orderData.getValue("dh");
		var dz = orderData.getValue("shdz");
		var cuxiao_id = orderData.getValue("yhPolicy");
		var bz = orderData.getValue("bz");
		var data = {};
		data.lxr = lxr;
		data.dh = dh;
		data.dz = dz;
		data.bz = bz;
		data.cuxiao_id = cuxiao_id;
		data.oid = this.oid;
		var sendUrl = "/index/mobile/xgdd";
		asCore.xgdd(sendUrl, data, function(data) {
			debugger;
			if (data.success) {
				justep.Util.hint("保存成功！");
			} else {
				justep.Util.hint("保存失败！");
			}
		});
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.oid = event.data.id;
		this.wdid = event.data.wdid;
		this.wdmc = event.data.wdmc;
		this.bf_id = event.data.bf_id;
		this.getTempData();
		this.getTypeList();
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/ordermx";
		var orderData = this.comp("orderData");
		var infoData = this.comp("infoData");
		var data = {};
		data.oid = this.oid;
		asCore.ordermx(sendUrl, data, function(data) {
			debugger;
			orderData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sn" : asCore.isNull(data.sn),
					"net_id" : asCore.isNull(data.net_id),
					"net" : asCore.isNull(data.net),
					"jsn" : asCore.isNull(data.jsn),
					"jxs" : asCore.isNull(data.jxs),
					"shdz" : asCore.isNull(data.shdz),
					"shr" : asCore.isNull(data.shr),
					"dh" : asCore.isNull(data.dh),
					"yszje" : asCore.isNull(data.yszje),
					"yhPolicy" : asCore.isNull(data.yhPolicy),
					"yhPolicymc" : asCore.isNull(data.yhPolicymc),
					"status" : asCore.isNull(data.status),
					"sqrq" : asCore.isNull(data.sqrq),
					"bz" : asCore.isNull(data.bz),
				} ]
			});
			infoData.loadData(data.detail);
		});
	}
	Model.prototype.modelLoad = function(event) {

	};
	Model.prototype.getTempData = function() {
		var self = this;
		var sendUrl = "/index/mobile/orderdefault";
		var data = {};
		data.bf_id = this.bf_id;
		var orderData = this.comp("orderData");
		asCore.orderdefault(sendUrl, data, function(data) {
			self.temp = data;
		});
	}
	Model.prototype.getTypeList = function() {
		var activityList = this.comp("activityList");
		var sendUrl = "/index/mobile/youhuilist";
		var data = {};
		data.net_id = this.wdid;
		asCore.youhuilist(sendUrl, data, function(data) {
			activityList.loadData(data);
		});
	}
	Model.prototype.orderDataValueChanged = function(event) {
		var orderData = this.comp("orderData");
		var data = this.temp;
		if (event.col == "sendType") {
			if (event.value == "1") {
				orderData.setValue("shr", data.jxs_shr);
				orderData.setValue("shdz", data.jxs_shdz);
				orderData.setValue("dh", data.jxs_shdh);
			} else {
				orderData.setValue("shr", data.net_shr);
				orderData.setValue("shdz", data.net_shdz);
				orderData.setValue("dh", data.net_shdh);
			}
		}
	};
	Model.prototype.infoDialogClose = function(event) {
		this.initDetailData();
	};
	Model.prototype.initDetailData = function() {
		var self = this;
		var sendUrl = "/index/mobile/ordermx";
		var infoData = this.comp("infoData");
		var data = {};
		if (this.oid) {
			data.oid = this.oid;
			asCore.ordermx(sendUrl, data, function(data) {
				infoData.loadData(data.detail);
			});
		} else {
			infoData.clear();
		}
	}
	Model.prototype.output3Render = function(event) {
		var box = event.value;
		var row = event.bindingContext.$object;
		var ge = row.val("ge");
		event.html = box + "箱," + ge + "个";
	};
	Model.prototype.button5Click = function(event) {
		var row = event.bindingContext.$object;
		var status = row.val("status");
		var id = row.val("did");
		if (status == "未处理") {
			this.deleteDetail(id);
		} else {
			justep.Util.hint("只有未处理状态的可删除");
		}
	};
	Model.prototype.button3Click = function(event) {
		var row = event.bindingContext.$object;
		var status = row.val("status");
		var id = row.val("did");
		if (status == "未处理") {
			this.comp("editDialog").open({
				data : {
					did : id
				}
			});
		} else {
			justep.Util.hint("只有未处理状态的可修改");
		}
	};
	Model.prototype.deleteDetail = function(id) {
		var self = this;
		var sendUrl = "/index/mobile/delorderdetail";
		// 44.删除订单 地址：http://61.129.51.183:9986/index/mobile/scdd
		var data = {};
		data.did = id;
		asCore.delorderdetail(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("删除成功！");
				self.initData();
			} else {
				justep.Util.hint(data.msg);
			}
		});
	};
	return Model;
});