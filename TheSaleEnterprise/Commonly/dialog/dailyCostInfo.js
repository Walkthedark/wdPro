define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
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
	Model.prototype.grid1Reload = function(event) {
		var feeList = this.comp("feeList");
		var option = {
			feiid_title : '合计：',
			pizhunfeiyong : parseFloat(feeList.sum('pizhunfeiyong')).toFixed(2),
		};
		this.comp("grid1").setFooterData(option);
	};
	Model.prototype.wReceiverReceive = function(event) {
		this.id = event.data.id;
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/rcfybxxq";
		var spData = this.comp("spData");
		var CData = this.comp("CData");
		var feeList = this.comp("feeList");
		asCore.rcfybxxq(sendUrl, this.id, function(data) {
			CData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"no" : asCore.isNull(data.no),
					"cuser" : asCore.isNull(data.cuser),
					"ctime" : asCore.isNull(data.ctime),
					"title" : asCore.isNull(data.title),
					"payway" : asCore.isNull(data.payway),
					"payway_title" : asCore.isNull(data.payway_title),
					"kaohe" : asCore.isNull(data.kaohe),
					"kaohe_title" : asCore.isNull(data.kaohe_title),
					"cuser_bm" : asCore.isNull(data.cuser_bm)
				} ]
			});
			spData.loadData(data.log);
			feeList.loadData(data.detail);
			self.comp("grid1").refresh();
		});
	}
	return Model;
});