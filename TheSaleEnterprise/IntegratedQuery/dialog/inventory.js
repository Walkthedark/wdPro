define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.getStoreList();
		this.getTypeList();
	};
	Model.prototype.getStoreList = function() {
		var self = this;
		var sendUrl = "/index/mobile/cklist";
		var storeList = this.comp("storeList");
		var data = {};
		asCore.cangkulist(sendUrl, data, function(data) {
			debugger;
			storeList.loadData(data);
		});
	}
	Model.prototype.getTypeList = function() {
		var self = this;
		var sendUrl = "/index/mobile/mattype";
		var typeList = this.comp("typeList");
		var data = {};
		asCore.mattype(sendUrl, data, function(data) {
			typeList.loadData(data);
		});
	}
	Model.prototype.button2Click = function(event) {
		this.comp("infoDialog").open();
	};

	Model.prototype.button6Click = function(event) {
		var cData = this.comp("cData");
		cData.setValue("store", "");
		cData.setValue("type", "");
		cData.setValue("no", "");
		cData.setValue("name", "");
	};

	Model.prototype.button8Click = function(event) {
		var self = this;
		var store = this.comp("cData").getValue("store");
		var type = this.comp("cData").getValue("type");
		var no = this.comp("cData").getValue("no");
		var name = this.comp("cData").getValue("name");
		var sendUrl = "/index/mobile/kccx";
		var pData = this.comp("pData");
		var data = {};
		if (asCore.isNull(store)) {
			data.ck = store;
		}
		if (asCore.isNull(type)) {
			data.wlxl = type;
		}
		if (asCore.isNull(no)) {
			data.wlbh = no;
		}
		if (asCore.isNull(name)) {
			data.wlmc = name;
		}
		asCore.kccx(sendUrl, data, function(data) {
			pData.loadData(data);
		});
	};

	Model.prototype.output4Render = function(event) {
		var kc = event.value;
		var row = event.bindingContext.$object;
		var kcdw = row.val("kcdw");
		event.html = kc + kcdw;
	};

	return Model;
});