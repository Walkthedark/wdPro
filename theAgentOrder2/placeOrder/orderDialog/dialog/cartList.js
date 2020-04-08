define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
		var common = require("$UI/theAgentOrder2/placeOrder/common");
	var Model = function() {
		this.callParent();
		this.isBack;
	};

	// 返回上一页
	Model.prototype.backBtnClick = function(event) {
		/*
		 * 1、返回上一页 2、添加派发事件 代码如下： justep.Shell.closePage();
		 * setTimeout(function(){ justep.Shell.fireEvent("onRestoreContent",
		 * {}); },500);
		 */
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {

	};
	// 获取店铺信息
	Model.prototype.shopDataCustomRefresh = function(event) {

	};
	// 全选
	Model.prototype.allChooseChange = function(event) {

	};

	// 减数量//商品
	Model.prototype.reductionBtnClick = function(event) {
		/*
		 * 1、减少数量按钮绑定点击事件onClick() 2、点击按钮，当前记录的fNumber值减1 3、fNumber为1时不再相减
		 */
		var row = event.bindingContext.$object;
		var json = localStorage.getItem("cartList");
		var jsonData = JSON.parse(json);
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("uuid");// 获取商品ID
		var goodsDataM = this.comp("goodsDataM");// 获取
		if (goods_num > 1) {
			goodsDataM.setValueByID("goods_num", goods_num -= 1, goods_id);
			var resData = common.addReductionDelete(jsonData,goods_id,2);
			localStorage.setItem("cartList",JSON.stringify(resData));
		}else{
			var resData = common.addReductionDelete(jsonData,goods_id,0);
			localStorage.setItem("cartList",JSON.stringify(resData));
			goodsDataM.refreshData();
		}
		//获取商品数据
	};

	// 加数量//商品
	Model.prototype.addBtnClick = function(event) {
		/*
		 * 1、增加数量按钮绑定点击事件onClick() 2、点击按钮，当前记录的fNumber值加1
		 */
		var row = event.bindingContext.$object;
		//asCore
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("uuid");// 获取商品ID
		var goodsDataM = this.comp("goodsDataM");// 获取
		if (goods_num >= 0) {
			goodsDataM.setValueByID("goods_num", goods_num += 1, goods_id);
		}
		//获取商品数据
		var json = localStorage.getItem("cartList");
		var jsonData = JSON.parse(json);
		var resData = common.addReductionDelete(jsonData,goods_id,1);
		localStorage.setItem("cartList",JSON.stringify(resData));
	};
	// 删除
	Model.prototype.delBtnClick = function(event) {
		/*
		 * 1、删除按钮点击事件 2、删除选中商品 3、如果商店里已经没有商品，则删除商店
		 */
		
	};

	Model.prototype.showBackBtn = function(isBack) {
		/*
		 * 1、根据参数修改calculateData
		 * 
		 * this.isBack = isBack; var v = isBack ? 1 : 0;
		 * this.comp("calculateData").setValue("isBack",v);
		 */
	};

	// 结算事件
	Model.prototype.settlementClick = function(event) {
		//打开结算页面
		justep.Shell.showPage("placeOrder2");
	};

	Model.prototype.listClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据
		 */

	};
	Model.prototype.modelActive = function(event) {
		this.goodsDataMCustomRefresh(event);
		this.giftDataCustomRefresh(event);
	};
	// 购物车加载事件
	Model.prototype.goodsDataMCustomRefresh = function(event) {
			var json = localStorage.getItem("cartList");
			var jsonData = JSON.parse(json);
			this.comp("goodsDataM").loadData(jsonData, false);
//			this.comp("button6").set({"label":"商品种类("+jsonData.length+")"})
	};
	// change事件
	Model.prototype.checkbox2Change = function(event) {
		this.goodsDataSum(event);
	};
	// 结算事件
	Model.prototype.goodsDataSum = function(event) {
		
	};

	Model.prototype.goodsDataMValueChanged = function(event){
		// 计算选择的商品
		var goodsDataM = this.comp("goodsDataM");
		var goodsOrder = [];
		var dataJson = goodsDataM.toJson();
		for (var int = 0; int < dataJson.rows.length; int++) {
			if (dataJson.rows[int].fChoose.value == 1) {
				var para = {};
				para.goods_id = dataJson.rows[int].goods_id.value;
				para.goods_name = dataJson.rows[int].goods_name.value;
				para.goods_img = dataJson.rows[int].goods_img.value;
				para.price = dataJson.rows[int].price.value;
				para.goods_num = dataJson.rows[int].goods_num.value;
				para.quantity = dataJson.rows[int].quantity.value;
				para.set_specs = dataJson.rows[int].set_specs.value;
				para.specification = dataJson.rows[int].specification.value;
				para.specification_id = dataJson.rows[int].specification_id.value;
				para.unit_id = dataJson.rows[int].unit_id.value;
				para.uuid = dataJson.rows[int].userdata.id.value;
				goodsOrder.push(para);
			}
		} // 是否打开确认页面
		
	};
	//
	Model.prototype.giftDataCustomRefresh = function(event){
		var json = localStorage.getItem("giftList");
			var jsonData = JSON.parse(json);
			this.comp("giftData").loadData(jsonData, false);
//			this.comp("button7").set({"label":"赠品种类("+jsonData.length+")"})
	};
	//赠品加
	Model.prototype.button4Click = function(event){
		var row = event.bindingContext.$object;
		//asCore
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("uuid");// 获取商品ID
		var giftData = this.comp("giftData");// 获取
		if (goods_num >= 0) {
			giftData.setValueByID("goods_num", goods_num += 1, goods_id);
		}
		//获取商品数据
		var json = localStorage.getItem("giftList");
		var jsonData = JSON.parse(json);
		var resData = common.addReductionDelete(jsonData,goods_id,1);
		localStorage.setItem("giftList",JSON.stringify(resData));
	};
	//赠品减去
	Model.prototype.button3Click = function(event){
		var row = event.bindingContext.$object;
		var json = localStorage.getItem("giftList");
		var jsonData = JSON.parse(json);
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("uuid");// 获取商品ID
		var giftData = this.comp("giftData");// 获取
		if (goods_num > 1) {
			giftData.setValueByID("goods_num", goods_num -= 1, goods_id);
			var resData = common.addReductionDelete(jsonData,goods_id,2);
			localStorage.setItem("giftList",JSON.stringify(resData));
		}else{
			var resData = common.addReductionDelete(jsonData,goods_id,0);
			localStorage.setItem("giftList",JSON.stringify(resData));
			giftData.refreshData();
		}
		
	};
	return Model;
});