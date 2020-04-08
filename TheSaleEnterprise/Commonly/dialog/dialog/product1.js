define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.wdid;
	};

	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var title = row.val("pro_name");
		var price = row.val("lingshou_price");
		var unit = row.val("unit");
		this.comp("windowReceiver1").windowEnsure({
			data : {
				id : id,
				title : title,
				price : price,
				unit : unit
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/orderprolist";
		var pData = this.comp("pData");
		var data = "";
		data.net_id = this.wdid;
		asCore.getpro(sendUrl, data, function(data) {
			pData.loadData(data);
		});
	};
	Model.prototype.windowReceiver1Receive = function(event) {
		this.wdid = event.data.wdid;
	};
	return Model;
});