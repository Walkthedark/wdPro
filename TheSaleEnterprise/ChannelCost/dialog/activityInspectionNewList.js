define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.net_id;
		this.net_name;
		this.product;
		this.mxId;
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open({
			data : {
				net_id : this.net_id,
				net_name : this.net_name,
				product : this.product,
				mxId : this.mxId
			}
		});
	};

	Model.prototype.li1Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var net_id = event.data.net_id;
		var net_name = event.data.net_name;
		var product = event.data.product;
		var mxId = event.data.mxId;
		this.net_id = net_id;
		this.net_name = net_name;
		this.product = product;
		this.mxId = mxId;
		$("#checkTitle").text(net_name)
		$("#checkProduct").text("活动产品：" + product);
		this.initData();
	};
	Model.prototype.initData = function() {
		var detailData = this.comp("detailData");
		var self = this;
		var sendUrl = "/index/mobile/schdjclist";
		var param = {
			id : this.mxId
		};
		asCore.schdjclist(sendUrl, param, function(data) {
			detailData.loadData(data.data.hdlist);
		});
	}
	Model.prototype.newDialogReceive = function(event) {
		this.initData();
	};
	return Model;
});