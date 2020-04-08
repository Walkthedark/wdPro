define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.data;
	};

	Model.prototype.button2Click = function(event) {
		this.comp("popOver1").show();
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

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/khtxl";
		var orderData = this.comp("orderData");
		var data = "";
		asCore.khtxl(sendUrl, data, function(data) {
			debugger;
			orderData.loadData(data);
			self.data = data;
		});
	};

	Model.prototype.button3Click = function(event) {
		var CData = this.comp("CData");
		CData.setValue("col1", "");
		CData.setValue("col2", "");
	};

	Model.prototype.button4Click = function(event) {
		var CData = this.comp("CData");
		var col1 = CData.getValue("col1");
		var col2 = CData.getValue("col2");
		var data = this.data;
		var list = [];
		if (!asCore.isNull(col1) && !asCore.isNull(col2)) {
			this.comp("orderData").clear();
			this.comp("orderData").loadData(this.data);
			this.comp("popOver1").hide();
		} else {
			for (i = 0; i < data.length; i++) {
				var xm = data[i].xm;
				var sskh = data[i].sskh;
				var flag1 = 1;
				var flag2 = 1;
				if (asCore.isNull(col1)) {
					if (xm.indexOf(col1) >= 0) {
						flag1 = 1;
					} else {
						flag1 = 0;
					}
				}
				if (asCore.isNull(col2)) {
					if (sskh.indexOf(col2) >= 0) {
						flag2 = 1;
					} else {
						flag2 = 0;
					}
				}
				if (flag1 == 1 && flag2 == 1) {
					list.push(data[i]);
				}
			}
			this.comp("orderData").clear();
			this.comp("orderData").loadData(list);
			this.comp("popOver1").hide();
		}
	};
	return Model;
});