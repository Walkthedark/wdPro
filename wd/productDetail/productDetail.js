define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.goodsID = "";
		this.shopID = "";
		this.goodList = [];
		this.classValue = "";// 一级值
		this.classValue2 = "";// 二级值
		this.classValue3 = "";// 三级值
		this.classValueList = [];// 一级值
		this.classValueList2 = [];// 二级值
		this.classValueList3 = [];// 三级值
	};

	// 返回上一页
	Model.prototype.backBtnClick = function(event) {
		justep.Shell.closePage();
	};

	// 接收
	Model.prototype.modelLoad = function(event) {
		/*
		 * 1、参数接收事件 2、根据参数从服务端过滤数据
		 */
		var params = {};
		// params.cate_id =cate_id;
		params.goods_id = this.params.goods_id;
		params.specification_id = this.params.specification_id;// appGoodsData
		var res = asCore.setGetFalse(inFace.GoodsInfo, params);
		if (res.code === 200) {
			// 获取轮转图片
			this.setImgData(res.data.imgData);
			// 插入goods
			var goodsDataM = this.comp("goodsDataM");
			this.goodList = res.data.goodsData;
			goodsDataM.loadData(res.data.goodsData, false);
			goodsDataM.refreshData();
			var specP = {};// 插入规格的详细信息
			specP.id = 1;
			specP.specificationName = res.data.specificationName;
			specP.specificationThis = res.data.specificationThis;
			specP.specificationValue = res.data.specificationValue;
			var p = [];
			p.push(specP);
			this.comp("specificationData").loadData(p, false);// 插入规格数据
		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	// 获取轮换图片
	Model.prototype.setImgData = function(data) {
		var carousel = this.comp("carousel1");

		for (var int = 0; int < data.length; int++) {
			if (int == 0) {
				$(carousel.domNode).find("img").eq(0).attr({
					"src" : data[int]
				});
			} else {
				carousel.add('<img src="' + data[int] + '" class="image-wall tb-img"/>');
			}
		}
	};
	// 获取轮换图片
	Model.prototype.imgDataCustomRefresh = function(event) {
		/*
		 * 1、加载轮换图片数据 2、根据goodsID过滤数据 3、修改对应图片的src
		 */
		// var url = require.toUrl("./detail/json/imgData.json");
		// console.log(url)
		// var imgData = event.source;
		// imgData.clear();
		// $.ajaxSettings.async = false;
		// $.getJSON(url, function(data) {
		// imgData.loadData(data);
		// });
		// var carousel = this.comp("carousel1");
		// event.source.each(function(obj) {
		// var fImgUrl = require.toUrl(obj.row.val("fImgUrl"));
		// if (obj.index == 0) {
		// $(carousel.domNode).find("img").eq(0).attr({
		// "src" : fImgUrl
		// });
		// } else {
		// carousel.add('<img src="' + fImgUrl + '" class="image-wall
		// tb-img"/>');
		// }
		// });
	};

	// 获取商品信息
	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据 2、根据goodsID过滤数据
		 */
		var url = require.toUrl("./detail/json/goodsData.json");
		var goodsData = event.source;
		goodsData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			goodsData.loadData(data);
		});
	};

	// 获取店铺信息
	Model.prototype.shopDataCustomRefresh = function(event) {
		/*
		 * 1、加载店铺数据 2、根据shopID过滤数据
		 */
		var url = require.toUrl("./detail/json/shopData.json");
		var shopData = event.source;
		shopData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			shopData.loadData(data);
		});
	};

	// 获取参数信息
	Model.prototype.parameterDataCustomRefresh = function(event) {
		/*
		 * 1、加载参数数据 2、根据goodsID过滤数据
		 */
		var url = require.toUrl("./detail/json/parameterData.json");
		var parameterData = event.source;
		parameterData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			parameterData.loadData(data);
		});
	};

	// 获取评论信息
	Model.prototype.commentsDataCustomRefresh = function(event) {
		/*
		 * 1、加载评论数据 2、根据goodsID过滤数据
		 */
		var url = require.toUrl("./detail/json/commentsData.json");
		var commentsData = event.source;
		commentsData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			commentsData.loadData(data);
		});
	};

	// 更多评论按钮
	Model.prototype.moreBtnClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入新窗口，打开的窗口中显示评论列表 3、在打开的窗口中接收数据，并从服务端过滤数据
		 */
	};
	// 购物车按钮
	Model.prototype.shoppingCartBtnClick = function(event) {
		/*
		 * 1、切换到购物车页面 代码如下： justep.Shell.fireEvent("onShoppingContent",{});
		 * justep.Shell.showMainPage();
		 */
		justep.Shell.showPage("cart");
	};
	// 加入购物车
	Model.prototype.joinCartBtnClick = function(event) {
		/*
		 * 1、弹出商品尺码颜色选择框 2、点击确定后购物车中增加一条相应数据
		 */
		this.popOverClick(event);
	};

	// 购买按钮
	Model.prototype.buyBtnClick = function(event) {
		/*
		 * 1、获取当前商品ID 2、传入新窗口，打开的窗口中显示购买确认页面 3、在打开的窗口中接收数据，并从服务端过滤数据
		 */
		this.popOverClick(event);
	};

	// 查看宝贝分类按钮
	Model.prototype.classBtnClick = function(event) {
		/*
		 * 1、获取当前商铺ID 2、传入新窗口，打开的窗口中显示商铺分类 3、在打开的窗口中接收数据，并从服务端过滤数据
		 */
	};

	// 进店逛逛按钮
	Model.prototype.storeBtnClick = function(event) {
		/*
		 * 1、获取当前商铺ID 2、传入新窗口，打开的窗口中显示店铺主页面 3、在打开的窗口中接收数据，并从服务端过滤数据
		 */
	};

	// 全部宝贝按钮
	Model.prototype.goodsBtnClick = function(event) {
		/*
		 * 1、获取当前店铺ID 2、传入新窗口，打开的窗口中显示商品列表 3、在打开的窗口中接收数据，并从服务端过滤数据
		 */
	};

	// 分享按钮
	Model.prototype.shareBtnClick = function(event) {
		/*
		 * 1、获取商品ID 2、打开分享页面 3、参数说明 thumb：缩略图，可以显示商品图片，注意不能大于32kb，链接从http开始
		 * webpageUrl: 分享链接，使用location.href显示当前页面，链接从http开始
		 * scene:分享到微信朋友圈、微信朋友、微信群 weixin.Scene.TIMELINE 是分享到微信朋友圈
		 * weixin.Scene.SESSION 是分享给微信朋友、微信群
		 * 
		 * 微信分享代码如下： if (!navigator.weixin) { return; } var weixin =
		 * navigator.weixin; var Utils =
		 * require("$UI/system/components/justep/common/utils"); weixin.share({
		 * message : { title : this.comp("goodsData").val("fTitle"), description :
		 * "", mediaTagName : "", thumb : location.origin +
		 * require.toUrl("./detail/img/icon.png"), media : { type :
		 * weixin.Type.WEBPAGE, webpageUrl : Utils.getShareUrl() } }, scene :
		 * weixin.Scene.TIMELINE }, function() { // alert("Success"); },
		 * function(reason) { // alert("Failed: " + reason); });
		 */
	};

	// 颜色选择弹出窗显示
	Model.prototype.popOverClick = function(event) {
		var params = {};
		// params.cate_id =cate_id;
		params.goods_id = this.params.goods_id;
		params.specification_id = this.params.specification_id;// appGoodsData
		var specificationData = this.comp("specificationData");// 获取规格数据
		var specificationName = specificationData.getValueByID("specificationName", 1);// 获取分类名称
		var specificationValue = specificationData.getValueByID("specificationValue", 1);
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
			this.comp("unitData").loadData(this.goodList[0].unit, false);
			this.comp("unitData").refreshData();
		}
		;
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
						asCore.search(this.goodList, "specification1_value", specificationValue[int][int2]).length > 0 ? "" : pValue.flag = 0;
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

		// var res = asCore.setGetFalse(inFace.appGoodsData, params);
		// if (res.code === 200) {
		// // 插入goods
		// var goodsDataWeb = this.comp("goodsDataWeb");
		// goodsDataWeb.loadData(res.data, false);
		// goodsDataWeb.refreshData();
		this.comp("popOver1").show();
		// } else {
		// justep.Util.hint(res.message);
		// }
		// ;

	};

	// 颜色状态修改
	Model.prototype.colorLiClick = function(event) {
		/*
		 * 1、颜色选择点击事件 2、修改当前颜色状态
		 */

	};

	Model.prototype.goodsDataWebCustomRefresh = function(event) {

	};
	// 加入购物车
	Model.prototype.button4Click = function(event) {
		var classNameData = this.comp("classNameData");
		var classNameData2 = this.comp("className2Data");
		var classNameData3 = this.comp("className3Data");
		var unitData = this.comp("unitData");
		var params = {};
		var quantity = parseInt($(this.getElementByXid("span30")).html());
		params.quantity = quantity;
		if (classNameData3.getCount() <= 0) {// 没有第三级别的
			if (classNameData2.getCount() > 0) {// 有第二级别的
				if (this.classValue2 != "") {
					if (this.classValueList2.length > 0) {
						params.goods_id = this.classValueList2[0].goods_id;
						params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
					}
					;
				} else {
					justep.Util.hint("请选择商品规格");
				}
			} else {// 没有第二级别的
				// 判断第一级别的
				if (this.classValue != "") {
					if (classNameData.getCount() > 0) {// 有第一级别的规格
						params.goods_id = this.classValueList[0].goods_id;
						params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
					} else {// 没有第一级别的规格
						// 如果都没有则取值
						if (this.goodList.length > 0) {
							params.goods_id = this.goodList[0].goods_id;
							params.unit_id = unitData.getRowID();
						} else {
							justep.Util.hint("商品数据异常");
						}
					}
				} else {
					justep.Util.hint("请选择商品规格");
				}
			}
		} else {// 有第三级别的
			if (this.classValue3 != "") {
				if (this.classValueList3.length > 0) {
					// 获取
					params.goods_id = this.classValueList3[0].goods_id;
					params.unit_id = unitData.getRowID();// 添加单位id////不应该在这取单位的值
				} else {
					justep.Util.hint("商品数据异常");
				}
			} else {
				justep.Util.hint("请选择商品规格");
			}

		}
		console.log(params);
		this.saveCat(params);
	};
	Model.prototype.saveCat = function(params) {
		var res = asCore.setGetFalse(inFace.cartSave, params);
		if (res.code === 200) {
			// 插入goods
			justep.Util.hint("加入购物车成功");
			this.comp("popOver").hide();
		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	// 一级分类
	Model.prototype.li1Click = function(event) {
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
		var res = asCore.search(this.goodList, "specification1_value", name);// 获取所有选择一级之后的目录
		this.classValueList = res;
		if(res.length > 0){
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
	// 二级分类
	Model.prototype.li2Click = function(event) {
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
		if(res.length > 0){
			$(this.getElementByXid("span9")).html(res[0].price);
			$(this.getElementByXid("h52")).html(this.classValue+"/"+name);
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
	// 三级分类
	Model.prototype.li4Click = function(event) {
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
		console.log(res);
		if(res.length > 0){
			$(this.getElementByXid("span9")).html(res[0].price);
			$(this.getElementByXid("h52")).html(this.classValue+"/"+this.classValue2+"/"+name);
		}
		this.classValue3 = name;// 将选择之后的值记录下来
		if (res.length > 0) {
			this.comp("unitData").loadData(res[0].unit);
			this.comp("unitData").refreshData();
		}
	};
	// 加
	Model.prototype.addBtnClick = function(event) {
		var val = parseInt($(this.getElementByXid("span30")).html());
		$(this.getElementByXid("span30")).html(val += 1);

	};
	// 减
	Model.prototype.reductionBtnClick = function(event) {
		var val = parseInt($(this.getElementByXid("span30")).html());
		if (val == 1) {
			return;
		}
		$(this.getElementByXid("span30")).html(val -= 1);
	};
	return Model;
});