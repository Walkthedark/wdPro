define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/common/asCore");
	var inFace = require("$UI/TheSaleEnterprise/common/interfaceAdress");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.initData();
	};
	//获取客户信息
	Model.prototype.initData = function() {
		var params ={};
		var res = asCore.setGetFalse(inFace.clientInfo,params);
		if(res.code === 200){
			var clientData = this.comp("clientData");
			clientData.loadData(res.data.data, false);
		}else{
			justep.Util.hint(res.message);
		};
		
	};
	Model.prototype.button3Click = function(event) {
		this.initData();
	};

	Model.prototype.output3Render = function(event) {
		var row = event.bindingContext.$object;
		var shdh = row.val("shdh");
		var shr = event.value;
		event.html = "订货人：" + shr + shdh;
	};
	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		var client_id = row.val("client_id");
		var client_name = row.val("client_name");
		this.comp("depReceiver").windowEnsure({
			"data" : {
				client_id : client_id,
				client_name:client_name
			}
		});
	};

	return Model;
});