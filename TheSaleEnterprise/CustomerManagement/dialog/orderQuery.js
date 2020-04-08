define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};
	/**
	 * 
	 */
	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/ssjxsddcx";
		var orderData = this.comp("orderData");
		var status = "";
		// 17.网点拜访列表 地址：http://61.129.51.183:9986/index/mobile/wdbflb
		asCore.ssjxsddcx(sendUrl, status, function(data) {
			orderData.loadData(data);
			self.loadBillData(data);
		});
	};
	Model.prototype.loadBillData = function(data) {
		var list1 = [];
		var list2 = [];
		var list3 = [];
		var list4 = [];
		for (i = 0; i < data.length; i++) {
			var detail = data[i];
			var status = detail.status;
			if (status == "1") {// 审批中
				list1.push(detail);
			} else if (status == "2") {// 待发货
				list2.push(detail);
			} else if (status == "3") {// 待收货
				list3.push(detail);
			} else if (status == "4") {// 已收货
				list4.push(detail);
			}
		}
		this.comp("orderData1").loadData(list1);
		this.comp("orderData2").loadData(list2);
		this.comp("orderData3").loadData(list3);
		this.comp("orderData4").loadData(list4);
	}
	Model.prototype.output17Render = function(event) {
		if (this.isNull(event.value) && event.value == "1") {
			event.html = "已发货";
		} else {
			event.html = "未发货";
		}
	};
	Model.prototype.output18Render = function(event) {
		if (this.isNull(event.value) && event.value == "1") {
			event.html = "已收货";
		} else {
			event.html = "未收货";
		}
	};
	Model.prototype.output12Render = function(event) {
		if (this.isNull(event.value)) {
			if (event.value == "1")
				event.html = "审批中";
			if (event.value == "2")
				event.html = "待发货";
			if (event.value == "3")
				event.html = "待收货";
			if (event.value == "4")
				event.html = "已收货";
		} else {
			event.html = "未收货";
		}
	};
	Model.prototype.isNull = function(data) {
		var val;
		if (data == "null" || data == null || data == undefined) {
			val = "";
		} else {
			val = data;
		}
		return val;
	}
	return Model;
});