define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function() {
		this.callParent();
		this.p = {};
	};

	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.modelParamsReceive = function(event) {
		var p = this.params.data.p;
		this.p = p;
		if (p.noPay == null || p.noPay == "") {
			this.comp("button1").set({
				'label' : '待收款金额为:0'
			});
			this.comp("input1").val('0');
		} else {
			this.comp("button1").set({
				'label' : '待收款金额为:' + p.noPay
			});
			this.comp("input1").val(p.noPay);
		}
	};

	Model.prototype.button3Click = function(event) {
		var params = {};
		params.client_id = this.p.client_id;
		var receipt_money = this.comp("input1").val();
		var receipt_date = this.comp("input2").val();
		var remark = this.comp("textarea1").val();
		params.receipt_money = receipt_money;
		params.receipt_date = receipt_date;
		params.receipt_type = this.comp("button15").get('label');;
		params.remark = remark;
		var p = [];
		pa = {};
		pa.order_id = this.p.order_id;
		pa.pay_money = receipt_money;
		p.push(pa);
		params.order = p;
		var res = asCore.setPostFalse(inFace.add_receipt, params);
		if (res.code === 200) {
			layer.msg('收款成功');
			this.getParentModel().refarshData();
			this.close();
		} else {
			layer.msg('收款失败');
		}
	
	};

	Model.prototype.PaymenTypeDataCustomRefresh = function(event){

	var params = {};
		var res = asCore.setGetFalse(inFace.receipt_type, params);
		if (res.code === 200) {
			this.comp("PaymenTypeData").loadData(res.data,false);
		} else {
			layer.msg('收款方式选择出错！');
		};
	};
	//收款方式
	Model.prototype.li4Click = function(event){
		var row = event.bindingContext.$object;// 获取绑定的行数据
		var id = row.val('id');
		var name = row.val('name');
		this.comp("button15").set({'label':name});
		this.comp('popOver4').hide();
	};

	Model.prototype.div6Click = function(event){
		this.comp('popOver4').show();
	};

	return Model;
});