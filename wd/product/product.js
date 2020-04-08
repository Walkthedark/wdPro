define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.keyValue = "";
		this.fName = "综合排序";// 排序
		//
		this.page = 0;
		this.category = 0;// 判断分类是否加载过
		this.CATE_ID_Value = -1;
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.modelParamsReceive = function(event) {
		/*
		 * 1、接收上页传来参数、显示在搜索框中、参数不变不刷新
		 */
		// if (this.params != undefined) {
		// if (this.keyValue != this.params.keyValue) {
		// this.keyValue = this.params.keyValue;
		// this.comp("keyInput").val(this.keyValue);
		// this.comp("goodsData").refreshData();
		// }
		// }
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据 2、接收传入的参数，过滤数据
		 */
		// MICHEAL 注释end
		var params = {};
		var cate_id = this.params.cate_id;
		params.cate_id =cate_id;
		params.except_custom = 1;
		var res = asCore.setGetFalse(inFace.goodsList, params);
		if (res.code === 200) {
			console.log(res);
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		};
	};

	// 商品点击事件
	Model.prototype.listClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据 显示页面代码如下：
		 * var data = this.comp("goodsData"); justep.Shell.showPage("detail", {
		 * goodsID : data.getValue("id"), shopID : data.getValue("fShopID") });
		 */
	};

	// 搜索
	Model.prototype.searchBtnClick = function(event) {
		/*
		 * 1、进入搜索页面 显示页面代码如下： justep.Shell.showPage("search");
		 */
	};

	// 修改列表样式图标
	Model.prototype.listStyleClick = function(event) {
		/*
		 * 1、切换下一个页面
		 */
		this.comp('pages').next();
	};

	Model.prototype.pagesActiveChanged = function(event) {
		/*
		 * 1、页面变化完成事件 2、根据页面索引修改按钮图标
		 */
		var btnObj = this.comp("listStyleBtn");
		var index = this.comp("pages").getActiveIndex();
		if (index == "0") {
			btnObj.set("icon", "glyphicon glyphicon-th-list");
		} else {
			btnObj.set("icon", "glyphicon glyphicon-th-large");
		}
	};
	/* 选择排序按钮 */
	Model.prototype.sortingBtnClick = function(event) {

		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		} else {
			this.comp("sortingPopOver").show();
		}

		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		}
	};
	/* 选择排序 */
	Model.prototype.sortingListClick = function(event) {
		/*
		 * 1、排序点击事件 2、修改当前排序 3、关闭排序窗口
		 */
		var data = this.comp("conditionData");
		data.setValue("fState", "0", data.find([ "fState" ], [ "1" ], true, true, true)[0]);
		var row = data.getCurrentRow();
		data.setValue("fState", "1", row);
		this.comp("sortingBtn").set("label", data.getValue("fName", row));

		this.comp("sortingPopOver").hide();
	};

	/* 折扣和服务按钮 */
	Model.prototype.screeningBtnClick = function(event) {

	};
	/* 折扣和服务 */
	Model.prototype.discountClick = function(event) {
		/*
		 * 1、折扣和服务点击事件 2、选择折扣和服务，可多选
		 */
		var data = this.comp("discountData");
		var row = data.getCurrentRow();
		if (data.getValue("fState", row) == 0) {
			data.setValue("fState", "1", row);
		} else {
			data.setValue("fState", "0", row);
		}
	};

	/* 分类 */
	Model.prototype.classClick = function(event) {
		/*
		 * 1、分类点击事件 2、选择分类，单选
		 */
		var data = this.comp("classData");
		data.setValue("fState", "0", data.find([ "fState" ], [ "1" ], true, true, true)[0]);
		var row = data.getCurrentRow();
		data.setValue("fState", "1", row);
	};

	/* 重置 */
	Model.prototype.resetBtnClick = function(event) {
		/*
		 * 1、重置按钮点击事件 2、清空价格区间、折扣和服务、分类
		 */
		this.comp("price1").val("");
		this.comp("price2").val("");
		this.reset(this.comp("discountData"));
		this.reset(this.comp("classData"));
	};
	Model.prototype.reset = function(data) {
		var rows = data.find([ "fState" ], [ "1" ], false, true, true);
		for (var i = 0; i < rows.length; i++) {
			data.setValue("fState", "0", rows[i]);
		}
	};

	Model.prototype.modelLoad = function(event) {
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
		var src = $("html").hasClass("iosstatusbar");
		if (src) {
			$(".x-popOver-overlay").css({
				"top" : "108px"
			});
		}
		/*
		 * 切换到缓存中保存的content
		 */
		var pagename = localStorage.getItem("list_style_name");
		if (pagename == null) {
			pagename = "oneColList";
		}
		this.comp("pages").to(pagename);
	};

	// 离开页面事件
	Model.prototype.modelUnLoad = function(event) {
		/*
		 * 将当前激活的content的Xid存入缓存
		 */
		localStorage.setItem("list_style_name", this.comp("pages").getActiveXid());
	};

	Model.prototype.classBtnClick = function(event) {

	};
	// 商品详情信息
	Model.prototype.li1Click = function(event) {
		//
		var row = event.bindingContext.$object;// 获取行数据
		var flag = row.val("set_specs");
		if (flag == 1) {
			var goods_id = row.val("goods_id");
			var specification_id = row.val("specification_id");
			justep.Shell.showPage("productDetail", {
				goods_id : goods_id,
				specification_id : specification_id
			});
		}
	};
	// 按价格排序/升序
	Model.prototype.li2Click = function(event) {
		// 获取需要的过滤的信息

	};
	// 向上加载
	Model.prototype.scrollView1PullUp = function(event) {

	};
	// 筛选
	Model.prototype.button3Click = function(event) {

	};

	// 筛选赋值
	Model.prototype.li3Click = function(event) {
		var CATE_ID = event.bindingContext.$object.val("CATE_ID");
		this.CATE_ID_Value = CATE_ID;
		console.log(this.CATE_ID_Value);
	};

	Model.prototype.cartClick = function(event) {
		justep.Shell.showPage("cart");
	};

	Model.prototype.addBtnClick = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;
		var goodsDataM = this.comp("goodsDataM");
		var goods_id = row.val("goods_id");
		var Num = row.val("goods_num");
		if (Num == null || Num == "") {
			Num = 0;
		}
		var p = Num + 1;
		goodsDataM.setValueByID("goods_num", p, goods_id);
		// 掉取加入购物车的接口
		var params = {};
		params.goods_id = goods_id;
		params.quantity = p;
		var unit_id = row.val("unit")[0].unit[0].id;
		if (unit_id != null || unit_id != "") {
			params.unit_id = unit_id;
		} else {
			justep.Util.hint("数据异常");
		}
		;
		this.setCart(params);
	};
	Model.prototype.reductionBtnClick = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;
		var goodsDataM = this.comp("goodsDataM");
		var goods_id = row.val("goods_id");
		var Num = row.val("goods_num");
		if (Num == null || Num == "" || Num == 0) {
			Num = 0;
		} else {
			Num -= 1;
		}
		goodsDataM.setValueByID("goods_num", Num, goods_id);
		// 掉取加入购物车的接口
		var params = {};
		params.goods_id = goods_id;
		params.quantity = Num;
		var unit_id = row.val("unit")[0].unit[0].id;
		if (unit_id != null || unit_id != "") {
			params.unit_id = unit_id;
		} else {
				justep.Util.hint("数据异常", {
						'type' : 'danger'
					});
		}
		this.setCart(params);
	};
	Model.prototype.setCart = function(params) {
		var res = asCore.setGetFalse(inFace.cartSave, params);
		if (res.code === 200) {
			// // 插入goods
			justep.Util.hint("加入购物车成功");
		} else {
			if (params.quantity >= 1) {
				var resD = asCore.setGetFalse(inFace.cartEdit, params);
				if (resD.code == 200) {
					justep.Util.hint("加入购物车成功");
				} else {
					justep.Util.hint(res.message, {
						'type' : 'danger'
					});
				}
			} else {
				var resDt = asCore.setGetFalse(inFace.cartRemove, params);
				if (resDt.code == 200) {
					justep.Util.hint("删除购物车成功", {
						'type' : 'danger'
					});
				} else {
					justep.Util.hint(res.message, {
						'type' : 'danger'
					});
				}
			}
		}
		;
	};

	return Model;
});