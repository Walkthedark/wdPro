define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function() {
		this.callParent();
		this.classNameFlag = 0;//
		this.className = "";
	};
	Model.prototype.modelUnLoad = function(event) {

	};
	Model.prototype.button13Click = function(event) {
		justep.Shell.showPage('placeOrder');
	};
	// 模型加载事件
	Model.prototype.modelLoad = function(event) {

	};
	Model.prototype.li1Click = function(event) {
		// 获取数据
		var rowData = event.bindingContext.$object;
		var params = {};
		params.order_id = rowData.val("order_id");
		var type = rowData.val("type");
		if (type == 0 || type == 1 || type == 2) {
			justep.Shell.showPage("orderAudit", params);
		} else {
			justep.Shell.showPage("InfoOrder", params);
		}

	};
	// 上划加载数据
	Model.prototype.scrollView1PullUp = function(event) {

	};
	// 订单分类展开
	Model.prototype.button10Click = function(event) {
		if (this.classNameFlag == 0) {
			var params = {};
			var res = asCore.setGetFalse(inFace.getOrderState, params);
			if (res.code === 200) {
				this.comp("data2").loadData(res.data, false);
				if (res.data.length <= 0) {
					justep.Util.hint("尚未获取到订单分类", {
						'type' : 'danger'
					});
					return;
				}
				this.classNameFlag = 1;
				this.comp("popOver3").show();
			} else {
				justep.Util.hint(res.message, {
					'type' : 'danger'
				});
			}
			;
		} else {
			this.comp("popOver3").show();
		}
	};
	// 获取订单分类
	Model.prototype.li3Click = function(event) {
		var row = event.bindingContext.$object;// 获取绑定的行数据
		this.className = row.val("id");// 赋值
		var name = row.val("name");// 赋值
		this.comp("button10").set({
			'label' : name
		});
		var params = {};
		params.type = this.className;
		var res = asCore.setGetFalse(inFace.sales_order, params);
		if (res.code === 200) {
			var orderData = this.comp("orderData");
			orderData.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		}
		this.comp("popOver3").hide();
	};
	Model.prototype.button11Click = function(event) {
		justep.Shell.showPage("orderInfoLook");
	};
	Model.prototype.button14Click = function(event) {
		var orderFlag = localStorage.getItem("orderFlag");
		if (orderFlag == 1) {
			localStorage.setItem("orderFlag", "2");
			layer.msg('切换成功');
		} else {
			localStorage.setItem("orderFlag", "1");
			layer.msg('切换成功');
		}
	};
	Model.prototype.content3Active = function(event) {
		var params = {};
		var res = asCore.setGetFalse(inFace.sales_order, params);
		if (res.code === 200) {
			var orderData = this.comp("orderData");
			orderData.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		}
		;
		var p = {};
		p.type = 'week', 
		this.getorderCensus(p);

	};
	Model.prototype.orderCensusDataCustomRefresh = function(event) {

	};
	Model.prototype.getorderCensus = function(params) {
		var res = asCore.setGetFalse(inFace.orderCensus, params);
		if (res.code === 200) {
			var p = [];
			var pd = {};
			pd.id =  justep.UUID.createUUID();
			pd.count = res.data.count;
			pd.price = res.data.price;
			p.push(pd);
			this.comp("orderCensusData").loadData(p,false);
			this.comp("orderCensusData").refreshData();
		} else {
			justep.Util.hint(res.message);
		};
	};
	Model.prototype.li8Click = function(event){
		var row = event.bindingContext.$object;// 获取绑定的行数据
		var id = row.val('id');
		var name = row.val('name');
		var p = {};
		p.type = id;
		this.getorderCensus(p);
		this.comp("button4").set({'label':name});
		this.comp('popOver4').hide();
	};
	return Model;
});