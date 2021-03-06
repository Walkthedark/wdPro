define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var title = row.val("pro_name");
		this.comp("windowReceiver1").windowEnsure({
			data : {
				id : id,
				title : title
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/getpro";
		var pData = this.comp("pData");
		var data = "";
		asCore.getpro(sendUrl, data, function(data) {
			debugger;
			pData.loadData(data);
		});
	};
	return Model;
});