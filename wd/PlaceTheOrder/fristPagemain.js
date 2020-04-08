define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var allData = require("./js/loadData");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.popD = 1;
		this.cClinet_id = 1;// 用户的ID
	};
	Model.prototype.threeClassDataCustomRefresh = function(event) {
//		var url = require.toUrl("./class/json/threeClassData.json");
//		allData.loadDataFromFile(url, event.source, true);
	};
	Model.prototype.secondClassDataCustomRefresh = function(event) {
//		var url = require.toUrl("./class/json/secondClassData.json");
//		allData.loadDataFromFile(url, event.source, true);
	};
	Model.prototype.rootClassDataCustomRefresh = function(event) {
//		var url = require.toUrl("./class/json/rootClassData.json");
//		allData.loadDataFromFile(url, event.source, true);
	};
	Model.prototype.listClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据
		 */
	};
	Model.prototype.childrenDClick = function(event) {
		if (this.popD == 1) {
			$(this.getElementByXid("div13")).fadeIn(300);
			$(this.getElementByXid("i10")).removeClass("icon-arrow-right-b");
			$(this.getElementByXid("i10")).addClass("icon-arrow-up-b");
			$(this.getElementByXid("col11")).css("overflow", "hidden");
			this.popD = 2;
		} else {
			$(this.getElementByXid("div13")).fadeOut(300);
			$(this.getElementByXid("i10")).addClass("icon-arrow-right-b");
			$(this.getElementByXid("i10")).removeClass("icon-arrow-up-b");
			$(this.getElementByXid("col11")).css("overflow", "auto");
			this.popD = 1;
		}
		// 获取子分类
		var categoryData = this.comp("categoryData");
		var currentRowID = categoryData.getCurrentRowID();// 获取当前行ID
		var rowData = categoryData.getRowByID(currentRowID).val("children");
		if (rowData != null && rowData != "") {
			var childrenData = this.comp("childrenData");
			childrenData.loadData(rowData, false);
			childrenData.refreshData();
		}
	};
	Model.prototype.settlementClick = function(event) {
	};
	Model.prototype.button8Click = function(event) {
		this.comp("popOver1").hide();
	};
	// 加
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var uuid = row.val("uuid");// 获取商品ID
		var GoodsInfodata = this.comp("GoodsInfodata");// 获取
		if (goods_num >= 0) {
			GoodsInfodata.setValueByID("goods_num", goods_num += 1, uuid);
		} else if (goods_num == null) {
			GoodsInfodata.setValueByID("goods_num", 1, uuid);
		}
	};
	//
	Model.prototype.reductionBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var uuid = row.val("uuid");// 获取商品ID
		var GoodsInfodata = this.comp("GoodsInfodata");// 获取
		if (goods_num >= 1) {
			GoodsInfodata.setValueByID("goods_num", goods_num -= 1, uuid);
		} else if (goods_num == null) {
			GoodsInfodata.setValueByID("goods_num", 1, uuid);
		}
	};
	// 加载数据
	Model.prototype.modelLoad = function(event) {
		//
	};
	Model.prototype.goodsDataCustomRefresh = function(event) {
		var params = {};
		params.token = localStorage.getItem("token");
		params.client_id = localStorage.getItem("client_id");
		var res = asCore.setGetFalse(inFace.goodsList, params);
		if (res.code === 200) {
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		}
	};
	Model.prototype.categoryDataCustomRefresh = function(event) {
		var params = {};
		var res = asCore.setGetFalse(inFace.Category, params);
		if (res.code === 200) {
			var categoryData = this.comp("categoryData");
			var data1 = this.comp("data1");
			categoryData.loadData(res.data, false);
			data1.loadData(res.data, false);
		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	Model.prototype.div27Click = function(event) {
		// appGoodsData 获取商品的所有信息
		var rowData = event.bindingContext.$object;// 获取当前绑定数据行
		var goods_id = rowData.val("goods_id");// 商品ID
		var specification_id = rowData.val("specification_id");// 规格ID
		var goods_img = rowData.val("goods_img");
		var params = {};
		params.token = localStorage.getItem("token");
		params.specification_id = specification_id;
		params.goods_id = goods_id;
		params.client_id = this.cClinet_id;// ///////////要改的di fan
		var res = asCore.setGetFalse(inFace.appGoodsData, params);
		if (res.code === 200) {
			var goodsData = res.data;// 获取数据商品数据
			var GoodsInfodata = this.comp("GoodsInfodata");
			GoodsInfodata.loadData(goodsData, false);
			GoodsInfodata.refreshData();
		} else {
			justep.Util.hint(res.message);
		}
		this.comp("popOver1").show();
	};
	// 左侧分类点击事件
	Model.prototype.li1Click = function(event) {
//		// 重置右侧子分类的图标
//		$(this.getElementByXid("div13")).fadeOut(300);
//		$(this.getElementByXid("i10")).addClass("icon-arrow-right-b");
//		$(this.getElementByXid("i10")).removeClass("icon-arrow-up-b");
//		$(this.getElementByXid("col11")).css("overflow", "auto");
//		// 获取分类的ID
//		var row = event.bindingContext.$object;
//		var cate_id = row.val("cate_id");
//		// 加载右侧分类数据
//		var params = {};
//		params.token = localStorage.getItem("token");
//		params.client_id = localStorage.getItem("client_id");
//		params.cate_id = cate_id;
//		var res = asCore.setGetFalse(inFace.allGoodsList, params);
//		if (res.code === 200) {
//			var goodsDataM = this.comp("goodsDataM");
//			goodsDataM.loadData(res.data.data, false);
//		} else {
//			justep.Util.hint(res.message);
//		}//micheal
		
		
	};
	// 获取需要加入购物车的商品
	Model.prototype.button6Click = function(event) {
		var self = this;
		var GoodsInfodata = this.comp("GoodsInfodata");// 获取
		GoodsInfodata.each(function(p) {
			var params = {};
			if (p.row.val("goods_num") != null && p.row.val("goods_num") != 0) {
				params.goods_id = p.row.val("goods_id");
				params.unit_id = p.row.val("unit_id");
				params.quantity = p.row.val("goods_num");
				self.cartSave(params);
			}
		});
	};
	// 加入购物车
	Model.prototype.cartSave = function(params) {
		var res = asCore.setPostFalse(inFace.cartSave, params);
		if (res.code === 200) {
			// justep.Util.hint("加入购物车成功");
		} else {
			justep.Util.hint(res.message);
		}
	};
	// 获取子分类
	Model.prototype.li5Click = function(event) {
		var row = event.bindingContext.$object;
		var children = row.val("children");
		var childrenData = this.comp("childrenData");
		childrenData.loadData(children, false);
	};
	// 获取
	Model.prototype.button5Click = function(event) {
		var rowData = event.bindingContext.$object;// 获取行数据
		var cate_id = rowData.val("cate_id");
		var params = {};
		params.token = localStorage.getItem("token");
		params.client_id = localStorage.getItem("client_id");
		params.cate_id = cate_id;
		var res = asCore.setGetFalse(inFace.allGoodsList, params);
		if (res.code === 200) {
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, false);
			$(this.getElementByXid("div13")).fadeOut(300);
			$(this.getElementByXid("i10")).addClass("icon-arrow-right-b");
			$(this.getElementByXid("i10")).removeClass("icon-arrow-up-b");
			$(this.getElementByXid("col11")).css("overflow", "auto");
		} else {
			justep.Util.hint(res.message);
		}
	};

	Model.prototype.button2Click = function(event){
		this.comp("windowContainer1").load("$UI/wd/PlaceTheOrder/dialog/seachGoods.w");
	};
	Model.prototype.button3Click = function(event){
		this.comp("windowContainer2").load("$UI/wd/PlaceTheOrder/dialog/screeningMain.w");
	};

	Model.prototype.data1CustomRefresh = function(event){
		//secondCate
	};

	return Model;
});