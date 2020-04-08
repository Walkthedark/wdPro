define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
		this.wdmc;
		this.temp;
		this.Oid;
	};

	Model.prototype.button4Click = function(event) {
		if (this.Oid) {
			this.comp("infoDialog").open({
				data : {
					oid : this.Oid,
					wdid : this.wdid
				}
			});
		} else {
			justep.Util.hint("请先保存订单主信息");
		}
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
		debugger;
		if (this.Oid) {
			data.oid = this.Oid;
			var sendUrl = "/index/mobile/xgdd";
			asCore.xgdd(sendUrl, data, function(data) {
				debugger;
				if (data.success) {
					justep.Util.hint("保存成功！");
				} else {
					justep.Util.hint("保存失败！");
				}
			});
		} else {
			data.net_id = this.wdid;
			data.bf_id = this.id;
			data.jxs = jxs;
			var sendUrl = "/index/mobile/xzdd";
			asCore.xzdd(sendUrl, data, function(data) {
				if (data.success) {
					justep.Util.hint("新增成功！");
					self.Oid = data.oid;
				} else {
					justep.Util.hint("新增失败！");
				}
			});
		}
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.wdid = event.data.wdid;
		this.wdmc = event.data.wdmc;
		this.comp("orderData").setValue("net", this.wdmc);
		this.comp("orderData").setValue("net_id", this.wdid);
		this.getTempData();
		this.getTypeList();
	};

	Model.prototype.modelLoad = function(event) {

	};
	Model.prototype.getTempData = function() {
		var self = this;
		var sendUrl = "/index/mobile/orderdefault";
		var data = {};
		data.bf_id = this.id;
		var orderData = this.comp("orderData");
		asCore.orderdefault(sendUrl, data, function(data) {
			self.temp = data;
			orderData.setValue("sendType", "1");
			orderData.setValue("jxs", data.jxs);
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
		if (this.Oid) {
			data.oid = this.Oid;
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