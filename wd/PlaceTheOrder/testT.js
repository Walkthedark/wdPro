define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	require('css!$UI/wd/PlaceTheOrder/tagTree/css/tagTree').load();
	require("css!$UI/wd/common/layer/skin/default/layer").load();
	require("$UI/wd/common/layer/layer");
	var Model = function() {
		this.callParent();
		this.page = 1;// 当前页数
		this.pageTotal = 0;// 总页数
		this.c_id = "";// 记录下分类ID

		this.category = 0;// 判断分类是否加载过
		this.CATE_ID_Value = -1;
		this.radioCheck = "";// 获取过滤分类的值
		this.cClinet_id = ""
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
	var self = this;
	Model.prototype.categoryDataCustomRefresh = function(event) {
		// var params = {};
		// var res = asCore.setGetFalse(inFace.Category, params);
		// if (res.code === 200) {
		// var categoryData = this.comp("categoryData");
		// categoryData.loadData(res.data, false);
		// } else {
		// justep.Util.hint(res.message);
		// }
		// ;
	};

	Model.prototype.li1Click = function(event) {
		event.stopPropagation();// 阻止事件传播
		var rowData = event.bindingContext.$object;// 行数据
		var cate_id = rowData.val('cate_id');
		// 打开页面
		justep.Shell.showPage("product", {//打开详情页面
			cate_id : cate_id
		});
	};
	function getGoodsList(id) {
		
	}
	Model.prototype.modelLoad = function(event) {
		this.page = 1;
		this.pageTotal = 0;
		var params = {};
		var res = asCore.setGetFalse(inFace.Category, params);
		if (res.code === 200) {
			console.log(res);
			this.tagTree({
				id : "",
				data : res.data,
				fold : false,
				multiple : false,
				check : function(val) {
					console.log($(this).tagTreeValues());
				},
				done : function() {
					console.log('tagTree is ok!');
				},
				click : function(val) {
					console.log("fff")
				},
			});
			// 掉取分类商品
			if (res.data.length > 0) {// 判断大于
				var cate_id = res.data[0].cate_id;// 获取分类的值
				// MICHEAL 注释end
				var params = {};
				params.cate_id = cate_id;
				this.c_id = cate_id;
				this.cClinet_id = cate_id;
				params.except_custom = 1;
				var res = asCore.setGetFalse(inFace.goodsList, params);
				if (res.code === 200) {
					var goodsDataM = this.comp("goodsDataM");
					goodsDataM.loadData(res.data.data, false);
					goodsDataM.refreshData();
					if (this.page == 1) {// 第一次加载
						this.page += 1;
						var total = res.data.pager.total;
						this.pageTotal = total % 20 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;// 获取总页数
					}
				} else {
					justep.Util.hint(res.message);
				}
				;
			} else {

			}
		}
	};
	Model.prototype.button1Click = function(id) {
		console.log("我的一个好人")
		self.comp("categoryData").loadData([], false);
	};
	// (function($){

	var defaults = {
		id : "",
		data : [],
		fold : true,
		multiple : false,
		check : function() {
		},
		click : function() {
			console.log("gg")
		},
		done : function() {
		}
	};
	Model.prototype.delData = function(id) {
		this.page = 1;// 当前页数
		this.pageTotal = 0;// 总页数
		if (id != null || id != "") {
			this.c_id = id;
			// 掉取获取分类的商品数据
			var cate_id = id;// 获取分类的值
			// MICHEAL 注释end
			var params = {};
			params.cate_id = cate_id;
			params.except_custom =1;
			var res = asCore.setGetFalse(inFace.goodsList, params);
			if (res.code === 200) {
				var goodsDataM = this.comp("goodsDataM");
				goodsDataM.loadData(res.data.data, false);
				goodsDataM.refreshData();
				if (this.page == 1) {// 第一次加载
					this.page += 1;
					var total = res.data.pager.total;
					this.pageTotal = total % 20 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;// 获取总页数
				}
			} else {
				justep.Util.hint(res.message);
			}
			;
		} else {
			justep.Util.hint("数据出现未知错误", {
				type : "info"
			});
		}
	};
	Model.prototype.tagTree = function(options) {
		var slef = this;
		var that = $("#test");
		options.id = "#" + that.attr("id");
		var opts = $.extend(defaults, options);
		that.addClass("tagtree");
		this.setTree(defaults.data, $("#test"));
		$(defaults.id + ' li:has(ul)').addClass('li-top');
		if (defaults.fold)
			$(defaults.id + " .li-top li").hide('fast');
		$(defaults.id + ' li.li-top > span').on('click', function(e) {
			var child = $(this).parent('li.li-top').find(' > ul > li');
			if (child.is(":visible")) {
				child.hide('fast');
				var dia = this.getElementsByTagName("i")[0].getAttribute('name');
				slef.delData(dia);
			} else {
				var dia = this.getElementsByTagName("i")[0].getAttribute('name');
				child.show('fast');
				slef.delData(dia);
			}
			return false;
		});
		$(defaults.id + ' li span').hover(function() {
			if (!$(this).find('i').hasClass('i-check'))
				$(this).find('i').show(200);
		}, function() {
			if (!$(this).find('i').hasClass('i-check'))
				$(this).find('i').hide(100);
		});
		$(defaults.id + ' li span i').click(function(event) {
			if (!defaults.multiple) {
				$(defaults.id + " .i-check").removeClass('i-check').hide(100);
			}
			if ($(this).hasClass('i-check'))
				$(this).removeClass('i-check');
			else
				$(this).addClass('i-check');
			defaults.check($(this).attr("data-val"));

			return false;
		});
		$(defaults.id + ' li').click(function(event) {
			return false;
		});
		defaults.done();
	};
	Model.prototype.tagTreeValues = function() {
		var vals = [];
		$(defaults.id + " .i-check").each(function(index, el) {
			vals.push($(el).attr('data-val'));
		});
		return vals;
	};
	// 递归生成树
	Model.prototype.setTree = function(data, that) {
		self = this;
		var ul = $('<ul></ul>');
		that.append(ul);
		$.each(data, function(index, value) {
			var li = $('<li  onclick="justep.Bind.contextFor(this).$model.delData(' + value.cate_id + ')" ><span>' + value.cate_name + '<i  name=' + '\'' + value.cate_id + '\''
					+ 'class="fa fa-check" style="display:none;">' + '</i></span></li>');
			ul.append(li);
			if (value.child != null) {
				if (value.child.length > 0) {
					self.setTree(value.child, li);
				}
			}

		});
	};
	// 获取的准备跳转
	Model.prototype.li2Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		var goods_id = row.val("goods_id");
		var specification_id = row.val("specification_id");
		justep.Shell.showPage("productDetail", {
			goods_id : goods_id,
			specification_id : specification_id
		});
	};
	// 上划加载
	Model.prototype.scrollView1PullUp = function(event) {
		if (this.pageTotal < this.page) {
			return;
		}
		this.upGetLoadData(event);
	};
	Model.prototype.upGetLoadData = function(event) {
		if (this.c_id != null || this.c_id != "") {
			// 掉取获取分类的商品数据
			var cate_id = this.c_i;// 获取分类的值
			// MICHEAL 注释end
			var params = {};
			params.cate_id = cate_id;
			params.except_custom = 1;
			params.page = this.page;
			var res = asCore.setGetFalse(inFace.listGoods, params);
			if (res.code === 200) {
				var goodsDataM = this.comp("goodsDataM");
				goodsDataM.loadData(res.data.data, true);
				this.page += 1;
			} else {
				justep.Util.hint(res.message);
			}
			;
		} else {
			justep.Util.hint("数据出现未知错误", {
				type : "info"
			});
		}
	};
	////
	Model.prototype.addCartClick = function(event){
		event.stopPropagation();// 阻止事件传播
		this.classValue_name2 = [];
		this.classValue_name3 = [];
		var rowData = event.bindingContext.$object;// 行数据
		var goods_id = rowData.val("goods_id");// 获取的是商品ID
		var specification_id = rowData.val("specification_id");
		;// 获取的是
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
						this.classValue_name2 =sValue;
					} else {
						this.comp("classValue3Data").loadData(sValue, false);
						this.classValue_name3 =sValue;
					}
				}
			}
			// ///
		} else {
			justep.Util.hint(res.message);
		}
		this.comp("popOver1").show();
	};
	Model.prototype.reductionZBtnClick = function(event){
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
		params.set_specs = set_specs;
		p.push(params);
		if (goods_id != null || goods_id != "") {
			this.getParentModel().ListloadGoodsOrderInfo(p);
			this.close();
		} else {
			justep.Util.hint("商品数据异常", {
				'type' : 'danger'
			});
		}
		
	};
	Model.prototype.addZBtnClick = function(event){
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
		params.goods_name = goods_name;
		params.set_specs = set_specs;
		p.push(params);
		if (goods_id != null || goods_id != "") {
			
//			this.getParentModel().ListloadGoodsOrderInfo(p);
//			this.close();
		} else {
			justep.Util.hint("商品数据异常", {
				'type' : 'danger'
			});
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
//			$(this.getElementByXid("span9")).html(res[0].price);
//			$(this.getElementByXid("h52")).html(name);
		}
		if (getCount <= 0) {// 没有选择的二级规格
			// 加入单位
			if (res.length > 0) {
				this.comp("unitData").loadData(res[0].unit);
				this.comp("unitData").refreshData();
			}
			return;
		}
		this.comp('classValue3Data').loadData(this.classValue_name3,false);
		this.comp('classValue2Data').loadData(this.classValue_name2,false);
//		console.log(this.comp('classValue3Data').toJson());
//		console.log(this.comp('classValue2Data').toJson());
		// 获取二级的数据
		classValue2Data.each(function(param) {
			var nameV = param.row.val("name");
			var nameVList = asCore.search(res, "specification2_value", nameV);
			if (nameVList.length <= 0) {
				param.row.val("flag", 0);
			} else {
				param.row.val("flag", 1);
			}
			;
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
//			$(this.getElementByXid("span9")).html(res[0].price);
//			$(this.getElementByXid("h52")).html(this.classValue + "/" + name);
		}
		this.classValueList2 = res;
		if (getCount <= 0) {// 没有选择的三级规格
			if (res.length > 0) {
				this.comp("unitData").loadData(res[0].unit);
				this.comp("unitData").refreshData();
			}
			return;
		}
		this.comp('classValue3Data').loadData(this.classValue_name3,false);
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
//			$(this.getElementByXid("span9")).html(res[0].price);
//			$(this.getElementByXid("h52")).html(this.classValue + "/" + this.classValue2 + "/" + name);
		}
		this.classValue3 = name;// 将选择之后的值记录下来
		if (res.length > 0) {
			this.comp("unitData").loadData(res[0].unit);
			this.comp("unitData").refreshData();
		}
	};
	Model.prototype.button4Click = function(event){
		var classNameData = this.comp("classNameData");
		var classNameData2 = this.comp("className2Data");
		var classNameData3 = this.comp("className3Data");
		var unitData = this.comp("unitData");
		var params = {};
		var quantity = parseInt($(this.getElementByXid("span30")).html());
		params.goods_num = quantity;
		params.quantity = quantity;
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
					layer.msg('请选择商品规格');
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
		//掉取加入购物车的方法
//		layer.msg('加入成功');
		console.log(params);
//		this.getParentModel().ListloadGoodsOrderInfo(p);
		//新加
		this.cartSave(params);
		this.comp("popOver1").hide();
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
	Model.prototype.sortingBtnClick = function(event){

	};
	Model.prototype.screeningBtnClick = function(event){

	};
	Model.prototype.cartSave = function(params){
		var res = asCore.setGetFalse(inFace.cartSave, params);
		if (res.code === 200) {
			// 插入goods
			layer.msg('加入购物车成功');
			this.comp('popOver1').hide();
		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	return Model;

});
;