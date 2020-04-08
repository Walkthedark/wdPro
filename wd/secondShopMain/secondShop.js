define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.cate_id = "";
	};

	Model.prototype.categoryDataCustomRefresh = function(event) {
		var params = {};
		// var res = asCore.setGetFalse(inFace.categoryAll, params);
		var res = asCore.setGetFalse(inFace.Category, params);
		if (res.code === 200) {
			var categoryData = this.comp("categoryData");
			categoryData.loadData(res.data, false);
			// 加载左侧第一级别的分类
			// 获取第一级别的分类数据，
			if (res.data.length > 0) {
				var frist_pid = res.data[0].cate_id;//获取第一次的分类ID
				this.cate_id = frist_pid;
				var child_list = res.data[0].child;// 获取的是第一级别下的分类
				if (child_list != null) {// 有第二级别的数据
					this.classNameList(child_list);
					this.getGoodListData(frist_pid);
				}else{//没有第二级别数据则直接展示商品数据
					//this.getGoodList(frist_pid);//传入商品分类ID
					this.getGoodListData(frist_pid);
				}
			}
		} else {
			justep.Util.hint(res.message);
		};
	};
	//获取商品
	Model.prototype.getGoodListData = function(cate_id) {//
		var goodsDataM = this.comp("goodsDataM");
		goodsDataM.clear();
		var params = {};
		params.cate_id =cate_id;
		var res = asCore.setGetFalse(inFace.getCateGoodsOnly, params);
		if (res.code === 200) {
			goodsDataM.loadData(res.data.data, false);
			goodsDataM.refreshData();
		} else {
			justep.Util.hint(res.message);
		};
	
	};
	// 分解第一级别和第二级别分类
	Model.prototype.classNameList = function(child) {//
		var data1 = this.comp("data1");//
		var data2 = this.comp("data2");//
		var data3 = this.comp("data3");//
		var goodsDataM = this.comp("goodsDataM");//
		data1.clear();
		data2.clear();
		data3.clear();
		goodsDataM.clear();
		if (child != null) {// 塞入第三级分类累表
			for (var int = 0; int < child.length; int++) {
				if (child[int].child != null) {// 有第三级别的
					if (int == 0) {
						data2.loadData(child[int].child, false);
					} else {
						data2.loadData(child[int].child, true);
					}
				}
			}
			data2.refreshData();
		}
		if (data2.getCount() > 0) {// 有第三级别的数据
			data1.loadData(child, false);
		} else {// 没有第三级别的
			//只有第二界别的
			data3.loadData(child, false);
		}
	};
	//行点击事件
	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		//获取子类的
		var child_list = row.val('child');
		var cate_id = row.val('cate_id');
		this.cate_id = cate_id;
		if(child_list != null){//这个是有第二级别的
			this.classNameList(child_list);
			this.getGoodListData(cate_id);
		}else{//没有第二级别的
			//清空第二级别的数据
			var data1 = this.comp("data1");
			data1.clear();//清空数据
			//调取获取商品的接口
			this.getGoodList(cate_id);
		}
	};
	//没有第二级别的则展示商品数据
	Model.prototype.getGoodList = function(cate_id) {
		this.comp("data1").clear();//清空第二级别数据
		this.comp("data2").clear();//清空第三级别数据
		this.comp("data3").clear();//清空第三级别数据
		this.goodsLoad(cate_id);
	};
	Model.prototype.goodsLoad = function(cate_id) {
		/*
		 * 1、加载商品数据 2、接收传入的参数，过滤数据
		 */
		// MICHEAL 注释end
		var params = {};
		 params.cate_id =cate_id;
		 params.except_custom  = 1;
		var res = asCore.setGetFalse(inFace.getCateGoodsOnly, params);
		if (res.code === 200) {
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, false);
			goodsDataM.refreshData();
		} else {
			justep.Util.hint(res.message);
		}
		;

	};
	//
	Model.prototype.data2CustomRefresh = function(event) {
		// var params = {};
		// var res = asCore.setGetFalse(inFace.secondCate, params);
		// if (res.code === 200) {
		// console.log(res);
		// } else {
		// justep.Util.hint(res.message);
		// }
		// ;
	};
	// 获取选中的商品分类
	Model.prototype.div5Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		// 获取行id
		var cate_id = row.val('cate_id');
		// 打开页面
		justep.Shell.showPage("product", {
			cate_id : cate_id
		});

	};
	//二级分类点击事件
	Model.prototype.div7Click = function(event){
		var row = event.bindingContext.$object;//获取行数据
		//获取行id
		var cate_id = row.val('cate_id');
//		打开页面
		justep.Shell.showPage("product",{cate_id:cate_id});
		//阻止事件冒泡
		event.stopPropagation()	;
	};
	//商品点击事件
	Model.prototype.li2Click = function(event){
		var row = event.bindingContext.$object;// 获取行数据
		var goods_id = row.val("goods_id");
		var specification_id = row.val("specification_id");
		justep.Shell.showPage("productDetail", {
			goods_id : goods_id,
			specification_id : specification_id
		});
		event.stopPropagation();
	};

	Model.prototype.categoryDataAfterRefresh = function(event){

	};
	//搜索事件
	Model.prototype.keyFocus = function(event){

	};
	//新加的方法
	Model.prototype.button6Click = function(event){
		//获取分类
		// 打开页面
		justep.Shell.showPage("product", {
			cate_id : this.cate_id
		});
	};
	Model.prototype.button19Click = function(event){
		
	};
	Model.prototype.button17Click = function(event){
		
	};
	Model.prototype.button16Click = function(event){
		
	};
	//
	Model.prototype.groupList = function(event){
		var row = event.bindingContext.$object;// 获取行数据
		// 获取行id
		var cate_id = row.val('cate_id');
		// 打开页面
		justep.Shell.showPage("product", {
			cate_id : cate_id
		});
	};
	return Model;
});