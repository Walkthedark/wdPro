define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		var id = event.bindingContext.$object.val("id");
		this.comp("infoDialog").open({
			data : {
				id : id
			}
		});
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.wReceiverReceive = function(event) {
	};

	Model.prototype.modelLoad = function(event) {
		this.initData(1);
		this.initData(2);
		this.initData(3);
		this.initData(4);
		this.initData(5);
		//
	};
	Model.prototype.initData = function(type) {
		var sendUrl = "/index/mobile/xsdd";
		var self = this;
		var data = {};
		var dataSource;
		if (type == "1")
			dataSource = this.comp("orderData");
		if (type == "2")
			dataSource = this.comp("spData");
		if (type == "3")
			dataSource = this.comp("dfData");
		if (type == "4")
			dataSource = this.comp("dsData");
		if (type == "5")
			dataSource = this.comp("ysData");
		data.type = type;
		asCore.xsdd(sendUrl, data, function(data) {
			dataSource.loadData(data);
		});
		
	}
	Model.prototype.newDialogClose = function(event) {
		this.initData(1);
		this.initData(2);
	};
	Model.prototype.newDialogReceive = function(event) {
		var id = event.data.id;
		var title = event.data.title;
		this.comp("newDialog").open({
			data : {
				id : id,
				title : title
			}
		});
	};
	//获取商品数据
	Model.prototype.loadGoodsOrder = function(params) {
		var goodsDataM = this.comp("goodsDataM");
		if(goodsDataM.find(['goods_id'], [params.goods_id], true,true,true).length >0){//商品选择过
			//var sumValue = tempGoodsData.getValueByID("NUM", GOODS_ID);
		}else{//商品未测加过购物车
			var par = [];
			par.push(params);
			goodsDataM.loadData(par,true);
		}
		
	};
	return Model;
});
