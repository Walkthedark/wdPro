define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.valueSearch = "";
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
			clientData.loadData(res.data, false);
		}else{
			justep.Util.hint(res.message);
		};
		
	};
	//客户搜索
	Model.prototype.button3Click = function(event) {
		//获取inp的值
		var searchVal = this.comp("input1").val();
		var params ={};
		if(searchVal){
			params.query = searchVal;
			this.valueSearch =searchVal;
		}else{
			this.valueSearch = "";
		}
		this.getClientInfo(params); 
		//query
	};
	
	Model.prototype.getClientInfo = function(params) {
		var res = asCore.setGetFalse(inFace.clientInfo,params);
		if(res.code === 200){
			var clientData = this.comp("clientData");
			clientData.loadData(res.data, false);
		}else{
			justep.Util.hint(res.message);
		};
	};
	Model.prototype.output3Render = function(event) {
		
	};
	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		var client_id = row.val("client_id");
		var client_name = row.val("client_name");
		var params ={};
		params.client_id = client_id;
		params.client_name = client_name;
		localStorage.setItem("client_id", client_id);
		this.params.data.method.customerDialogReceive(params);
		history.back();
	};

	return Model;
});