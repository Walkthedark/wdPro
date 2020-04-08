define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.addressCustomRefresh = function(event) {
		var addressList = [ {
			id : 1,
			name : '舒畅',
			tell : '17521011623',
			address_area : '上海市-上海市-杨浦区',
			address_detail : '黄兴路217号二钢明珠楼A座201室'
		}, {
			id : 2,
			name : '车瑞',
			tell : '18621013562',
			address_area : '上海市-上海市-杨浦区',
			address_detail : '黄兴路217号二钢明珠楼A座202室'
		} ];
		this.comp("address").loadData(addressList);
	};

	Model.prototype.addAddressClick = function(event) {
		this.comp('windowDialog1').open();
	};

	// 获取所有地址
	Model.prototype.modelParamsReceive = function(event) {
		var params = {};
		params.client_id = localStorage.getItem("client_id");
		// 获取购物车
		var res = asCore.setGetFalse(inFace.clientaddressAll, params);
		if (res.code === 200) {
			var adressData = this.comp("adressData");
			adressData.loadData(res.data, false);
			// 加入过滤条件，设置成默认的地址

		} else {
			justep.Util.hint(res.message);
		}
	};
	// 地址选择
	Model.prototype.row1Click = function(event) {
		event.stopPropagation();
		var row = event.bindingContext.$object;
		var params ={};
		params.address_id =row.val("address_id");
		params.address = row.val("address");
		params.phone = row.val("phone");
		params.consignee = row.val("consignee");
		params.area = row.val("area");
		this.params.data.method.setAdress({data:params});
		justep.Shell.closePage();
	};

	Model.prototype.button1Click = function(event) {
		event.stopPropagation();
	};

	Model.prototype.button2Click = function(event) {
		event.stopPropagation();
	};

	return Model;
});