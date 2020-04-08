define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.li1Click = function(event) {
		var id = event.bindingContext.$object.val("id")
		this.comp("goodsDialog").open({
			data : {
				id : id
			}
		});
	};
	Model.prototype.initNoData = function() {
		var self = this;
		var sendUrl = "/index/mobile/suoshuhuibao";
		var data = {};
		data.type = "1";
		asCore.suoshuhuibao(sendUrl, data, function(data) {
			self.comp("wData").loadData(data);
		});
	}
	Model.prototype.initHasData = function() {
		var self = this;
		var sendUrl = "/index/mobile/suoshuhuibao";
		var data = {};
		data.type = "2";
		asCore.suoshuhuibao(sendUrl, data, function(data) {
			self.comp("yData").loadData(data);
		});
	}
	Model.prototype.modelLoad = function(event) {
		this.initHasData();
		this.initNoData();
	};
	Model.prototype.output5Render = function(event) {
		var start = event.value;
		var end = event.bindingContext.$object.val("end")
		event.html = start + "~" + end;
	};
	return Model;
});