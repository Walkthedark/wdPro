define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button4Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/tjccsqmx";
		var infoData = this.comp("infoData");
		var start = infoData.getValue("start");
		var end = infoData.getValue("end");
		var chufa = infoData.getValue("chufa");
		var mudi = infoData.getValue("mudi");
		var gl = infoData.getValue("gl");
		var qishi = infoData.getValue("qishi");
		var fangshi = infoData.getValue("fangshi");
		var shijian = infoData.getValue("shijian");
		var peitongid = infoData.getValue("peitongid");
		var data = {};
		data.start = start;
		data.end = end;
		data.chufa = chufa;
		data.mudi = mudi;
		data.gl = gl;
		data.qishi = qishi;
		data.fangshi = fangshi;
		data.shijian = shijian;
		data.peitongid = peitongid;
		data.id = this.id;
		// 62.添加出差申请明细 地址：http://61.129.51.183:9986/index/mobile/tjccsqmx
		asCore.tjccsqmx(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("添加成功！");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("添加失败！");
			}
		});
	};

	Model.prototype.modelLoad = function(event) {
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.id = event.data.id;
		this.getPersonList();
		this.getTypeList();
	};
	Model.prototype.getPersonList = function() {
		var persons = this.comp("persons");
		var sendUrl = "/index/mobile/peitongrenlist";
		var data = {};
		asCore.peitongrenlist(sendUrl, data, function(data) {
			persons.loadData(data);
		});
	}
	Model.prototype.getTypeList = function() {
		var typeList = this.comp("typeList");
		var sendUrl = "/index/mobile/jtgj";
		var data = {};
		asCore.jtgj(sendUrl, data, function(data) {
			typeList.loadData(data);
		});
	}
	return Model;
});