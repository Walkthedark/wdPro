define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.output21Render = function(event) {
		if (event.value == "0") {
			event.html = "提交申请";
		}
		if (event.value == "1") {
			event.html = "打回修改";
		}
		if (event.value == "2") {
			event.html = "提交";
		}
		if (event.value == "3") {
			event.html = "审批通过";
		}
		if (event.value == "4") {
			event.html = "抄送";
		}
	};

	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/wysqdxq";
		var spData = this.comp("spData");
		var CData = this.comp("CData");
		var feeList = this.comp("feeList");
		// 59.请假申请详情 地址：http://61.129.51.183:9986/index/mobile/qjsqxq
		asCore.wysqdxq(sendUrl, this.id, function(data) {
			CData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"type" : asCore.isNull(data.type),
					"no" : asCore.isNull(data.no),
					"title" : asCore.isNull(data.title),
					"neirong" : asCore.isNull(data.neirong),
					"iscost" : asCore.isNull(data.iscost),
					"ctime" : asCore.isNull(data.ctime),
					"cuser" : asCore.isNull(data.cuser),
					"cuser_bm" : asCore.isNull(data.cuser_bm),
					"typetitle" : asCore.isNull(data.typetitle),
					"State" : asCore.isNull(data.State),
					"bm" : asCore.isNull(data.bm),
					"bm_title" : asCore.isNull(data.bm_title),
					"zhifu" : asCore.isNull(data.zhifu),
					"zhifu_title" : asCore.isNull(data.zhifu_title),
					"Shoukuan" : asCore.isNull(data.Shoukuan),
					"shoukuan_title" : asCore.isNull(data.shoukuan_title),
					"kaohe" : asCore.isNull(data.kaohe),
					"kaohe_title" : asCore.isNull(data.kaohe_title)
				} ]
			});
			spData.loadData(data.log);
			feeList.loadData(data.detail)
			self.comp("grid1").refresh();
			if (data.iscost == 1) {
				$("[xid=cosrDiv1]").show();
			}
			if (data.iscost == 0) {
				$("[xid=cosrDiv1]").hide();
			}
		});
	}
	Model.prototype.output11Render = function(event) {
		if (event.value == "1") {
			event.html = "是";
		} else {
			event.html = "否";
		}
	};
	return Model;
});