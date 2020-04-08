define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};
	// 查看详情
	Model.prototype.button2Click = function(event) {
		this.comp("infoDialog").open();
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
		this.comp("statementsDialog").open();
	};
	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/systemzlxq";
		var orderData = this.comp("CData");
		var data = {};
		data.id = id;
		asCore.systemzlxq(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"jxs" : asCore.isNull(data.jxs),
					"title" : asCore.isNull(data.title),
					"zoning" : asCore.isNull(data.zoning),
					"zoning_fzr" : asCore.isNull(data.zoning_fzr),
					"provice" : asCore.isNull(data.provice),
					"provice_fzr" : asCore.isNull(data.provice_fzr),
					"city" : asCore.isNull(data.city),
					"city_fzr" : asCore.isNull(data.city_fzr),
					"cusman" : asCore.isNull(data.cusman),
					"erjiqudao" : asCore.isNull(data.erjiqudao),
					"stuff" : asCore.isNull(data.stuff),
					"breif" : asCore.isNull(data.breif),
					"addr" : asCore.isNull(data.addr),
					"cusType" : asCore.isNull(data.cusType),
				} ]
			});
		});
	};
	return Model;
});