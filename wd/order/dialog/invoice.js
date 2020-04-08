define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.client_id;
		this.vId = "0";
		this.title ="";
	};
	// 获取信息
	Model.prototype.modelParamsReceive = function(event) {
		this.client_id = localStorage.getItem("client_id");;
		this.getBill(event);
	};
	Model.prototype.getBill = function(event) {
		var params = {};
		params.client_id = this.client_id;
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
	// 选择发票
	Model.prototype.button1Click = function(event) {
		this.comp("popPicker1").show();
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
			this.title =  blankData.getValue("invoice")
		} else if (id == 2) {
			$(this.getElementsByXid('div21')).show();
			$(this.getElementsByXid('div22')).show();
			this.title =   blankData.getValue("invoice")
		}
	};
	//保存发票信息
	Model.prototype.button3Click = function(event){
		var blankData = this.comp("blankData");
		var params = {};
		params.vId = this.vId;//发票类型
		params.name = this.comp("button1").get("label")+"-"+this.title;
		params.id = blankData.getValue("id");
		this.getParentModel().getBillInfoChoose(params);
		this.close();
	};

	return Model;
});