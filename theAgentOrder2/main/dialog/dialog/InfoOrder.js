define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");

	var Model = function() {
		this.callParent();
		this.goods_flag = 1;
	};

	Model.prototype.modelParamsReceive = function(event) {
		var params = {};
		params.id = this.params.order_id;
		var res = asCore.setGetFalse(inFace.detail, params);
		if (res.code === 200) {
			// 获取订单data.order
			var order = res.data.order;// 获取的是订单的详情数据
			var orderList = [];
			orderList.push(order);
			this.comp("orderData").loadData(orderList, false);
			this.comp("orderData").refreshData();
			// 获取地址
			var address = res.data.address;// 获取的发货的地址
			var addressList = [];
			addressList.push(address);
			this.comp("addressData").loadData(addressList, false);
			this.comp("addressData").refreshData();
			// 获取商品列表
			var goods = res.data.goods;// 获取的发货的地址
			this.comp("goodsData").loadData(goods, false);
			this.comp("goodsData").refreshData();
			var logs = res.data.log;
			this.comp("logData").loadData(logs, false);
			this.comp("logData").refreshData();
			var gift = res.data.order_gift;
			this.comp("data2").loadData(gift, false);
			this.comp("data2").refreshData();
		} else {
			justep.Util.hint(res.message);
		};
	};
	// 点击隐藏事件
	Model.prototype.button8Click = function(event) {
		if (this.goods_flag == 1) {
			$(this.getElementByXid("div13")).fadeIn(1000);
			this.goods_flag = 2;
		} else {
			$(this.getElementByXid("div13")).hide();
			this.goods_flag = 1;
		}
	};
	// 打开log日志
	Model.prototype.media3Click = function(event) {
		this.comp("popOver1").show();
	};

	return Model;
});