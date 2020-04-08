define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function(){
		this.callParent();
		this.order_id = "";
	};
	

	Model.prototype.modelParamsReceive = function(event){
		var params = {};
		params.order_id = this.params.order_id;
		this.order_id = this.params.order_id;
		var res = asCore.setGetFalse(inFace.receipt_list, params);
		if(res.code == 200){
			var params =[];
			params.push(res.data);
			if(res.data.no_pay <= 0){
				$(this.getElementByXid('button9')).hide();
			}else{
				$(this.getElementByXid('button9')).show();
			}
			this.comp("dataInfo").loadData(params, false);
			this.comp("dataInfo").refreshData();
			this.comp("hostryData").loadData(res.data.pay_history, false);
		}
	};
	Model.prototype.refarshData = function(event){
	
		var params = {};
		params.order_id = this.order_id;
		var res = asCore.setGetFalse(inFace.receipt_list, params);
		if(res.code == 200){
			var params =[];
			params.push(res.data);
			if(res.data.no_pay <= 0){
				$(this.getElementByXid('button9')).hide();
			}else{
				$(this.getElementByXid('button9')).show();
			}
			this.comp("dataInfo").loadData(params, false);
			this.comp("dataInfo").refreshData();
			this.comp("hostryData").loadData(res.data.pay_history, false);
		}
	};
	Model.prototype.button3Click = function(event){
		var dataInfo = this.comp("dataInfo");
		var p ={};
		var params = {};
		params.id = this.params.order_id;
		var res = asCore.setGetFalse(inFace.detail, params);
		if (res.code === 200) {
			console.log(res);
			var client_id = res.data.order.client_id;
			if(client_id !="" ||client_id !=null){
				p.noPay = dataInfo.getValue("no_pay");
				p.order_id = this.order_id;
				p.client_id = client_id;
				this.comp("windowDialog1").open({data:{p:p}});
			}else{
				layer.msg('客户信息获取失败，无法收款');
			}
		}
	};
	
	return Model;
});