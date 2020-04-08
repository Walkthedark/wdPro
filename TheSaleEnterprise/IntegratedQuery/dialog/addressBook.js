define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.data;
	};
	Model.prototype.li2Click = function(event) {
		var row = event.bindingContext.$object;
		var sjh = row.val("sjh");
		var yx = row.val("yx");
		var xm = row.val("xm");
		this.comp("telData").setValue("tel", sjh);
		this.comp("telData").setValue("mail", yx);
		this.comp("telData").setValue("xm", xm);
		this.comp("popOver1").show();
	};
	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/qytxl";
		var data = "";
		asCore.qytxl(sendUrl, data, function(data) {
			self.data = data;
			self.loadData(data);
		});
	};
	Model.prototype.loadData = function(data) {
		var khData = this.comp("khData");
		var lxData = this.comp("lxData");
		var list = [];
		for (i = 0; i < data.length; i++) {
			var sskh = data[i].sskh;
			var params = {};
			if (getFlag(list, sskh) == 0) {
				params.sskh = sskh;
				params.sskhmc = data[i].sskhmc;
				list.push(params);
			}
		}
		khData.clear();
		lxData.clear();
		khData.loadData(list);
		lxData.loadData(data);
//		khData.refreshData();
//		lxData.refreshData();
	}
	function getFlag(list, bh) {
		var flag = 0;
		for (j = 0; j < list.length; j++) {
			if (list[j].sskh == bh) {
				flag = 1;
			}
		}
		return flag;
	}
	return Model;
});