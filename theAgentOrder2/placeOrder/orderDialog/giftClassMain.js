define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var common = require("$UI/theAgentOrder2/placeOrder/common");
	require("css!$UI/theAgentOrder2/common/layer/skin/default/layer").load();
	require("$UI/theAgentOrder2/common/layer/layer");
	var Model = function() {
		this.callParent();
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
	};

	Model.prototype.categoryDataCustomRefresh = function(event) {
		var params = {};
		params.clinet_id = this.params.clinet_id;
		var res = asCore.setGetFalse(inFace.categoryList, params);
		if (res.code === 200) {
			var categoryData = this.comp("categoryData");
			categoryData.loadData(res.data, false);
			// 加载左侧第一级别的分类
			// 获取第一级别的分类数据，
			if (res.data.length > 0) {
				var frist_pid = res.data[0].cate_id;// 获取第一次的分类ID
				var child_list = res.data[0].child;// 获取的是第一级别下的分类
				if (child_list != null) {// 有第二级别的数据
					this.classNameList(child_list);
					this.goodsLoad(frist_pid);
				} else {// 没有第二级别数据则直接展示商品数据
					this.getGoodList(frist_pid);// 传入商品分类ID
				}
				this.cate_id = frist_pid;
			}
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
			// 只有第二界别的
			data3.loadData(child, false);
		}
	};
	// 行点击事件
	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		// 获取子类的
		var child_list = row.val('child');
		var cate_id = row.val('cate_id');
		if (child_list != null) {// 这个是有第二级别的
			this.classNameList(child_list);
			this.goodsLoad(cate_id);
		} else {// 没有第二级别的
			// 清空第二级别的数据
			var data1 = this.comp("data1");
			data1.clear();// 清空数据
			var data3 = this.comp("data3");
			data3.clear();// 清空数据
			// 调取获取商品的接口
			this.getGoodList(cate_id);
		}
		this.cate_id = cate_id;
	};
	// 没有第二级别的则展示商品数据
	Model.prototype.getGoodList = function(cate_id) {
		this.comp("data1").clear();// 清空第二级别数据
		this.comp("data2").clear();// 清空第三级别数据
		this.goodsLoad(cate_id);
	};
	Model.prototype.goodsLoad = function(cate_id) {
		this.page = 1;
		var params = {};
		params.cate_id = cate_id;
		params.except_custom = 1;
		this.getListGoodsTrue(inFace.listGoods, params);
	};
	Model.prototype.getListGoodsTrue = function(URL, params) {
		var that = this;
		params.company_id = localStorage.getItem("company_id");
		params.user = localStorage.getItem("userId");
		params.token =  localStorage.getItem("token");
		params.supplier_id = localStorage.getItem("supplier_id");
		$.ajax({
			type : "GET",
			url : URL,
			cache : false,
			async : true,
			dataType : 'json',
			// headers :getUserIdAndToken(),
			data : params
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			if (d.code === 200) {
				var goodsDataM = that.comp("goodsDataM");
				goodsDataM.loadData(d.data.data, false);
				if (this.page == 1) {
					var total = res.data.pager.total;
					that.pageTotal = total % 20 == 0 ? parseInt(total / 20) : parseInt(total / 20) + 1;// 获取总页数
				}
				that.page += 1;
			} else {
				justep.Util.hint(res.message);
			};

		}).always(function() {
		});
	};
	// 获取选中的商品分类
	Model.prototype.groupList = function(event) {
		// event.stopPropagation();
		var row = event.bindingContext.$object;// 获取行数据
		// 获取行id
		var cate_id = row.val('cate_id');
		// 打开页面
		//giftDialog
		var params = {
			clinet_id : this.cClinet_id,
			cate_id : cate_id,
			data : {

				method : this
			}
		};
		justep.Shell.showPage("giftDialog", params);

	};
	//
	Model.prototype.data2CustomRefresh = function(event) {
		// var params = {};
		// var res = asCore.setGetFalse(inFace.secondCate, params);
		// if (res.code === 200) {
		// .log(res);
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
		this.comp("orderWinDialog").open({
			data : {
				cate_id : cate_id,
				clinet_id : this.cClinet_id
			}
		})
	};
	// 二级分类点击事件
	Model.prototype.div7Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		// 获取行id
		var cate_id = row.val('cate_id');
		// 打开页面
		// justep.Shell.showPage("product",{cate_id:cate_id});
		// 阻止事件冒泡
		this.comp("orderWinDialog").open({
			data : {
				cate_id : cate_id,
				clinet_id : this.cClinet_id
			}
		})
		event.stopPropagation();
	};
	// 商品点击事件
	Model.prototype.li2Click = function(event) {
		event.stopPropagation();
		var rowData = event.bindingContext.$object;// 行数据
		var goods_id = rowData.val("goods_id");// 获取的是商品ID
		var set_specs = rowData.val("set_specs");// 获取的是商品ID
		if(set_specs==0){
			return;
		}
		var specification_id = rowData.val("specification_id");
		var params = {};
		params.specification_id = specification_id;
		params.goods_id = goods_id;
		params.client_id = this.cClinet_id;
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
					} else {
						this.comp("classValue3Data").loadData(sValue, false);
					}
				}
			}
			// ///
		} else {
			layer.msg(res.message);
		}
		this.comp("popOver1").show();
	};

	Model.prototype.keyFocus = function(event) {
		this.comp("contents1").to(1);
	};

	Model.prototype.modelParamsReceive = function(event) {
		this.cClinet_id = this.params.clinet_id;// 客户ID
	};
	//
	Model.prototype.ListloadGoodsOrderInfo = function(params) {
		layer.msg('加入成功');
		this.setLocalStorne(params[0]);
		this.getParentModel().giftListloadGoodsOrderInfo(params);
		
	};
	//商品加
	Model.prototype.button4Click = function(event){
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
		params.goods_img = goods_img;
		params.specification_id = specification_id;
		params.goods_name = goods_name;
		params.set_specs = set_specs;
		p.push(params);
		if (goods_id != null || goods_id != "") {
			this.getParentModel().ListloadGoodsOrderInfo(p);
			this.setLocalStorne(params);
			layer.msg('商品加入成功');
//			this.close();
		} else {
				layer.msg('商品数据异常');
		}
		
	};
	//商品减
	Model.prototype.button5Click = function(event){
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
		params.specification_id =specification_id;
		params.set_specs = set_specs;
		p.push(params);
		if (goods_id != null || goods_id != "") {
			this.getParentModel().ListloadGoodsOrderInfo(p);
			this.setLocalStorne(params);
		} else {
				layer.msg('商品数据异常');
		}
	};

	Model.prototype.li7Click = function(event){
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
		this.classValueList = res;
		if (res.length > 0) {
			$(this.getElementByXid("span9")).html(res[0].price);
			$(this.getElementByXid("h52")).html(name);
		}
		if (getCount <= 0) {// 没有选择的二级规格
			// 加入单位
			if (res.length > 0) {
				this.comp("unitData").loadData(res[0].unit);
				this.comp("unitData").refreshData();
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

	Model.prototype.li6Click = function(event){
		var row = event.bindingContext.$object;// 获取行数据
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
		if (res.length > 0) {
			$(this.getElementByXid("span9")).html(res[0].price);
			$(this.getElementByXid("h56")).html(this.classValue + "/" + name);
		}
		this.classValueList2 = res;
		if (getCount <= 0) {// 没有选择的三级规格
			if (res.length > 0) {
				this.comp("unitData").loadData(res[0].unit);
				this.comp("unitData").refreshData();
			}
			return;
		}
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

	Model.prototype.li8Click = function(event){
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
		if (res.length > 0) {
			$(this.getElementByXid("span9")).html(res[0].price);
			$(this.getElementByXid("h56")).html(this.classValue + "/" + this.classValue2 + "/" + name);
		}
		this.classValue3 = name;// 将选择之后的值记录下来
		if (res.length > 0) {
			this.comp("unitData").loadData(res[0].unit);
			this.comp("unitData").refreshData();
		}
	};

	Model.prototype.button19Click = function(event){
		var val = parseInt($(this.getElementByXid("span30")).html());
		$(this.getElementByXid("span30")).html(val += 1);
	};

	Model.prototype.button17Click = function(event){
		var val = parseInt($(this.getElementByXid("span30")).html());
		if (val == 1) {
			return;
		}
		$(this.getElementByXid("span30")).html(val -= 1);
	};

	Model.prototype.button16Click = function(event){
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
						params.set_specs = 1;
					}
					;
				} else {
						layer.msg('请选择规格');
						return;
				}
			} else {// 没有第二级别的
				// 判断第一级别的
				if (this.classValue != "") {
					if (classNameData.getCount() > 0) {// 有第一级别的规格
						params.goods_id = this.classValueList[0].goods_id;
						params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
						params.specification = this.classValueList2[0].specification1_value;
						params.uuid = justep.UUID.createUUID();
						params.price = this.classValueList2[0].price;
						params.goods_img = this.classValueList2[0].goods_img;
						params.goods_name = this.classValueList2[0].goods_name;
						params.set_specs = 1;
					} else {// 没有第一级别的规格
						// 如果都没有则取值
						if (this.goodList.length > 0) {
							params.goods_id = this.goodList[0].goods_id;
							params.unit_id = unitData.getRowID();
							params.specification = "";
							params.uuid = justep.UUID.createUUID();
							params.price = this.classValueList2[0].price;
							params.goods_img = this.classValueList2[0].goods_img;
							params.goods_name = this.classValueList2[0].goods_name;
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
					params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
					params.specification = this.classValueList2[0].specification1_value + "/" + this.classValueList2[0].specification2_value + "/" + this.classValueList2[0].specification3_value;
					params.uuid = justep.UUID.createUUID();
					params.price = this.classValueList2[0].price;
					params.goods_img = this.classValueList2[0].goods_img;
					params.goods_name = this.classValueList2[0].goods_name;
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
		
		this.getParentModel().ListloadGoodsOrderInfo(p);
		this.setLocalStorne(params);
		//新加
		this.comp("popOver1").hide();
		layer.msg('商品加入成功');
	};
	//上划加载
	Model.prototype.scrollView1PullUp = function(event){
		var params ={};
		params.cate_id = this.cate_id;
		params.except_custom = 1;
		params.page = this.page;
		this.getUpLoadGoods(params);
	};
	Model.prototype.getUpLoadGoods = function(params){
		if (this.pageTotal < this.page) {
			return;
		};
		var res = asCore.setGetFalse(inFace.listGoods, params);
		if (res.code === 200) {
			var goodsDataM = this.comp("goodsDataM");
			goodsDataM.loadData(res.data.data, true);
			if(this.page == 1){
				var total = res.data.pager.total;
				this.pageTotal = total % 20 == 0 ? parseInt(total / 20) : parseInt(total / 20) + 1;// 获取总页数
			}
			this.page+=1;
		} else {
			justep.Util.hint(res.message);
		};
	};
	//购物车
	Model.prototype.button13Click = function(event){
		justep.Shell.showPage("cartList");
	};
	//加入到数据总
	Model.prototype.setLocalStorne = function(params){
		var res = asCore.search2(this.goodsDataInfo,'goods_id',params.goods_id);
		if(res.length >0){
			this.goodsDataInfo = asCore.addPop(this.goodsDataInfo,params.goods_id,params.goods_num,1);
		}else{
			this.goodsDataInfo.push(params);
		}
		this.comp("data5").loadData(this.goodsDataInfo,false);
		localStorage.setItem("giftList", JSON.stringify(this.goodsDataInfo));
	};
	//打开页面哦
	Model.prototype.button6Click = function(event){
		var params = {
			clinet_id : this.cClinet_id,
			cate_id : this.cate_id,
			data : {

				method : this
			}
		};
		justep.Shell.showPage("giftDialog", params);
	};
	return Model;
});