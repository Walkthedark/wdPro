define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var common = require("$UI/wd/common/common");
	var Model = function() {
		this.callParent();
		this.vId = "0";// 这个是发票的ID
		this.mvID = "";
		this.pflag = 0;// 判断是否点了赠品
		this.proGoodsList = [];// 商品的数据
		this.goods_id_p = "";// 父类商品的的ID
		this.goods_id_f = "";// 满足优惠的条件
		this.promotion_id = "";// 活动ID
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据
		 */
		// var url = require.toUrl("./cart/json/goodsData.json");
		// allData.loadDataFromFile(url,event.source,true);
	};
	// 获取店铺信息
	Model.prototype.shopDataCustomRefresh = function(event) {
		/*
		 * 1、加载店铺数据
		 */
		// var url = require.toUrl("./cart/json/shopData.json");
		// allData.loadDataFromFile(url,event.source,true);
	};
	// 获取邮寄信息
	Model.prototype.sendDataCustomRefresh = function(event) {
		/*
		 * 1、加载邮寄数据
		 */
		// var url = require.toUrl("./cart/json/sendData.json");
		// allData.loadDataFromFile(url,event.source,true);
	};

	// 打开成功页面
	Model.prototype.confirmBtnClick = function(event) {
		var self = this;
		/*
		 * 1、确认按钮点击事件 2、打开成功页面
		 */

		// 获取选择的用户ID
		var params = {};
		// params.client_id = this.cClinet_id;// 获取被选择用户的ID
		var delivery_time_inp = this.comp("input2").val();// 获取交货时间
		params.delivery_time = delivery_time_inp;
		params.bill_message = this.vId;// 获取发票ID
		if (this.vId != 0) {
			params.invoice_id = this.mvID;// 获取发票ID
		}
		// // 获取订单的备注
		var desc = this.comp("input1").val();
		params.order_des = desc;
		var adressData = this.comp("adressData");
		params.address_id = adressData.getRowID();
		// 获取商品信息
		var goodsDataM = this.comp("goodsDataM");
		var goods = [];
		goodsDataM.each(function(param) {
			var p = {};
			var goods_id =  param.row.val("goods_id");
			p.goods_id =goods_id;
			var res = asCore.search(self.proGoodsList, 'pid', goods_id);
			if(res.length > 0){
				p.gift = res;
			}
			p.quantity = param.row.val("goods_num");
			p.unit_id = param.row.val("unit_id");
			p.specification = param.row.val("specification_id");
			p.order_goods_des = param.row.val("remark");
			goods.push(p);
		});
		params.goods = goods;
		params.is_discount = 0;
		params.discount_price = '0';
		params.order_accessory = [];
		params.make = localStorage.getItem("user");
		// // 调取接口上传
		
		this.saveOrder(params);
	};
	// 上传订单
	Model.prototype.saveOrder = function(params) {
		var res = asCore.setPostFalse(inFace.saveOrder, params);
		if (res.code === 200) {
			justep.Util.hint("下单成功！");
		} else {
			justep.Util.hint(res.message);
		}
		;
	};

	Model.prototype.sendClick = function(event) {
		/*
		 * 1、配送方式按钮点击事件 2、显示配送列表
		 */
		// this.comp("popOver").show();
	};

	Model.prototype.sendLiClick = function(event) {
		/*
		 * 1、配送列表点击事件 2、选中配送方式，关闭配送列表
		 */
		this.comp("sendData").setValue("fState", 0);
		var row = event.bindingContext.$object;
		row.val("fState", 1);
		var title = row.val("fSendName") + " " + row.val("fCost");
		$("span[xid=sendTitle]", this.getRootNode()).text(title);
		this.comp("popOver").hide();
	};
	// 参数接收事件
	Model.prototype.modelParamsReceive = function(event) {
		var goodsDataM = this.comp("goodsDataM");
		var orderFlagData = this.comp("orderFlagData");
		var data = this.params.data;
		// 获取活动
		var params = {};
		params.clinet_id = 0;
		params.goodsData = data;
		var res = common.getPromotionMoney(params);
		if (res.orderFlag == 1) {
			orderFlagData.setValueByID('flag', 1, 1);
			orderFlagData.setValueByID('newPrice', res.resD.orderReductionPrice, 1);
		} else {
			orderFlagData.setValueByID('flag', 0, 1);
			orderFlagData.setValueByID('newPrice', res.allGoodsNum, 1);
		}
		goodsDataM.loadData(res.returnDoodsData, false);
	};
	// 接管地址刷新
	Model.prototype.adressDataCustomRefresh = function(event) {
		var params = {};
		params.client_id = localStorage.getItem("client_id");
		// 获取购物车
		var res = asCore.setGetFalse(inFace.Clientaddress, params);
		if (res.code === 200) {
			var pa = [];
			pa.push(res.data);
			var adressData = this.comp("adressData");
			adressData.loadData(pa, false);
			// 加入过滤条件，设置成默认的地址
			// this.comp("list1").set({
			// "filter" : "$row.val(" + "\"" + "is_default" + "\"" + ") == 1"
			// });
		} else {
			justep.Util.hint(res.message);
		}
	};
	// 获取地址
	Model.prototype.button4Click = function(event) {
		var params = {
			"id" : 1,
			data : {
				method : this
			}
		};
		justep.Shell.showPage("addressList", params);
	};
	Model.prototype.setAdress = function(params) {
		var data = params.data || {};
		var params = [];
		params.push(data);
		var adressData = this.comp("adressData");
		adressData.loadData(params, false);
		adressData.refreshData();
	};
	// 选择发票
	Model.prototype.button1Click = function(event) {
		// invoiceList
		justep.Shell.showPage("invoiceList");
	};
	Model.prototype.getBillInfoChoose = function(params) {
		// this.vId
		this.vId = params.vId;
		this.mvID = params.id;
		this.comp("button1").set({
			"label" : params.name
		});
	};
	// 获取赠品
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
	// 赠品的
	Model.prototype.button17Click = function(event) {
		var protionData = this.comp("protionData");
		var goods_id = protionData.getCurrentRowID(); // 获取选中的行ID
		if (goods_id != null) {// 不能为空
			var params = {};
			// 判断是否存在在数组中
			var res = asCore.search(this.proGoodsList, 'pid', this.goods_id_p);
			if (res.length > 0) {// 存在赠品，删除上个赠品
				for (var int = 0; int < this.proGoodsList.length; int++) {
					if( this.proGoodsList[int].pid == this.goods_id_p){
						this.proGoodsList.splice(int,1);
					}
				}
			}
			params.goods_id = goods_id;// 塞入选赠商品的ID
			params.full = this.goods_id_f;// 塞入满足的档位
			params.promotion_id = this.promotion_id;// 塞入活动ID
			params.pid = this.goods_id_p;
			params.goods_name = protionData.getValueByID("goods_name", goods_id);
			params.goods_img =  protionData.getValueByID("goods_img", goods_id);
			this.proGoodsList.push(params);
			var pdata = this.comp("pdata");
			pdata.loadData(this.proGoodsList, false, null, 1, true);
			this.comp("popOver2").hide();
		} else {
			justep.Util.hint("请选择赠品", {
				'type' : 'danger'
			});
		}

	};
	return Model;
});