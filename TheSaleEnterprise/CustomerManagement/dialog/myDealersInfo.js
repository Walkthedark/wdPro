define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
		this.title;
	};
	// 查看详情
	Model.prototype.button2Click = function(event) {
		this.comp("infoDialog").open({
			data : {
				id : this.id,
				title : this.title
			}
		});
	};
	// 采集
	Model.prototype.button3Click = function(event) {
		this.comp("collectDialog").open({
			data : {
				id : this.id
			}
		});
	};
	// 对账单
	Model.prototype.button4Click = function(event) {
		this.comp("statementsDialog").open({
			data : {
				id : this.id
			}
		});
	};
	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/jxszlxq";
		var orderData = this.comp("orderData");
		var data = {};
		data.id = id;
		asCore.jxszlxq(sendUrl, data, function(data) {
			debugger;
			self.title = asCore.isNull(data.title);
			orderData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"title" : asCore.isNull(data.title),
					"zoning" : asCore.isNull(data.zoning),
					"zoning_fzr" : asCore.isNull(data.zoning_fzr),
					"provice" : asCore.isNull(data.provice),
					"provice_fzr" : asCore.isNull(data.provice_fzr),
					"city" : asCore.isNull(data.city),
					"city_fzr" : asCore.isNull(data.city_fzr),
					"cooptime" : asCore.isNull(data.cooptime),
					"channeltype" : asCore.isNull(data.channeltype),
					"direct" : asCore.isNull(data.direct),
					"types" : asCore.isNull(data.types),
					"xsmb" : asCore.isNull(data.xsmb),
					"sjdc" : asCore.isNull(data.sjdc),
					"fymb" : asCore.isNull(data.fymb),
					"sjhf" : asCore.isNull(data.sjhf),
					"stuff" : asCore.isNull(data.stuff),
					"addr" : asCore.isNull(data.addr),
				} ]
			});
		});
	};
	return Model;
});