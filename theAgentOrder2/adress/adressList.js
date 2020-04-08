define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.client_id = "";
		this.pageTotal = 0;
		this.pageTotal = 1;
	};

	Model.prototype.addressCustomRefresh = function(event) {
		
	};

	Model.prototype.addAddressClick = function(event) {
		//this.comp('windowDialog1').open();
	};

	// 获取所有地址
	Model.prototype.modelParamsReceive = function(event) {
		var par = {};
		var client_id = this.params.client_id;
		par.client_id = client_id;
		this.client_id = client_id;
		var res = asCore.setGetFalse(inFace.Clientaddress, par);
		if (res.code === 200) {
			if(this.page = 1){
				var total = res.data.pager.total;
				this.pageTotal = total % 10 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;
			}
			var adressData = this.comp("adressData");
			adressData.loadData(res.data.data, false);
			this.page += 1;
		} else {
			justep.Util.hint(res.message);
		}
	};
	// 地址选择
	Model.prototype.row1Click = function(event) {
		event.stopPropagation();
		var row = event.bindingContext.$object;
		var params ={};
		var client_address_id = row.val("client_address_id");
		params.client_address_id = client_address_id;
		localStorage.setItem("address_id", client_address_id);
		params.address = row.val("address");
		params.phone = row.val("phone");
		params.consignee = row.val("consignee");
		params.area = row.val("area");
		this.params.data.method.setAdress({data:params});
		history.back();
		this.comp("adressData").clear();
	};

	Model.prototype.button1Click = function(event) {
		event.stopPropagation();
	};

	Model.prototype.button2Click = function(event) {
		event.stopPropagation();
	};
	//添加新地址
	Model.prototype.button3Click = function(event){
		console.log(this.client_id );
		this.comp("windowDialog1").open({data:{client_id:this.client_id}});
	};
	//刷新地址数据
	Model.prototype.refreshAdress = function(event){
		this.page =1;
		var par = {};
		par.client_id =this.client_id;
		var res = asCore.setGetFalse(inFace.Clientaddress, par);
		if (res.code === 200) {
			if(this.page = 1){
				var total = res.data.pager.total;
				this.pageTotal = total % 10 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;
			}
			var adressData = this.comp("adressData");
			adressData.loadData(res.data.data, false);
			this.page += 1;
		} else {
			justep.Util.hint(res.message);
		}
	};
	Model.prototype.scrollView1PullUp = function(event){
		if (this.pageTotal < this.page) {
			return;
		};
		var params = {};
		params.client_id =this.client_id;
		params.page = this.page;
		this.uoLoadData(params);
	};
	Model.prototype.uoLoadData = function(params){
		var res = asCore.setGetFalse(inFace.Clientaddress, params);
		if (res.code === 200) {
			var adressData = this.comp("adressData");
			adressData.loadData(res.data.data, true);
			this.page+=1;
		} else {
			justep.Util.hint(res.message);
		}
	};
	return Model;
});