define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	// 获取促销价格的核心js
	var common = require("$UI/theAgentOrder2/placeOrder/common");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var cusName = "";
	var Model = function() {
		this.callParent();
		this.imgData = "";
		this.imgDataArray = new Array();
		this.UrlData = "";
		this.vId = "0";// 这个是发票的ID
		this.mvID = "";
		this.cClinet_id = "";
		//
		this.showId = 1;
		// 选择的商品
		this.goodsDataListChoose = [];
		this.proGoodsList = [];// 商品的数据
		this.goods_id_p = "";// 父类商品的的ID
		this.giftGoodsList = [];// 直接选择的赠品
		this.goods_id_f = "";// 满足优惠的条件
		this.promotion_id = "";// 活动ID
	};

	Model.prototype.button2Click = function(event) {
		// var goodsData = this.comp("goodsData");
		var orderFlag = localStorage.getItem("orderFlag");
		var params = {
			clinet_id : this.cClinet_id,
			data : {
				method : this
			}
		};
		if (orderFlag == 1) {
			justep.Shell.showPage("orderDialogS", params);
		} else {
			justep.Shell.showPage("secondOrder", params);
		}
	};
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		// return url;
		return require.toUrl("$UI/TheSaleEnterprise/Commonly/img/006.png");
	};
	// 展示&&隐藏
	Model.prototype.button4Click = function(event) {
		if (this.showId == 1) {
			$(this.getElementByXid("list2")).hide();
			this.comp("button4").set({
				"icon" : "icon-arrow-up-b"
			})
			this.showId = 2;
		} else {
			$(this.getElementByXid("list2")).show();
			this.comp("button4").set({
				"icon" : "icon-arrow-down-b"
			})
			this.showId = 1;
		}

	};
	Model.prototype.modelLoad = function(event) {

	};

	Model.prototype.row9Click = function(event) {
		// this.comp("customerDialog").open();
		var params = {
			data : {
				cClinet_id : this.cClinet_id,
				method : this
			}
		};
		justep.Shell.showPage("customer", params);
	};
	// 用与子类页面
	Model.prototype.customerDialogReceive = function(p) {
		var clientData = this.comp("clientData");
		var params = [];
		var para = {};
		para.level_id = p.level_id;
		para.client_name = p.client_name;
		var client_id = p.client_id;
		para.client_id = client_id;// 获取用户的ID
		this.cClinet_id = client_id;
		params.push(para);
		clientData.loadData(params, false);
		clientData.refreshData();
		// 获取地址
		this.getAddressInfo(event);
		this.goodsDataListChoose = [];
		this.comp("goodsDataM").deleteAllData();
	};
	// 获取
	Model.prototype.getAddressInfo = function(event) {
		var params = {};
		var clientData = this.comp("clientData");
		var client_id = clientData.getValue("client_id");
		params.client_id = client_id;
		var res = asCore.setGetFalse(inFace.getDefaultAddress, params);
		if (res.code === 200) {
			var addressData = this.comp("addressData");
			if (res.data.client_address_id == null) {
				addressData.clear();
				return;
			}
			var p = [];
			p.push(res.data);
			addressData.loadData(p, false);
			addressData.refreshData();
		} else {
			layer.msg(res.message);
		}
		;

	};
	Model.prototype.output1Render = function(event) {
		var infoData = this.comp("infoData");
		var shdh = infoData.getValue("shdh");
		var shr = event.value;
		if (shr) {
			event.html = asCore.isNull(shr) + asCore.isNull(shdh);
		} else {
			event.html = "";
		}
	};
	Model.prototype.goodsDataAfterRefresh = function(event) {

	};
	Model.prototype.goodsDataDataChange = function(event) {

	};
	// 获取商品数据
	Model.prototype.loadGoodsOrder = function(params) {
		var goodsDataM = this.comp("goodsDataM");
		// var row = goodsDataM.find([ 'uuid' ], [ params.uuid ], true, true,
		// true);
		var p = asCore.search2(this.goodsDataListChoose, 'goods_id', params.goods_id);
		if (p.length > 0) {// 商品选择过//判断是否是同一个单位
			if (p[0].unit_id != params.unit_id) {
				layer.msg('添加失败,同种商品只能添加同一的规格');
				return;
			}
			var sumValue = goodsDataM.getValueByID("goods_num", params.uuid);
			goodsDataM.setValueByID("goods_num", sumValue += 1, params.uuid);
			goodsDataM.refreshData();
			// 这个地方可以用到过滤的方法
			// 加入总体的数据
			this.addGoodsDataList(params.uuid, 1);
		} else {// 商品未测加过购物车
			var par = [];
			par.push(params);
			// 加入总体的数据
			this.goodsDataListChoose.push(params);

		}
		// 获取
		var params = {};
		// 添加客户的ID
		params.clinet_id = this.cClinet_id;
		params.goodsData = this.goodsDataListChoose;
		var orderFlagData = this.comp("orderFlagData");// 获取
		var res = common.getPromotionMoney(params);
		goodsDataM.loadData(res.returnDoodsData);
		if (res.orderFlag == 1) {
			orderFlagData.setValueByID('flag', 1, 1);
			orderFlagData.setValueByID('newPrice', res.resD.orderReductionPrice, 1);
		} else {
			orderFlagData.setValueByID('flag', 0, 1);
			orderFlagData.setValueByID('newPrice', res.allGoodsNum, 1);
		}
		goodsDataM.loadData(res.returnDoodsData);

	};
	// 将所有商品详情选择的商品加进去
	Model.prototype.loadGoodsOrderInfo = function(params) {
		var goodsDataM = this.comp("goodsDataM");
		for (var int = 0; int < params.length; int++) {
			var pa = goodsDataM.find([ 'goods_id' ], [ params[int].goods_id ], true, true, true);
			if (pa.length > 0) {// 商品选择过
				var uuid = pa[0].row.uuid.value.latestValue;
				var addSum = params[int].goods_num;
				var sumValue = goodsDataM.getValueByID("goods_num", uuid);
				var sumT = addSum + sumValue;
				goodsDataM.setValueByID("goods_num", sumT, uuid);
				this.addGoodsDataListInfo(uuid, addSum, 1);
			} else {// 商品未测加过购物车
				var par = [];
				par.push(params[int]);
				// 加入总体的数据
				this.goodsDataListChoose.push(params[int]);// 更新选中的商品数据
			}
		}
		// 获取
		var params = {};
		// 添加客户的ID
		params.clinet_id = this.cClinet_id;
		params.goodsData = this.goodsDataListChoose;
		var orderFlagData = this.comp("orderFlagData");// 获取
		var res = common.getPromotionMoney(params);
		if (res.orderFlag == 1) {
			orderFlagData.setValueByID('flag', 1, 1);
			orderFlagData.setValueByID('newPrice', res.resD.orderReductionPrice, 1);
		} else {
			orderFlagData.setValueByID('flag', 0, 1);
			orderFlagData.setValueByID('newPrice', res.allGoodsNum, 1);
		}
		goodsDataM.loadData(res.returnDoodsData);
	};
	// 将所有商品详情选择的商品加进去
	Model.prototype.ListloadGoodsOrderInfo = function(params) {
		var goodsDataM = this.comp("goodsDataM");
		for (var int = 0; int < params.length; int++) {
			var pa = goodsDataM.find([ 'goods_id' ], [ params[int].goods_id ], true, true, true);
			if (pa.length > 0) {// 商品选择过
				var uuid = pa[0].row.uuid.value.latestValue;
				var addSum = params[int].goods_num;
				// var sumValue = goodsDataM.getValueByID("goods_num", uuid);
				var sumT = addSum;
				goodsDataM.setValueByID("goods_num", sumT, uuid);
				this.addGoodsDataListInfo(uuid, addSum, 1);
			} else {// 商品未测加过购物车
				var par = [];
				par.push(params[int]);
				// 加入总体的数据
				this.goodsDataListChoose.push(params[int]);// 更新选中的商品数据
			}
		}
		// 获取
		var params = {};
		// 添加客户的ID
		params.clinet_id = this.cClinet_id;
		params.goodsData = this.goodsDataListChoose;
		var orderFlagData = this.comp("orderFlagData");// 获取
		var res = common.getPromotionMoney(params);
		if (res.orderFlag == 1) {
			orderFlagData.setValueByID('flag', 1, 1);
			orderFlagData.setValueByID('newPrice', res.resD.orderReductionPrice, 1);
		} else {
			orderFlagData.setValueByID('flag', 0, 1);
			orderFlagData.setValueByID('newPrice', res.allGoodsNum, 1);
		}
		goodsDataM.loadData(res.returnDoodsData);
	};
	// dddd
	Model.prototype.addGoodsDataListInfo = function(uuid, num, flag) {
		var goodsDataM = this.comp("goodsDataM");// 获取
		var orderFlagData = this.comp("orderFlagData");// 获取
		this.goodsDataListChoose = common.addPop(this.goodsDataListChoose, uuid, num, flag);
		var params = {};
		// 添加客户的ID
		params.clinet_id = this.cClinet_id;
		params.goodsData = this.goodsDataListChoose;
		var res = common.getPromotionMoney(params);
		// goodsDataM.loadData(res.returnDoodsData,false);
		if (res.orderFlag == 1) {
			orderFlagData.setValueByID('flag', 1, 1);
			orderFlagData.setValueByID('newPrice', res.resD.orderReductionPrice, 1);
		} else {
			orderFlagData.setValueByID('flag', 0, 1);
			orderFlagData.setValueByID('newPrice', res.allGoodsNum, 1);
		}
		goodsDataM.loadData(res.returnDoodsData, true, null, 1, true);
	};
	// 更新总体商品数据
	Model.prototype.addGoodsDataList = function(uuid, flag) {
		var goodsDataM = this.comp("goodsDataM");// 获取
		var orderFlagData = this.comp("orderFlagData");// 获取
		this.goodsDataListChoose = common.addReductionDelete(this.goodsDataListChoose, uuid, flag);
		var params = {};
		// 添加客户的ID
		params.clinet_id = this.cClinet_id;
		params.goodsData = this.goodsDataListChoose;
		var res = common.getPromotionMoney(params);
		// goodsDataM.loadData(res.returnDoodsData,false);
		if (res.orderFlag == 1) {
			orderFlagData.setValueByID('flag', 1, 1);
			orderFlagData.setValueByID('newPrice', res.resD.orderReductionPrice, 1);
		} else {
			orderFlagData.setValueByID('flag', 0, 1);
			orderFlagData.setValueByID('newPrice', res.allGoodsNum, 1);
		}
		goodsDataM.loadData(res.returnDoodsData, true, null, 1, true);
	};
	// 加
	Model.prototype.addBtnClick = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("uuid");// 获取商品ID
		var goodsDataM = this.comp("goodsDataM");// 获取
		if (goods_num >= 0) {
			goodsDataM.setValueByID("goods_num", goods_num += 1, goods_id);
			this.addGoodsDataList(goods_id, 1);
		}
	};
	// 减
	Model.prototype.reductionBtnClick = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("uuid");// 获取商品ID
		var goodsDataM = this.comp("goodsDataM");// 获取
		if (goods_num > 1) {
			goodsDataM.setValueByID("goods_num", goods_num -= 1, goods_id);
			this.addGoodsDataList(goods_id, 2);
		} else {
			goodsDataM.deleteData(goodsDataM.getRowByID(goods_id));
			goodsDataM.refreshData();
			this.addGoodsDataList(goods_id, 0);
		}

	};
	// 获取地址
	Model.prototype.row6Click = function(event) {

	};
	// 下单
	Model.prototype.settlementClick = function(event) {
		var self = this;
		// 获取选择的用户ID
		var params = {};
		params.client_id = this.cClinet_id;// 获取被选择用户的ID
		var delivery_time_inp = this.comp("input5").val();// 获取交货时间
		params.delivery_time = delivery_time_inp;
		params.bill_message = this.vId;// 获取发票ID
		if (this.vId != 0) {
			params.invoice_id = this.mvID;// 获取发票ID
		}
		if (!delivery_time_inp) {
			layer.msg('选择交货日期');
			return;
		}
		// 获取页面上的特价金额
		var Tprice = this.comp("input3").val();
		if (!Tprice || !$.trim(Tprice)) {
			// 这里面是空价格
			params.is_discount = 0;
			params.discount_price = 0;
		} else {
			params.is_discount = 1;
			params.discount_price = Tprice;
		}
		// 获取订单的备注
		var desc = this.comp("textarea4").val();
		params.order_des = desc;
		var addressData = this.comp("addressData");
		var client_address_id = addressData.getValue("client_address_id");
		if (client_address_id == null || client_address_id == "") {
			layer.msg('没有查询到地址');
		} else {
			// 获取默认地址的ID
			params.client_address_id = client_address_id;
		}
		// 获取商品信息
		var goodsDataM = this.comp("goodsDataM");
		var goods = [];
		var gift = [];
		goodsDataM.each(function(param) {
			var p = {};
			var goods_id = param.row.val("goods_id")
			p.goods_id = goods_id;
			var res = asCore.search2(self.proGoodsList, 'pid', goods_id);
			if (res.length > 0) {
				gift.push(res[0]);
			}
			;
			p.quantity = param.row.val("goods_num");
			p.unit_id = param.row.val("unit_id");
			p.dis_tag = param.row.val("dis_tag");
			p.specification = param.row.val("specification");
			p.order_goods_des = param.row.val("remark");
			goods.push(p);
		});
		params.goods = goods;
		params.order_accessory = [];
		params.gift = gift.concat(this.giftGoodsList);
		params.make = localStorage.getItem("client_id");
		var orderMoney = this.comp("input4").val();
		// 调取接口上传
		// console.log(params);
		this.saveOrder(params, orderMoney);
	};
	// 上传订单
	Model.prototype.saveOrder = function(params, orderMoney) {
		console.log(orderMoney);
		var res = asCore.setPostFalse(inFace.saveOrder, params);
		if (res.code === 200) {
			// 重置商品数据
			// 上传数据
			var order_id = res.data.order_id;// 获取关联的id

			this.goodsDataListChoose = [];
			this.comp("goodsDataM").clear();
			this.comp("data2").clear();
			this.comp("input3").val("");
			this.comp("input4").val("");
			this.giftGoodsList = [];
			localStorage.setItem("giftList", "[]");// 充值数据
			localStorage.setItem("cartList", "[]");
			if (orderMoney) {
				this.setOrderMoney(order_id, orderMoney);
			} else {
				layer.msg('代下单成功');
			}
		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	// 插入钱
	Model.prototype.setOrderMoney = function(order_id, orderMoney) {
		var params = {};
		params.client_id = this.cClinet_id;// 客户的ID
		params.receipt_date = justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT_SHOT);
		params.receipt_money = orderMoney;
		params.receipt_type = this.comp("button27").get('label');
		params.remark = "";
		var p = [];
		var pOrder = {};
		pOrder.order_id = order_id;
		pOrder.pay_money = orderMoney;
		p.push(pOrder);
		params.order = p;
		// add_receipt
		var res = asCore.setPostFalse(inFace.add_receipt, params);
		if (res.code === 200) {
			layer.msg('代下单成功');
		} else {
			layer.msg('代下单失败');
		}
	};
	// 打开选择发票
	Model.prototype.button17Click = function(event) {
		var clientData = this.comp("clientData");
		var client_id = clientData.getValue("client_id");
		this.comp("invoiceWinDiaLog").open({
			"data" : {
				client_id : client_id
			}
		});
	};
	Model.prototype.getBillInfoChoose = function(params) {
		// this.vId
		this.vId = params.vId;
		this.mvID = params.id;
		this.comp("button15").set({
			"label" : params.name
		});
	};
	Model.prototype.button14Click = function(event) {
		var clientData = this.comp("clientData");
		var client_id = clientData.getValue("client_id");
		var params = {
			"client_id" : client_id,
			data : {
				method : this
			}
		};
		justep.Shell.showPage("adressList", params);
	};
	Model.prototype.setAdress = function(params) {
		var data = params.data || {};
		var params = [];
		params.push(data);
		var addressData = this.comp("addressData");
		addressData.loadData(params, false);
		addressData.refreshData();
	};
	// 选增赠品
	Model.prototype.button20Click = function(event) {
		var protionData = this.comp("protionData");
		var goods_id = protionData.getCurrentRowID(); // 获取选中的行ID
		if (goods_id != null) {// 不能为空
			var params = {};
			// 判断是否存在在数组中
			var res = asCore.search2(this.proGoodsList, 'pid', this.goods_id_p);
			if (res.length > 0) {// 存在赠品，删除上个赠品
				for (var int = 0; int < this.proGoodsList.length; int++) {
					if (this.proGoodsList[int].pid == this.goods_id_p) {
						this.proGoodsList.splice(int, 1);
					}
				}
			}
			params.goods_id = goods_id;// 塞入选赠商品的ID
			params.full = this.goods_id_f;// 塞入满足的档位
			params.promotion_id = this.promotion_id;// 塞入活动ID
			params.pid = this.goods_id_p;
			params.goods_name = protionData.getValueByID("goods_name", goods_id);
			params.goods_img = protionData.getValueByID("goods_img", goods_id);
			this.proGoodsList.push(params);
			var pdata = this.comp("pdata");
			pdata.loadData(this.proGoodsList, false, null, 1, true);
			this.comp("popOver2").hide();
		} else {
			layer.msg('请选择赠品');
		}
	};
	// 打开选择商品的页面
	Model.prototype.div7Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		var sales_flag = row.val("sales_flag");
		var sales_flag_num = row.val("sales_flag_num");
		var goods_id = row.val("goods_id");
		this.goods_id_p = goods_id;
		this.goods_id_f = sales_flag_num;
		if (sales_flag == 0) {// 获取买赠的商品
			var promotion = row.val("promotion");// 获取的是活动详情
			var protionData = this.comp("protionData");
			protionData.loadData(promotion[0].promotion_detail[sales_flag_num].product, false);
			this.promotion_id = promotion[0].promotion_id;
			this.comp("popOver2").show();
		}
	};
	// 删除事件
	Model.prototype.div6Click = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;// 获取行数据
		var goods_id = row.val('goods_id');
		var goods_num = row.val('goods_num');
		var specification_id = row.val('specification_id');
		var uuid = row.val('uuid');
		this.comp('deleteOrderwinDialog').open({
			data : {
				goods_id : goods_id,
				goods_num : goods_num,
				clinet_id : this.cClinet_id,
				specification_id : specification_id,
				uuid : uuid
			}
		});
	};
	// 删除事件
	Model.prototype.deleteData = function(goods_id, uuid) {
		var goodsDataM = this.comp("goodsDataM");
		goodsDataM.deleteData(goodsDataM.getRowByID(uuid));
		goodsDataM.refreshData();
		this.addGoodsDataList(uuid, 0);
	};
	// 打开赠品
	Model.prototype.button22Click = function(event) {
		var params = {
			clinet_id : this.cClinet_id,
			data : {
				method : this
			}
		};
		justep.Shell.showPage("giftClassMain", params);
	};

	Model.prototype.giftListloadGoodsOrderInfo = function(param) {
		param[0].num = param[0].goods_num;
		var data2 = this.comp("data2");
		if (param[0].goods_id != null) {// 不能为空
			// 判断是否存在在数组中
			var res = asCore.search2(this.giftGoodsList, 'goods_id', param[0].goods_id);
			if (res.length > 0) {// 存在赠品，则加上数量
				this.giftGoodsList = asCore.addPo3(this.giftGoodsList, param[0].goods_id, param[0].goods_num, 1);// 重新赋值
			} else {
				this.giftGoodsList.push(param[0]);
			}
			data2.loadData(this.giftGoodsList, false, null, 1, true);
		} else {
			layer.msg('选择赠品出错！');
		}
	};
	// 赠品加
	Model.prototype.button30Click = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("goods_id");// 获取商品ID
		var uuid = row.val("uuid");// 获取商品ID
		var data2 = this.comp("data2");// 获取
		if (goods_num >= 0) {
			data2.setValueByID("goods_num", goods_num += 1, uuid);
			data2.setValueByID("num", goods_num += 1, uuid);
			this.giftGoodsList = asCore.addPop4(this.giftGoodsList, goods_id, 1, 1);
		}
		localStorage.setItem("giftList", JSON.stringify(this.giftGoodsList));
	};
	// 赠品减
	Model.prototype.button29Click = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var uuid = row.val("uuid");// 获取商品ID
		var goods_id = row.val("goods_id");// 获取商品ID
		var data2 = this.comp("data2");// 获取
		if (goods_num > 1) {
			data2.setValueByID("goods_num", goods_num -= 1, uuid);
			data2.setValueByID("num", goods_num += 1, uuid);
			this.giftGoodsList = asCore.addPop4(this.giftGoodsList, goods_id, 1, 2);
		} else {
			data2.deleteData(data2.getRowByID(uuid));
			data2.refreshData();
			this.giftGoodsList = asCore.addPop2(this.giftGoodsList, goods_id, 1, 0);
		}
		localStorage.setItem("giftList", JSON.stringify(this.giftGoodsList));
	};
	// 获取收款方式
	Model.prototype.PaymenTypeDataCustomRefresh = function(event) {
		var params = {};
		var res = asCore.setGetFalse(inFace.receipt_type, params);
		if (res.code === 200) {
			this.comp("PaymenTypeData").loadData(res.data, false);
		} else {
			layer.msg('收款方式选择出错！');
		}
		;
	};
	// 收款方式
	Model.prototype.li4Click = function(event) {
		var row = event.bindingContext.$object;// 获取绑定的行数据
		var id = row.val('id');
		var name = row.val('name');
		this.comp("button27").set({
			'label' : name
		});
		this.comp('popOver4').hide();
	};
	Model.prototype.div34Click = function(event) {
		this.comp('popOver4').show();
	};
	//
	Model.prototype.input3Blur = function(event) {
		var inpVal = this.comp("input3").val();
		if (!asCore.isNumber(inpVal)) {
			this.comp("input3").val("");
			layer.msg('订单特批价请填写数字哦');
		}

	};
	Model.prototype.input4Blur = function(event) {
		var inpVal = this.comp("input4").val();
		if (!asCore.isNumber(inpVal)) {
			this.comp("input4").val("");
			layer.msg('实收金额请填写数字哦');
		}
	};

	Model.prototype.modelParamsReceive = function(event) {
//		var nowDate = justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT_SHOT);
//		var ins22 = laydate.render({
//			elem : '#input5DateChoose',
//			min : nowDate,
//			max : '2100-10-14',
//			ready : function() {
//				ins22.hint('日期可选值设定在 <br> '+nowDate+' 到 2100-10-14');
//			}
//		});
	};

	Model.prototype.data1ValueChanged = function(event){
		var nowDate =justep.Date.toString(new Date(), justep.Date.STANDART_FORMAT_SHOT);
		var pNowDate = new Date(nowDate);
		var dateChoose =  this.comp("input5").val();
		var cDate = new Date(dateChoose);
		if(cDate < pNowDate){
			layer.msg('请选择大于今日的日期');
			this.comp("input5").val("");
		}
	};

	return Model;
});