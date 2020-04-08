define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");

	var Model = function() {
		this.callParent();
		this.goods_flag = 1;
		this.id = "";
	};

	Model.prototype.modelParamsReceive = function(event) {
		var params = {};
		params.id = this.params.order_id;
		this.id = params.id;
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
			// 获取日志
			var logs = res.data.log;
			this.comp("logData").loadData(logs, false);
			this.comp("logData").refreshData();
			var gift = res.data.order_gift;
			this.comp("data2").loadData(gift, false);
			this.comp("data2").refreshData();
		} else {
			justep.Util.hint(res.message);
		}
		;
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
	//
	Model.prototype.button1Click = function(event) {
		alert("是否要取消订单")
	};

	Model.prototype.button2Click = function(event) {
		var params = {};
		params.order_id = this.id;
		var orderData = this.comp("orderData");
		params.client_id = orderData.getValue("client_id");
		var res = asCore.setGetFalse(inFace.changeState, params);
		if (res.code == 200) {
			justep.Util.hint("订单状态修改成功");
			this.modelParamsReceive(event);
		} else {
			justep.Util.hint("订单状态无法修改", {
				"type" : "danger"
			});

		}
	};
	//
	Model.prototype.media3Click = function(event) {
		this.comp("popOver1").show();
	};
	// 打开提示框
	Model.prototype.button3Click = function(event) {
		this.comp("messageDialog1").show();
	};

	Model.prototype.messageDialog1OK = function(event) {
		this.comp("popOver2").show();
	};

	Model.prototype.button27Click = function(event) {
		var textValue = this.comp("textarea1").val();
		if (!textValue) {
			justep.Util.hint("请输入取消的原因", {
				"type" : "danger"
			});
			return;
		}
		var params = {};
		params.order_id = this.id;
		params.reason = textValue;
		var orderData = this.comp("orderData");
		params.client_id = orderData.getValue("client_id");
		var res = asCore.setGetFalse(inFace.oederCancel, params);
		if (res.code == 200) {
			
			this.comp("popOver2").hide();
			this.modelParamsReceive(event);
		} else {
			justep.Util.hint("订单取消失败", {
				"type" : "danger"
			});
		}
	};
	//修改订单
	Model.prototype.button9Click = function(event){
		//只有状态是带订单审核的时候才可以修改
		//先获取订单
		var params = {};
		params.order_id = this.id;//订单ID
		justep.Shell.showPage("planceOrderTwo",params)
	};

	return Model;
});