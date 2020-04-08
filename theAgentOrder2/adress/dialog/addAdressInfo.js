define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.area = [];
		this.client_id = "";
	};
	// 提交地址数据
	Model.prototype.button3Click = function(event) {
		//获取数据
		var consignee = this.comp("input2").val();
		if(!consignee){
			justep.Util.hint("请填写收货人", {'type':'danger'});
			return;
		}
		var phone = this.comp("input3").val();
		if(!phone){
			justep.Util.hint("请填写联系方式", {'type':'danger'});
			return;
		}
		if(this.area.length<=0){
			justep.Util.hint("请选择地址", {'type':'danger'});
			return;
		}
		var address = this.comp("input5").val();
		if(!address){
			justep.Util.hint("请填写详细地址", {'type':'danger'});
			return;
		}
		var params = {};
		params.consignee = consignee;
		params.phone = phone;
		params.area = this.area;
		params.is_default = this.comp("checkbox1").val();
		params.address = address;
		params.client_id = this.client_id;
		this.setAdressInfo(params);
	};
	Model.prototype.setAdressInfo = function(params) {
		var res = asCore.setGetFalse(inFace.addAdress, params);
		if (res.code === 200) {
			justep.Util.hint("地址新增成功");//refreshAdress
			this.getParentModel().refreshAdress();
			this.close();
		} else {
			justep.Util.hint(res.message);
		}
	};
	//
	Model.prototype.modelParamsReceive = function(event) {
		this.client_id = this.params.data.client_id;
	};
	Model.prototype.getAdressInfo = function(area, nameValue) {
		this.comp("button6").set({
			'label' : nameValue
		});
		this.area = area;
	};
	Model.prototype.input3Blur = function(event){
		var inpVal = this.comp("input3").val();
		if(!asCore.isNumber(inpVal)){
			this.comp("input3").val("");
		}
		
	};
	return Model;
});