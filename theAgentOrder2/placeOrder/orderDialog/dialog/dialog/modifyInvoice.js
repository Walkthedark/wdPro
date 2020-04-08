define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function(){
		this.callParent();
		this.client_id="";
	};
	//提交事件
	Model.prototype.button3Click = function(event){
		//获取值
		var blankData = this.comp("blankData");
		var id = blankData.getCurrentRowID();
		var invoice = this.comp("input5").val();
		if(!invoice){
			layer.msg('发票抬头不能为空');
			return;
		}
		var tax_num = this.comp("input4").val();
		if(!tax_num){
			layer.msg('税号不能为空');
			return;
		}
		var bank_name = this.comp("input6").val();
		var bank = this.comp("input3").val();
		var bank_account = this.comp("input1").val();
		var invoice_address  = this.comp("input2").val();
		var params = {};
		params.id = id;
		params.invoice =invoice;
		params.tax_num =tax_num;
		params.bank_name =bank_name;
		params.bank =bank;
		params.bank_account =bank_account;
		params.invoice_address =invoice_address;
		this.setInvoiceParams(params);
	};
	//发送请求
	Model.prototype.setInvoiceParams = function(params){
		var res = asCore.setGetFalse(inFace.editinvace, params);
		if (res.code === 200) {
			layer.msg('修改成功');
			this.params.data.method.getBill(event);
		} else {
			justep.Util.hint(res.message);
		}
		
	};
	//参数接受事件
	Model.prototype.modelParamsReceive = function(event){
		var params = {};
		params.client_id = this.params.client_id;
		this.client_id = params.client_id;
		var res = asCore.setGetFalse(inFace.getBill, params);
		if (res.code === 200) {
			var data = this.comp("blankData");
			var para =[];
			para.push(res.data);
			data.loadData(para, false);
			data.refreshData();
		} else {
			justep.Util.hint(res.message);
		}
	};

	return Model;
});