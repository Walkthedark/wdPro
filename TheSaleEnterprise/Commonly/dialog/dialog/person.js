define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		var cData = this.comp("cData");
		var depData = this.comp("depData");
		var id = cData.getValue("select");
		var title = depData.getValueByID("title", id);
		this.comp("depReceiver").windowEnsure({
			"data" : {
				id : id,
				title : title
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		this.initData();
	};
	Model.prototype.initData = function() {
		var self = this;
		var sendUrl = "/index/mobile/emlist";
		var depData = this.comp("depData");
		var cData = this.comp("cData");
		var title = cData.getValue("temp");
		var data = {};
		data.title = title;
		asCore.emlist(sendUrl, data, function(data) {
			depData.loadData(data);
		});
	}
	Model.prototype.button3Click = function(event) {
		this.initData();
	};

	return Model;
});