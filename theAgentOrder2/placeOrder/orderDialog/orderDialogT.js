define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	// 引入核算价格js
	var common = require("$UI/theAgentOrder2/placeOrder/common");
	var Model = function() {
		this.callParent();
		this.keyValue = "";
		this.fName = "综合排序";// 排序
		//
		this.category = 0;// 判断分类是否加载过
		this.CATE_ID_Value = -1;
		this.radioCheck = "";// 获取过滤分类的值
		this.cClinet_id = ""
		this.goodsDataInfo = [];
		//分页
		this.page = 1;// 当前页数
//		this.flag = 1;// 判断是否是搜索还是自然加载
		this.pageTotal = 0;// 总页数
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.modelParamsReceive = function(event) {

		this.cClinet_id = this.params.data.clinet_id;
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		this.page = 1;
		var params = {};
		params.token = localStorage.getItem("token");
		params.client_id = this.params.data.clinet_id;
		params.supplier_id =localStorage.getItem("supplier_id");
		var res = asCore.setGetFalse(inFace.allGoodsList, params);
		if (res.code === 200) {
			this.page +=1;
			var total =0;
			this.pageTotal = total%10 == 0?parseInt(total/10):parseInt(total/10)+1;//获取总页数
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		}
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
		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		} else {
			// 加载分类数据
			if (this.category == 0) {// 判断是否加载过数据
				var params = {};
				var res = asCore.setGetFalse(inFace.Category, params);
				if (res.code === 200) {
					var categoryData = this.comp("categoryData");
					var categoryDataList = this.comp("categoryDataList");
					categoryDataList.loadData(res.data, false);
					categoryData.loadData(res.data, false);
					categoryData.refreshData();
				} else {
					justep.Util.hint(res.message);
				}
				;
			}
			// 显示帅选信息
			this.comp("screeningPopOver").show();
		}
		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		}
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
		var rowData = event.bindingContext.$object;
		// 获取商品ID和规格ID
		var goods_id = rowData.val("goods_id");
		var specification_id = rowData.val("specification_id");
		var goods_img = rowData.val("goods_img");
		var goods_name = rowData.val("goods_name");
		$(this.getElementByXid("image8")).attr('src', goods_img);
		$(this.getElementByXid("h45")).html(goods_name);
		var params = {};
		params.token = localStorage.getItem("token");
		params.specification_id = specification_id;
		params.goods_id = goods_id;
		params.client_id = this.cClinet_id;
		var res = asCore.setGetFalse(inFace.appGoodsData, params);
		if (res.code === 200) {
			var goodsData = res.data;// 获取数据商品数据
			var GoodsInfodata = this.comp("GoodsInfodata");
			this.goodsDataInfo = goodsData;// 获取的是商品的详情
			GoodsInfodata.loadData(goodsData, false);
			GoodsInfodata.refreshData();
		} else {
			justep.Util.hint(res.message);
		}
		this.comp("popOver6").show();
	};
	// 按价格排序/升序
	Model.prototype.li2Click = function(event) {

	};
	// 向上加载
	Model.prototype.scrollView1PullUp = function(event) {
		if (this.pageTotal < this.page) {
			justep.Util.hint("没有更多信息了!");
			return;
		};
		var params = {};
		params.token = localStorage.getItem("token");
		params.client_id = localStorage.getItem("client_id");
		params.supplier_id =localStorage.getItem("supplier_id");
		params.page = this.page;
		this.upLoadData(params);
	};
	// 向上加载
	Model.prototype.upLoadData = function(params) {
		var res = asCore.setGetFalse(inFace.allGoodsList, params);
		if (res.code === 200) {
			this.page += 1;
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, true);
		} else {
			justep.Util.hint(res.message);
		}
	};
	// 筛选
	Model.prototype.button3Click = function(event) {
		// 获取筛选的ID
		// 获取价格
		var minPrice = this.comp("price1").val();
		var maxPrice = this.comp("price2").val();
		var res = asCore.getDirectlyDBSql("DKList.Config.SHGoodsCostPriceList", 1, 3, {
			'C1' : parseFloat(minPrice),
			'C2' : parseFloat(maxPrice)
		});
		if (res.code == 1) {
			var goodsDataM = this.comp("goodsDataM");
			// 加载数据
			goodsDataM.loadData(res.value, false);
			// 关闭筛选弹窗
			this.comp("screeningPopOver").hide();
			// 重置分页
			this.page = 2;
		} else {
			justep.Util.hint(res.message);
		}
	};

	// 分类筛选
	Model.prototype.li3Click = function(event) {
		var rowData = event.bindingContext.$object;// 获取绑定行数据
		var pId = rowData.val("cate_id");// 获取父ID
		var categoryData = this.comp("categoryData");
		var rowN = categoryData.getRowByID(pId);
		if (rowN != null) {
			$(this.getElementByXid("returnBtn")).show();
			var rowNew = rowN.val("children");
			var categoryDataList = this.comp("categoryDataList");
			categoryDataList.loadData(rowNew, false);
			categoryDataList.refreshData();
		}

	};
	// 获取选中的商品
	Model.prototype.addCartClick = function(event) {
		// 阻止事件冒泡
		event.stopPropagation();
		var rowData = event.bindingContext.$object;// 获取绑定行数据
		var goods_id = rowData.val("goods_id");// 获取绑定商品ID
		var uuid = rowData.val("uuid");// 主键
		var specification_id = rowData.val("specification_id"); // 获取规格ID
		var goods_img = rowData.val("goods_img");
		var goods_name = rowData.val("goods_name");
		var price = rowData.val("price");
		var specification1_name = rowData.val("specification1_name");
		var specification1_value = rowData.val("specification1_value");
		var specification2_name = rowData.val("specification2_name");
		var specification2_value = rowData.val("specification2_value");
		var specification3_name = rowData.val("specification3_name");
		var specification3_value = rowData.val("specification3_value");
		var specification = rowData.val("specification");
		var dis_tag = rowData.val("dis_tag");
		var unit_id = rowData.val("unit_id");
		//新加
		var cate_name = rowData.val("cate_name");
		var goods_sn = rowData.val("goods_sn");
		var is_units = rowData.val("is_units");
		var origin_price = rowData.val("origin_price");
		var promotion = rowData.val("promotion");
		var show_name = rowData.val("show_name");
		var unit = rowData.val("unit");
		var unit_name = rowData.val("unit_name");
		//
		var params = {};
		params.uuid = uuid;
		params.goods_id = goods_id;
		params.cate_name = cate_name;
		params.goods_sn = goods_sn;
		params.is_units = is_units;
		params.origin_price = origin_price;
		params.promotion = promotion;
		params.show_name = show_name;
		params.unit = unit;
		params.unit_name = unit_name;
		params.specification_id = specification_id;
		params.goods_img = goods_img;
		params.goods_name = goods_name;
		params.goods_num = 1;
		params.price = price;
		params.unit_id = unit_id;
		params.specification1 = specification1_name + ":" + specification1_value;
		params.specification2 = specification2_name + ":" + specification2_value;
		params.specification3 = specification3_name + ":" + specification3_value;
		params.specification = specification;
		params.dis_tag = dis_tag;
		this.getParentModel().loadGoodsOrder(params);
		this.close();
	};
	// 返回上一级
	Model.prototype.returnBtnClick = function(event) {
		//
		// 获取父ID
		var categoryDataList = this.comp("categoryDataList");
		var parent_id = categoryDataList.getValue("parent_id");// 获取父ID
		var categoryData = this.comp("categoryData");
		var rowData = categoryData.find([ 'cate_id' ], [ parent_id ], true, true, true);// 获取当条数据
		// 判断
		if (rowData.length > 0) {
			var rowf_parent_id = rowData[0].row.parent_id.value.latestValue;//
			if (rowf_parent_id == 0) {
				$(this.getElementByXid("returnBtn")).hide();
			} else {
				$(this.getElementByXid("returnBtn")).show();
			}
			var rowDataList = categoryData.find([ 'parent_id' ], [ rowf_parent_id ], false, true, true);// 获取所有数据
			var p = [];
			for (var int = 0; int < rowDataList.length; int++) {
				var i = {};
				i.cate_id = rowDataList[int].row.cate_id.value.latestValue;
				i.cate_name = rowDataList[int].row.cate_name.value.latestValue;
				i.children = rowDataList[int].row.children.value.latestValue;
				i.parent_id = rowDataList[int].row.parent_id.value.latestValue;
				p.push(i);
			}
			categoryDataList.loadData(p, false);
		}
	};
	// 获取选中的值
	Model.prototype.button6Click = function(event) {
		if (this.radioCheck) {// 获取的分类值

		}
	};
	//
	Model.prototype.radio2Change = function(event) {
		this.radioCheck = event.bindingContext.$object;// 获取绑定行数据

	};
	// 商品详情详情减
	Model.prototype.reductionBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var uuid = row.val("uuid");// 获取商品ID
		var goods_id = row.val("goods_id");// 获取商品ID
		var unit_id = row.val("unit_id");// 获取商品ID
		var GoodsInfodata = this.comp("GoodsInfodata");// 获取
		if (goods_num >= 1) {
			GoodsInfodata.setValueByID("goods_num", goods_num -= 1, uuid);
			this.judgeGoodsId(goods_id, unit_id, 2);
		} else if (goods_num == null) {
			GoodsInfodata.setValueByID("goods_num", 0, uuid);
			this.judgeGoodsId(goods_id, unit_id, 2);
		}
	};
	// 商品详情加上
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var uuid = row.val("uuid");// 获取商品ID
		var goods_id = row.val("goods_id");// 获取商品ID
		var unit_id = row.val("unit_id");// 获取商品ID
		var GoodsInfodata = this.comp("GoodsInfodata");// 获取
		if (goods_num >= 0) {
			GoodsInfodata.setValueByID("goods_num", goods_num += 1, uuid);
		} else if (goods_num == null) {
			GoodsInfodata.setValueByID("goods_num", 1, uuid);
		}
		this.judgeGoodsId(goods_id, unit_id, 1);
	};
	// 判断\只能循环data的数据
	Model.prototype.judgeGoodsId = function(goods_id, unit_id, flag) {// 提交过去的数据不需要UUID
		this.goodsDataInfo = common.addReductionDeleteInfo(this.goodsDataInfo, goods_id, unit_id, flag);
		var GoodsInfodata = this.comp("GoodsInfodata");// 获取
		GoodsInfodata.loadData(this.goodsDataInfo, false);
	};
	Model.prototype.button8Click = function(event) {
		this.comp("popOver6").hide();
	};
	// 提交
	Model.prototype.button7Click = function(event) {
		var params = [];
		for (var int = 0; int < this.goodsDataInfo.length; int++) {
			var array_element = this.goodsDataInfo[int];
			if (array_element.goods_num > 0) {
				array_element.uuid =justep.UUID.createUUID();
				params.push(array_element);
			}
		}
		if (params.length > 0) {//提交loadGoodsOrderInfo
			this.getParentModel().loadGoodsOrderInfo(params);
			this.comp("popOver6").hide();
			this.close();
		} else {
			justep.Util.hint("请选择需要的商品哦");
		}
	};

	return Model;
});
(function($) {
	$.extend({
		tipsBox : function(options) {
			options = $.extend({
				obj : null, // jq对象，要在那个html标签上显示
				str : "+1", // 字符串，要显示的内容;也可以传一段html，如: "<b
				// style='font-family:Microsoft YaHei;'>+1</b>"
				startSize : "12px", // 动画开始的文字大小
				endSize : "30px", // 动画结束的文字大小
				interval : 600, // 动画时间间隔
				color : "red", // 文字颜色
				callback : function() {
				} // 回调函数
			}, options);
			$("body").append("<span class='num'>" + options.str + "</span>");
			var box = $(".num");
			var left = options.obj.offset().left + options.obj.width() / 2;
			var top = options.obj.offset().top - options.obj.height();
			box.css({
				"position" : "absolute",
				"left" : left + "px",
				"top" : top + "px",
				"z-index" : 9999,
				"font-size" : options.startSize,
				"line-height" : options.endSize,
				"color" : options.color
			});
			box.animate({
				"font-size" : options.endSize,
				"opacity" : "0",
				"top" : top - parseInt(options.endSize) + "px"
			}, options.interval, function() {
				box.remove();
				options.callback();
			});
		}
	});
})(jQuery);

function niceIn(prop) {
	prop.find('i').addClass('niceIn');
	setTimeout(function() {
		prop.find('i').removeClass('niceIn');
	}, 1000);
}