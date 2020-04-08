define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function() {
		this.callParent();
		this.client_id;
		this.vId = "0";
		this.title = "";
	};
	// 获取信息
	Model.prototype.modelParamsReceive = function(event) {
		this.client_id = this.params.data.client_id;
		this.getBill(event);
	};
	Model.prototype.getBill = function(event) {
		var params = {};
		params.client_id = this.client_id;
		var res = asCore.setGetFalse(inFace.getBill, params);
		if (res.code === 200) {
			var data = this.comp("blankData");
			var para = [];
			para.push(res.data);
			data.loadData(para, false);
			data.refreshData();
		} else {
			justep.Util.hint(res.message);
		}

	};
	// 选择发票
	Model.prototype.button1Click = function(event) {
		this.comp("popOver1").show();
	};

	Model.prototype.button17Click = function(event) {
		console.log(this.comp("invoiceData").toJson());
	};

	Model.prototype.button18Click = function(event) {
		var rowData = this.comp("popPicker1").getInnerPickers()[0].getSelectedItem();
		var id = rowData.val("id");
		var name = rowData.val("name");
		this.comp("button1").set({
			"label" : name
		});
		var blankData = this.comp("blankData");
		this.vId = id;
		if (id == 0) {
			$(this.getElementsByXid('div21')).hide();
			$(this.getElementsByXid('div22')).hide();
			this.title = ""
		} else if (id == 1) {
			$(this.getElementsByXid('div22')).show();
			$(this.getElementsByXid('div21')).hide();
			this.title = blankData.getValue("invoice")
		} else if (id == 2) {
			$(this.getElementsByXid('div21')).show();
			$(this.getElementsByXid('div22')).show();
			this.title = blankData.getValue("invoice")
		}
	};
	// 保存发票信息
	Model.prototype.button3Click = function(event) {
		// 现保存
		if (this.vId != 0) {

			var blankData = this.comp("blankData");
			var id = blankData.getCurrentRowID();
			var invoice = this.comp("input1").val();
			if (!invoice) {
				layer.msg('发票抬头不能为空');
				return;
			}
			var tax_num = this.comp("input2").val();
			if (!tax_num) {
				layer.msg('税号不能为空');
				return;
			}
			var bank_name = this.comp("input3").val();
			var bank = this.comp("input4").val();
			var bank_account = this.comp("input5").val();
			var invoice_address = this.comp("input6").val();
			var invoice_content = this.comp("textarea1").val();
			if (this.vId == 2) {
				if (!bank_name) {
					layer.msg('开户名称不能为空');
					return;
				}

				if (!bank) {
					layer.msg('开户银行不能为空');
					return;
				}

				if (!bank_account) {
					layer.msg('银行帐号不能为空');
					return;
				}

				if (!invoice_address) {
					layer.msg('企业地址不能为空');
					return;
				}
			}
			var params = {};
			params.id = id;
			params.invoice = invoice;
			params.tax_num = tax_num;
			params.bank_name = bank_name;
			params.bank = bank;
			params.bank_account = bank_account;
			params.invoice_address = invoice_address;
			params.remark = invoice_content;
			this.setInvoiceParams(params);
			
		}
			var blankData = this.comp("blankData");
			var params = {};
			params.vId = this.vId;// 发票类型
			params.name = this.comp("button1").get("label") + "-" + this.title;
			params.id = blankData.getValue("id");
			this.getParentModel().getBillInfoChoose(params);
			this.close();
		
	};
	Model.prototype.setInvoiceParams = function(params){
		var res = asCore.setGetFalse(inFace.editinvace, params);
		if (res.code === 200) {
			
		} else {
			justep.Util.hint(res.message);
		}
		
	};
	// 修改发票
	Model.prototype.button9Click = function(event) {
		// var params = {
		// "client_id" : this.client_id,
		// data : {
		// method : this
		// }
		// };
		// justep.Shell.showPage("modifyInvoice", params);

	};

	Model.prototype.modelActive = function(event) {
		// this.getBill(event);
	};

	Model.prototype.content2Active = function(event) {

	};

	Model.prototype.button4Click = function(event){
		this.comp("popOver4").show();
	};

	Model.prototype.li4Click = function(event){
		var row = event.bindingContext.$object;// 获取绑定的行数据
		var name = row.val('name');
		this.comp("button4").set({
			'label' : name
		});
		this.comp('popOver4').hide();
	};

	Model.prototype.li1Click = function(event){
		var rowData = event.bindingContext.$object;// 获取绑定的行数据
		var id = rowData.val("id");
		var name = rowData.val("name");
		this.comp("button1").set({
			"label" : name
		});
		var blankData = this.comp("blankData");
		this.vId = id;
		if (id == 0) {
			$(this.getElementsByXid('div21')).hide();
			$(this.getElementsByXid('div22')).hide();
			this.title = ""
		} else if (id == 1) {
			$(this.getElementsByXid('div22')).show();
			$(this.getElementsByXid('div21')).hide();
			this.title = blankData.getValue("invoice")
		} else if (id == 2) {
			$(this.getElementsByXid('div21')).show();
			$(this.getElementsByXid('div22')).show();
			this.title = blankData.getValue("invoice")
		}
		this.comp("popOver1").hide();
	};

	return Model;
});