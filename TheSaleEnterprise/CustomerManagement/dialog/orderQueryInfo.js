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
		debugger;
		var detailList = this.comp("detailList");
		var option = {
			dzsl : '合计：',
			ysje : parseFloat(detailList.sum('ysje')).toFixed(2),
		};
		this.comp("grid1").setFooterData(option);
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var self = this;
		var id = event.data.id;
		var CData = this.comp("CData");
		var detailList = this.comp("detailList");
		var sendUrl = "/index/mobile/ssjxsddxq";
		// 17.网点拜访列表 地址：http://61.129.51.183:9986/index/mobile/wdbflb
		asCore.ssjxsddxq(sendUrl, {
			id : id
		}, function(data) {
			debugger;
			CData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"bm" : asCore.isNull(data.bm),
					"sqr" : asCore.isNull(data.sqr),
					"zw" : asCore.isNull(data.zw),
					"sn" : asCore.isNull(data.sn),
					"fpType" : asCore.isNull(data.fpType),
					"yhPolicy" : asCore.isNull(data.yhPolicy),
					"sqrq" : asCore.isNull(data.sqrq)
				} ]
			});
			detailList.loadData(data.ddmx);
			self.comp("grid1").refresh();
		});
	};

	return Model;
});