define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	// 引入核算价格js
	var common = require("$UI/theAgentOrder2/placeOrder/common");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function() {
		this.callParent();
		this.keyValue = "";
		this.fName = "综合排序";// 排序
		//
		this.category = 0;// 判断分类是否加载过
		this.CATE_ID_Value = -1;
		this.radioCheck = "";// 获取过滤分类的值
		this.cClinet_id = "";
		this.cate_id = "";
		this.goodsDataInfo = [];
		// 分页
		this.page = 1;// 当前页数
		// this.flag = 1;// 判断是否是搜索还是自然加载
		this.pageTotal = 0;// 总页数
		this.goodDataInfoList = [];// 谈橱窗的单个商品详情
		this.classValue = "";// 一级值
		this.classValue2 = "";// 二级值
		this.classValue3 = "";// 三级值
		this.classValueList = [];// 一级值
		this.classValueList2 = [];// 二级值
		this.classValueList3 = [];// 三级值
		this.classValue_name3 =[];
		this.classValue_name2 =[];
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.cClinet_id = this.params.clinet_id;
		this.cate_id = this.params.cate_id;
		this.comp("sumdata").refreshData();
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		this.page = 1;
		var params = {};
		params.token = localStorage.getItem("token");
		params.client_id = this.params.clinet_id;
		params.cate_id = this.params.cate_id;
		//params.cate_id = 85;
		params.supplier_id = localStorage.getItem("supplier_id");
		params.except_custom = 1;
		var res = asCore.setGetFalse(inFace.listGoods, params);
		if (res.code === 200) {
			this.page += 1;
			var total = res.data.pager.total;
			this.pageTotal = total % 10 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;// 获取总页数
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
	};
	/* 选择排序按钮 */
	Model.prototype.sortingBtnClick = function(event) {

	};
	/* 选择排序 */
	Model.prototype.sortingListClick = function(event) {
	
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
		
	};

	// 离开页面事件
	Model.prototype.modelUnLoad = function(event) {
		
		
	};

	Model.prototype.classBtnClick = function(event) {

	};
	// 商品详情信息
	Model.prototype.li1Click = function(event) {
		this.classValue_name3 = [];
		this.classValue_name2 =[];
		var rowData = event.bindingContext.$object;// 行数据
		var goods_id = rowData.val("goods_id");// 获取的是商品ID
		var specification_id = rowData.val("specification_id");
		;// 获取的是
		var params = {};
		params.specification_id = specification_id;
		params.goods_id = goods_id;
		params.client_id = this.cClinet_id;
		if(rowData.val("set_specs") == 0){
			return;
		}
		var res = asCore.setGetFalse(inFace.GoodsInfo, params);
		if (res.code === 200) {
			$(this.getElementByXid("span30")).html("1");
			this.goodDataInfoList = res.data.goodsData;// 加入的是商品详情list
			var specificationName = res.data.specificationName;
			for (var int = 0; int < specificationName.length; int++) {// 插入分类
				var sName = [];
				var pName = {};
				if (specificationName[int] != "") {
					pName.id = justep.UUID.createUUID();
					pName.name = specificationName[int];
					pName.cid = int;
					sName.push(pName);// 加入数组中
				}
				if (int == 0) {
					this.comp("classNameData").loadData(sName, false);
					this.comp("classNameData").refreshData();
				} else if (int == 1) {
						
					this.comp("className2Data").loadData(sName, false);
					this.comp("className2Data").refreshData();
				} else {
					this.comp("className3Data").loadData(sName, false);
					this.comp("className3Data").refreshData();
				}
			}
			if (this.comp("classNameData").getCount() <= 0) {
				this.comp("unitData").loadData(this.goodDataInfoList[0].unit, false);
				this.comp("unitData").refreshData();
			}
			;
			var specificationValue = res.data.specificationValue;
			for (var int = 0; int < specificationValue.length; int++) {// 插入具体的分类值
				var sValue = [];
				if (specificationValue[int].length > 0 && specificationValue[int][0] != "") {
					for (var int2 = 0; int2 < specificationValue[int].length; int2++) {
						var pValue = {};
						pValue.id = justep.UUID.createUUID();
						pValue.name = specificationValue[int][int2];
						pValue.pid = int;
						pValue.flag = 1;
						if (int == 0) {// 判断第一种的规格是否选的规格是否有空的
							asCore.search2(this.goodDataInfoList, "specification1_value", specificationValue[int][int2]).length > 0 ? "" : pValue.flag = 0;
						}
						sValue.push(pValue);
					}
					if (int == 0) {
						this.comp("classValueData").loadData(sValue, false);
					} else if (int == 1) {
						this.comp("classValue2Data").loadData(sValue, false);
						this.classValue_name2 =sValue;
					} else {
						this.comp("classValue3Data").loadData(sValue, false);
						this.classValue_name3 = sValue;
					}
				}
			}
			// ///
		} else {
			layer.msg(res.message);
		}
		this.comp("popOver1").show();
	};
	// 按价格排序/升序
	Model.prototype.li2Click = function(event) {

	};
	// 向上加载
	Model.prototype.scrollView1PullUp = function(event) {
		if (this.pageTotal < this.page) {
//			layer.msg('没有更多信息了');
			return;
		};
		var params = {};
		params.token = localStorage.getItem("token");
		params.client_id = localStorage.getItem("client_id");
		params.supplier_id = localStorage.getItem("supplier_id");
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
			layer.msg(res.message);
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
			layer.msg(res.message);
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
		// 新加
		var cate_name = rowData.val("cate_name");
		var goods_sn = rowData.val("goods_sn");
		var is_units = rowData.val("is_units");
		var origin_price = rowData.val("origin_price");
		var promotion = rowData.val("promotion");
		var show_name = rowData.val("show_name");
		var unit = rowData.val("unit");
		var unit_name = rowData.val("unit_name");
		var specification_id = rowData.val("specification_id");
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
//		this.close();
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
				array_element.uuid = justep.UUID.createUUID();
				params.push(array_element);
			}
		}
		if (params.length > 0) {// 提交loadGoodsOrderInfo
			this.getParentModel().loadGoodsOrderInfo(params);
			this.comp("popOver6").hide();
			this.close();
		} else {
			layer.msg('请选择需要的商品');
		}
	};

	Model.prototype.addZBtnClick = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;// 获取行数据
		var uuid = row.val("uuid");// 
		var goods_id = row.val("goods_id");// 获取商品ID
		var unit_id = row.val("unit")[0].unit[0].id;// 获取的是单位的ID
		var unit_name = row.val("unit")[0].unit[0].name;// 获取的是单位的名称
		var price = row.val("price");// 获取商品价格
		var goods_img = row.val("goods_img");// 获取商品数量
		var goods_name = row.val("goods_name");// 获取商品名称
		var set_specs = row.val("set_specs");// 获取规格的数量
		var goods_num = row.val("goods_num");// 获取商品的数量
		var goods_sn = row.val("goods_sn");// 获取商品的数量
		var specification_id = row.val("specification_id");// 获取商品的数量
		if (goods_num == null || goods_num == "") {
			goods_num = 0;
		}
		var goodsDataM = this.comp("goodsDataM");
		goodsDataM.setValueByID('goods_num', goods_num += 1, uuid);// 塞入列表也商品数量
		// 加入父类的购物车
		var p = [];
		var params = {};
		params.specification = "";
		params.uuid = uuid;
		params.goods_id = goods_id;
		params.unit_id = unit_id;
		params.unit_name = unit_name;
		params.quantity = 1;
		params.goods_num = goods_num;
		params.price = price;
		params.specification_id = specification_id;
		params.goods_img = goods_img;
		params.goods_name = goods_name;
		params.goods_sn = goods_sn;
		params.set_specs = set_specs;
		p.push(params);
		if (goods_id != null || goods_id != "") {
			asCore.ListloadGoodsOrderInfo2(p);
//			this.close();
			this.comp('data5').refreshData();
		} else {
			layer.msg('商品数据异常');
		}
	};
	Model.prototype.reductionZBtnClick = function(event) {
		event.stopPropagation();// 阻止事件传播
		var row = event.bindingContext.$object;// 获取行数据
		var uuid = row.val("uuid");// 
		var goods_id = row.val("goods_id");// 获取商品ID
		var unit_id = row.val("unit")[0].unit[0].id;// 获取的是单位的ID
		var unit_name = row.val("unit")[0].unit[0].name;// 获取的是单位的名称
		var price = row.val("price");// 获取商品价格
		var goods_img = row.val("goods_img");// 获取商品数量
		var goods_name = row.val("goods_name");// 获取商品名称
		var set_specs = row.val("set_specs");// 获取规格的数量
		var goods_num = row.val("goods_num");// 获取商品的数量
		var goods_sn = row.val("goods_sn");// 获取商品的数量
		var specification_id = row.val("specification_id");// 获取商品的数量
		if (goods_num == null || goods_num == "" || goods_num <= 1) {
			goods_num = 0;
		} else {
			goods_num -= 1;
		}
		var goodsDataM = this.comp("goodsDataM");
		goodsDataM.setValueByID('goods_num', goods_num, uuid);// 塞入列表也商品数量
		// 加入父类的购物车
		var p = [];
		var params = {};
		params.specification = "";
		params.uuid = uuid;
		params.goods_id = goods_id;
		params.unit_id = unit_id;
		params.unit_name = unit_name;
		params.quantity = 1;
		params.goods_num = goods_num;
		params.price = price;
		params.goods_img = goods_img;
		params.goods_name = goods_name;
		params.goods_sn = goods_sn;
		params.specification_id = specification_id;
		params.set_specs = set_specs;
		p.push(params);
		if (goods_id != null || goods_id != "") {
			asCore.ListloadGoodsOrderInfo2(p);
			this.comp('data5').refreshData();
		} else {
			layer.msg('商品数据异常');
		}

	};
	// 列表也的加/减加入临时购车
	Model.prototype.setTheListSubmit = function(params) {

	};
	// 弹出窗加入购清单
	Model.prototype.button4Click = function(event) {
		var classNameData = this.comp("classNameData");
		var classNameData2 = this.comp("className2Data");
		var classNameData3 = this.comp("className3Data");
		var unitData = this.comp("unitData");
		var params = {};
		var quantity = parseInt($(this.getElementByXid("span30")).html());
		params.goods_num = quantity;
		params.quantity = 1;
		if (classNameData3.getCount() <= 0) {// 没有第三级别的
			if (classNameData2.getCount() > 0) {// 有第二级别的
				if (this.classValue2 != "") {
					if (this.classValueList2.length > 0) {
						params.goods_id = this.classValueList2[0].goods_id;
						params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
						params.specification = this.classValueList2[0].specification1_value + "/" + this.classValueList2[0].specification2_value;
						params.uuid = justep.UUID.createUUID();
						params.price = this.classValueList2[0].price;
						params.goods_img = this.classValueList2[0].goods_img;
						params.goods_name = this.classValueList2[0].goods_name;
						params.goods_sn = this.classValueList2[0].goods_sn;
						params.specification_id = this.classValueList2[0].specification_id;
						params.set_specs = 1;
					}
					;
				} else {
					layer.msg('请选择商品规格');
					return;
				}
			} else {// 没有第二级别的
				// 判断第一级别的
				if (this.classValue != "") {
					if (classNameData.getCount() > 0) {// 有第一级别的规格
						params.goods_id = this.classValueList[0].goods_id;
						params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
						params.specification = this.classValueList[0].specification1_value;
						params.uuid = justep.UUID.createUUID();
						params.price = this.classValueList[0].price;
						params.goods_img = this.classValueList[0].goods_img;
						params.goods_name = this.classValueList[0].goods_name;
						params.goods_sn = this.classValueList[0].goods_sn;
						params.specification_id = this.classValueList[0].specification_id;
						params.set_specs = 1;
					} else {// 没有第一级别的规格
						// 如果都没有则取值
						if (this.goodList.length > 0) {
							params.goods_id = this.goodList[0].goods_id;
							params.unit_id = unitData.getRowID();
							params.specification = "";
							params.uuid = justep.UUID.createUUID();
							params.price = this.classValueList[0].price;
							params.goods_img = this.classValueList[0].goods_img;
							params.goods_name = this.classValueList[0].goods_name;
							params.goods_sn = this.classValueList[0].goods_sn;
							params.specification_id = this.classValueList[0].specification_id;
							params.set_specs = 1;
						} else {
							layer.msg('商品数据异常');
							return;
						}
					}
				} else {
					layer.msg('请选择商品规格');
					return;
				}
			}
		} else {// 有第三级别的
			if (this.classValue3 != "") {
				if (this.classValueList3.length > 0) {
					// 获取
					params.goods_id = this.classValueList3[0].goods_id;
					params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
					params.specification = this.classValueList3[0].specification1_value + "/" + this.classValueList3[0].specification2_value + "/" + this.classValueList3[0].specification3_value;
					params.uuid = justep.UUID.createUUID();
					params.price = this.classValueList3[0].price;
					params.goods_img = this.classValueList3[0].goods_img;
					params.specification_id = this.classValueList3[0].specification_id;
					params.goods_name = this.classValueList3[0].goods_name;
					params.goods_sn = this.classValueList3[0].goods_sn;
					params.set_specs = 1;
				} else {
					layer.msg('商品数据异常');
					return;
				}
			} else {
				layer.msg('请选择商品规格');
				return;
			}

		}
		var p =[];
		p.push(params);
		//掉取父类的方法
		asCore.ListloadGoodsOrderInfo2(p);
		this.comp('data5').refreshData();
		this.comp("popOver1").hide();
		//新加
	};
	// 第二个分类
	Model.prototype.li6Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		$(this.getElementByXid("h56")).html("请选择规格");
		// 先获取flag
		var flag = row.val("flag");
		var name = row.val("name");// 获取名称
		if (flag == 0) {// 如果是0，则不做过滤操作
			this.classValue2 = "";
			return;
		}
		this.classValue2 = name;// 将选择之后的值记录下来
		// 判断是否有二级
		var classValue3Data = this.comp("classValue3Data")
		var getCount = classValue3Data.getCount();
		// 查找二级的
		var res = asCore.search(this.classValueList, "specification2_value", name);// 获取所有选择一级之后的目录
		var dialogData =  this.comp("dialogData");
		dialogData.loadData(res);
		dialogData.refreshData();
		if (res.length > 0) {
			$(this.getElementByXid("span9")).html(res[0].price);
		}
		this.classValueList2 = res;
		if (getCount <= 0) {// 没有选择的三级规格
			if (res.length > 0) {
				this.comp("unitData").loadData(res[0].unit);
				this.comp("unitData").refreshData();
				$(this.getElementByXid("h56")).html(res[0].goods_sn);
			}
			return;
		}
		this.comp('classValue3Data').loadData(this.classValue_name3);
		// 获取二级的数据
		classValue3Data.each(function(param) {
			var nameV = param.row.val("name");
			var nameVList = asCore.search(res, "specification3_value", nameV);
			if (nameVList.length <= 0) {
				param.row.val("flag", 0);
			} else {
				param.row.val("flag", 1);
			}
			;
		});
	};
	// 第一个分类
	Model.prototype.li7Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		// 先获取flag
		var flag = row.val("flag");
		var name = row.val("name");// 获取名称
		if (flag == 0) {// 如果是0，则不做过滤操作
			this.classValue = "";
			return;
		}
		this.classValue = name;// 将选择之后的值记录下来
		// 判断是否有二级
		var classValue2Data = this.comp("classValue2Data")
		var getCount = classValue2Data.getCount();
		// 查找二级的
		var res = asCore.search2(this.goodDataInfoList, "specification1_value", name);// 获取所有选择一级之后的目录
		this.classValueList = res;//1
		var dialogData =  this.comp("dialogData");
		dialogData.loadData(res);
		dialogData.refreshData();
		if (res.length > 0) {
			$(this.getElementByXid("span9")).html(res[0].price);
			$(this.getElementByXid("h52")).html(name);
		}
		this.comp('classValue3Data').loadData(this.classValue_name3);
		this.comp('classValue2Data').loadData(this.classValue_name2);
		if (getCount <= 0) {// 没有选择的二级规格
			// 加入单位
			if (res.length > 0) {
				this.comp("unitData").loadData(res[0].unit);
				this.comp("unitData").refreshData();
				$(this.getElementByXid("h56")).html(res[0].goods_sn);
			}
			return;
		}
		// 获取二级的数据
		classValue2Data.each(function(param) {
			var nameV = param.row.val("name");
			var nameVList = asCore.search(res, "specification2_value", nameV);
			if (nameVList.length <= 0) {
				param.row.val("flag", 0);
			} else {
				param.row.val("flag", 1);
			};
		});
	};
	// 第三个分类
	Model.prototype.li8Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		// 先获取flag
		var flag = row.val("flag");
		var name = row.val("name");// 获取名称
		if (flag == 0) {// 如果是0，则不做过滤操作
			this.classValue3 = "";
			return;
		}
		var res = asCore.search(this.classValueList2, "specification3_value", name);// 获取所有选择一级之后的目录
		this.classValueList3 = res;
		var dialogData =  this.comp("dialogData");
		dialogData.loadData(res);
		dialogData.refreshData();
		if (res.length > 0) {
			$(this.getElementByXid("span9")).html(res[0].price);
		}
		this.classValue3 = name;// 将选择之后的值记录下来
		if (res.length > 0) {
			this.comp("unitData").loadData(res[0].unit);
			this.comp("unitData").refreshData();
			$(this.getElementByXid("h56")).html(res[0].goods_sn);
		}
	};
	// // 单位分类
	// Model.prototype.li9Click = function(event) {
	//		
	// };
	// 详情加
	Model.prototype.button19Click = function(event) {
		var val = parseInt($(this.getElementByXid("span30")).html());
		$(this.getElementByXid("span30")).html(val += 1);
	};
	// 详情减
	Model.prototype.button17Click = function(event) {
		var val = parseInt($(this.getElementByXid("span30")).html());
		if (val == 1) {
			return;
		}
		$(this.getElementByXid("span30")).html(val -= 1);
	};
	Model.prototype.data5CustomRefresh = function(event){
		var json = localStorage.getItem("giftList");
		var jsonData = JSON.parse(json);
		this.comp("data5").loadData(jsonData, false);
	};
	Model.prototype.button20Click = function(event){
		justep.Shell.showPage("cartList",{flag:2});
	};
	Model.prototype.modelActive = function(event){
		this.comp("sumdata").refreshData();
	};
	return Model;
});
