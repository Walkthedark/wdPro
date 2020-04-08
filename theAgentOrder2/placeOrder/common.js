define(function(require) {
	// var $ = require("jquery");
	// var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder/common/asCore");
	var inFace = require("$UI/theAgentOrder/common/interfaceAdress");
	// 开发核心获取价格js
	var common = {};
	var flag = 1;// 加载一次促销活动
	this.getpromotion = {};
	common.getPromotionMoney = function(params) {
		// 获取用户选择的商品
		// 获取促销活动成功
		if (flag == 1) {
			this.getPromotionActiv(params.clinet_id);
		}
		var goodsDataNew = JSON.parse(JSON.stringify(params.goodsData));
		var returnDoodsData = [];
		var allGoodsNum = 0;
		var theGifts = [];// 赠品的内容
		// 循环
		for (var int = 0; int < params.goodsData.length; int++) {// 循环的是选中的商品Data
			for (var gt = 0; gt < this.getpromotion.product.length; gt++) {// 循环的是参加促销优惠的活动
				// 参加商品单品优惠
				if (params.goodsData[int].goods_id == this.getpromotion.product[gt].promotion_goods) {
					// 促销商品的促销类型//promotion_rule:4买赠（赠品） 5直降 6打折
					// 买赠满赠为赠送数量，满减为优惠金额，满折为打折力度95就是打95折
					goodsDataNew[int] = null;// 只要参加单品促销的商品，就不会参加组合促销
					var goods_num = params.goodsData[int].goods_num;
					/**
					 * 是不是最小的单位
					 */
					var unit = params.goodsData[int].unit;// 获取所有的单位
					var unit_id = params.goodsData[int].unit_id;// 获取本个商品的ID
					var goods_num_new = params.goodsData[int].goods_num;
					if (unit != null) {
						var p = asCore.search(unit, 'id', unit_id);
						if (p.length > 0) {
							var ratio = p[0].ratio;
							if (ratio != null) {
								goods_num_new *= ratio;
							}
						}
					}
					// 获取的活动
					var promotion_detailH = this.getpromotion.product[gt].promotion_detail;
					// 获取活动的个数
					var promoDetailLength = promotion_detailH.length;
					var Num = -1;// 用于判断满足那种促销活动的索引
					for (var d = 0; d < promoDetailLength; d++) {// 循环的具体的活动内容
						if (goods_num_new >= promotion_detailH[d].full) {// 数量满足第一个促销条件，有bug，如果只有一个的话怎么办
							Num = d;
							continue;
						} else {
							break;
						}
					}
					var product_promotion = [];
					product_promotion.push(this.getpromotion.product[gt]);
					if (Num != -1) {
						// 给予每个字断赋值
						if (this.getpromotion.product[gt].promotion_rule == 4) {// 这个是赠品
							// 获取的是promotion_detail，赠品内容
							var newPrice = params.goodsData[int].price;
							params.goodsData[int].sales_price = newPrice;// 算出当前商品的总价的价格
							params.goodsData[int].total_price = goods_num * newPrice;
							params.goodsData[int].sales_flag = 0;// 加入促销的商品
							// 新加内容//赠品需要的内容
							params.goodsData[int].sales_flag_num = Num;
							params.goodsData[int].promotion_id = this.getpromotion.product[gt].promotion_id;
							params.goodsData[int].promotion = product_promotion;

						} else if (this.getpromotion.product[gt].promotion_rule == 5) {// 5直降
							// 直降（满多少数量，更改价格）
							if (Num != -1) {// 如果Num==0代表的是不满足条件，反之则满足促销的活动的资格
								// 获取的是价格
								var newPrice = promotion_detailH[Num].reduction;// 获取的价格
								// 将新价格赋值给传过来的数据
								params.goodsData[int].sales_price = newPrice;
								params.goodsData[int].sales_flag = 1;
								params.goodsData[int].total_price = goods_num_new * newPrice;// 算出当前商品的总价的价格
								params.goodsData[int].promotion = product_promotion;
								// 加入赠品的清单
							}
						} else if (this.getpromotion.product[gt].promotion_rule == 6) {// 6打折
							if (Num != -1) {// 如果Num==0代表的是不满足条件，反之则满足促销的活动的资格
								// 获取的是价格
								var discount = promotion_detailH[Num].reduction;// 获取新的价格折数
								// 将新价格赋值给传过来的数据
								var goods_price = params.goodsData[int].price;
								var newPrice = discount / 100;// 算出单个商品的单价
								params.goodsData[int].sales_price = newPrice;// 算出当前商品的总价的价格
								params.goodsData[int].total_price = goods_num * goods_price * newPrice;// 酸楚价格
								params.goodsData[int].sales_flag = 1;// 加入促销的商品
								params.goodsData[int].promotion = product_promotion;
							}

						}

					} else {
						var newPrice = params.goodsData[int].price;
						params.goodsData[int].sales_price = newPrice;// 算出当前商品的总价的价格
						params.goodsData[int].total_price = goods_num * newPrice;
						params.goodsData[int].sales_flag = 1;// 加入促销的商品
					}
					returnDoodsData.push(params.goodsData[int]);
					allGoodsNum += params.goodsData[int].total_price;
				}
			}

		}

		/**
		 * 第二种循环的是组合促销商品的活动
		 */
		for (var pr = 0; pr < this.getpromotion.group.length; pr++) {// 循环的是促销商品的活动
			var goods_id_product = this.getpromotion.group[pr].group_goods;// 获取参加所有活动的商品
			var goods_id_product_arr = goods_id_product.split(',');// 将商品ID拆分成数组
			var temporary_list = [];// 这个是临时的活动数据容器
			for (var int2 = 0; int2 < goods_id_product_arr.length; int2++) {// 循环获取对应的商品信息
				var pl = asCore.search(params.goodsData, 'goods_id', goods_id_product_arr[int2]);
				// 要判断是否是最小计量的单位
				if (pl.length > 0) {// 代表查到数据
					temporary_list.push(pl[0]);// 加入到临时的的组合促销的数组中去
				}
			}
			var group_promotion = [];
			group_promotion.push(this.getpromotion.group[pr]);
			// 5直降 6打折
			var promotion_ruleL = this.getpromotion.group[pr].promotion_rule;
			var promotion_id = this.getpromotion.group[pr].promotion_id;//
			// 获取参加商品组合的促销类型 promotion_type 促销类型（组合促销用） 1按数量 2按金额
			var promotion_typeL = this.getpromotion.group[pr].promotion_type;
			// 获取商品的组合促销内容
			var promotion_detailL = this.getpromotion.group[pr].promotion_detail;
			if (temporary_list.length <= 0) {// 没找到
				continue;
			} else if (temporary_list.length > 0 && temporary_list.length <= 1) {// 这条活动参加组合促销的商品只选择了一个
				// 获取参加商品的优惠类型 promotion_rule 1满赠（赠品） 2满减 （减少金额） 3满折（打折） 4买赠（赠品）
				var goods_numG = temporary_list[0].goods_num;
				var goods_priceG = temporary_list[0].price;
				var unit = temporary_list[0].unit;// 获取所有的单位
				var unit_id = temporary_list[0].unit_id;// 获取本个商品的ID
				var goods_numG_new = temporary_list[0].goods_num;
				if (unit != null) {
					var p = asCore.search(unit, 'id', unit_id);
					if (p.length > 0) {
						var ratio = p[0].ratio;
						if (ratio != null) {
							goods_numG_new *= ratio;
						}
					}
				}
				if (promotion_typeL == 1) {// 1按数量
					// 将多单位换算成最低的单位
					var Num = this.getNumMoney(promotion_detailL, goods_numG_new, 1);
					if (Num != -1) {// 组合促销中选择单个商品符合参加组合促销的要求
						// 符合要求之后获取新的价格
						var returnJson = this.getNewMoney(Num, promotion_ruleL, promotion_detailL, goods_priceG, goods_numG_new);// 获取价格和总价
						temporary_list[0].total_price = returnJson.total_price;
						temporary_list[0].sales_price = returnJson.newPrice;
						temporary_list[0].sales_flag = returnJson.sales_flag;
						temporary_list[0].promotion_id = promotion_id;
						temporary_list[0].sales_flag_num = Num;
						temporary_list[0].promotion = group_promotion;
						returnDoodsData.push(temporary_list[0]);
					}
					;
				} else if (promotion_typeL == 2) {// 2按金额
					var numAndMoney = goods_numG * goods_priceG;
					var Num = this.getNumMoney(promotion_detailL, numAndMoney, 1);
					if (Num != -1) {
						var returnJson = this.getNewMoney(Num, promotion_ruleL, promotion_detailL, goods_priceG, goods_numG);// 获取价格和总价
						temporary_list[0].total_price = returnJson.total_price;
						temporary_list[0].sales_price = returnJson.newPrice;
						temporary_list[0].sales_flag = returnJson.sales_flag;
						temporary_list[0].sales_flag_num = Num;
						temporary_list[0].promotion_id = promotion_id;
						temporary_list[0].promotion = group_promotion;
						// 加入商品的活动
						returnDoodsData.push(temporary_list[0]);
					}
				}
			} else if (temporary_list.length > 1) {// 这条活动参加组合促销的商品只选择了2个或以上
				// 多个 promotion_ruleL promotion_typeL promotion_detailL
				// 判断促销类型
				var numAndMoney = 0;
				if (promotion_typeL == 1) {// 按数量
					for (var int3 = 0; int3 < temporary_list.length; int3++) {
						var unit = temporary_list[int3].unit;// 获取所有的单位
						var unit_id = temporary_list[int3].unit_id;// 获取本个商品的ID
						var goods_numD_new = temporary_list[int3].goods_num;// 初始化数量
						if (unit != null) {
							var p = asCore.search(unit, 'id', unit_id);
							if (p.length > 0) {
								var ratio = p[0].ratio;
								if (ratio != null) {
									goods_numD_new *= ratio;
								}
							}
							console.log("1__")
							numAndMoney += goods_numD_new;
						} else {
							console.log("2__")
							numAndMoney += temporary_list[int3].goods_num;
						}

					}
					console.log(numAndMoney);
					var Num = this.getNumMoney(promotion_detailL, numAndMoney, 1);
					if (Num != -1) {// 两者加起来的数量符合组合促销的要求
						for (var int5 = 0; int5 < temporary_list.length; int5++) {
							var array_element = temporary_list[int5];
							var goods_numG = array_element.goods_num;
							var goods_priceG = array_element.price;
							var unitG = array_element.unit;
							var unit_idG = array_element.unit_id;
							var goods_numG_new = goods_numG;
							if (unitG != null) {
								var p = asCore.search(unitG, 'id', unit_idG);
								if (p.length > 0) {
									var ratio = p[0].ratio;
									if (ratio != null) {
										goods_numG_new *= ratio;
									}
								}
							}
							var returnJson = this.getNewMoney(Num, promotion_ruleL, promotion_detailL, goods_priceG, goods_numG_new);
							temporary_list[int5].total_price = returnJson.total_price;
							temporary_list[int5].sales_price = returnJson.newPrice;
							temporary_list[int5].promotion_id = promotion_id;
							temporary_list[int5].sales_flag_num = Num;
							temporary_list[int5].promotion = group_promotion;
							if (int5 == 0) {
								temporary_list[int5].sales_flag = returnJson.sales_flag;
							} else {
								temporary_list[int5].sales_flag = 1;
							}
							returnDoodsData.push(temporary_list[int5]);
						}
					}
				} else if (promotion_typeL == 2) {// 按金额
					for (var int4 = 0; int4 < temporary_list.length; int4++) {
						numAndMoney += temporary_list[int4].goods_num * temporary_list[int4].price;
					}
					var Num = this.getNumMoney(promotion_detailL, numAndMoney, 2);
					if (Num != -1) {// 两者加起来的总价格符合组合促销的要求，将打折活着加少金额
						// 获取参加商品的优惠类型 promotion_rule 1满赠（赠品） 2满减 （减少金额） 3满折（打折）
						// 4买赠（赠品）
						for (var int5 = 0; int5 < temporary_list.length; int5++) {
							var array_element = temporary_list[int5];
							var goods_numG = array_element.goods_num;
							var goods_priceG = array_element.price;
							var returnJson = this.getNewMoney(Num, promotion_ruleL, promotion_detailL, goods_priceG, goods_numG);
							temporary_list[int5].total_price = returnJson.total_price;
							temporary_list[int5].sales_price = returnJson.newPrice;
							temporary_list[int5].sales_flag = returnJson.sales_flag;
							temporary_list[int5].promotion_id = promotion_id;
							temporary_list[int5].sales_flag_num = Num;
							temporary_list[int5].promotion = group_promotion;
							returnDoodsData.push(temporary_list[int5]);
						}
					}
				}
			}
		}
		/**
		 * 获取除参加活动商品外的其他商品,及所有商品的总价
		 * 
		 */
		for (var int6 = 0; int6 < goodsDataNew.length; int6++) {
			var array_element = goodsDataNew[int6];
			if (array_element == null) {
				continue;
			}
			var pl = asCore.search(returnDoodsData, 'goods_id', array_element.goods_id);
			if (pl.length <= 0) {
				var linShiPrice = array_element.goods_num * array_element.price;// 算出没有参加商品的总价格
				array_element.total_price = linShiPrice;
				array_element.sales_price = array_element.price;
				array_element.sales_flag = 1;
				array_element.sales_flag_num = -1;
				returnDoodsData.push(array_element);// 加入返回的商品数据data中去
				allGoodsNum += linShiPrice;
			} else {
				allGoodsNum += pl[0].total_price;
			}
		}
		/**
		 * 获取订单优惠
		 * 
		 */
		var res = {};
		// if (this.getpromotion.order.promotion_rule != null &&
		// this.getpromotion.order.promotion_rule != "") {// 如果为空则表示该用户没有订单优惠
		// var t = [];
		// t.push(this.getpromotion.order);
		// var Num = this.getNumMoney(t[0].promotion_detail, allGoodsNum, 2)
		// if (Num != -1) {
		// var resD = this.getOrderMoney(Num, t, allGoodsNum);
		// res.resD = resD;
		// res.orderFlag = 1;
		// }else{
		// res.orderFlag = 0;
		// }
		// }else{
		// res.orderFlag = 0;
		// }
		res.allGoodsNum = allGoodsNum;// 放入总价
		res.returnDoodsData = returnDoodsData;
		return res;
	};
	//
	common.getOrderMoney = function(Num, order, allGoodsNum) {// 这个是算最后的订单金额下的总金额
		var res = {};
		var reducOrderdis = order[0].promotion_detail;
		var priceAndDis = reducOrderdis[Num].reduction;
		var orderReductionPrice = 0;
		var reductionPrice = 0;
		if (order[0].promotion_rule == 1) {// 赠送
			orderReductionPrice = allGoodsNum;
		} else if (order[0].promotion_rule == 2) {// 满减少金额
			orderReductionPrice = allGoodsNum - priceAndDis;
			reductionPrice = priceAndDis;
		} else if (order[0].promotion_rule == 3) {// 打折
			orderReductionPrice = priceAndDis / 100 * allGoodsNum;
			reductionPrice = allGoodsNum - (priceAndDis / 100 * allGoodsNum);
		}
		res.orderReductionPrice = orderReductionPrice.toFixed(2);
		res.reductionPrice = reductionPrice.toFixed(2);
		return res;
	};
	common.getNumMoney = function(promotion_detail, numAndMoney, flag) {
		// flag 等于1的时候是按照数量 2按照金额
		var Num = -1;
		var promotion_detailC = promotion_detail;
		for (var int = 0; int < promotion_detailC.length; int++) {
			if (numAndMoney >= promotion_detailC[int].full) {// 数量满足第一个促销条件，有bug，如果只有一个的话怎么办
				Num = int;
				continue;
			} else {
				break;
			}
		}
		return Num;
	};
	common.getNewMoney = function(Num, promotion_ruleL, promotion_detail, oldPrice, goods_numG) {// 接受参数是取值，优惠类型，促销内容，原先价格，以及数量
		var promotion_detailJson = promotion_detail;
		var params = {};//
		var newPrice = 0;
		var total_price = 0;
		var sales_flag = 1;
		if (promotion_ruleL == 1) {// 1满赠（赠品） 2.必进1.2.3
			newPrice = oldPrice;
			total_price = oldPrice * goods_numG;
			sales_flag = 0;//
		} else if (promotion_ruleL == 2) {// 2满减 （减少金额）
			newPrice = oldPrice;
			var reducePrice = promotion_detailJson[Num].reduction;// 取出来要减少的金额
			total_price = (oldPrice * goods_numG) - reducePrice;// 总价满足然后减去价格
		} else if (promotion_ruleL == 3) {// 3满折（打折）
			var discount = promotion_detailJson[Num].reduction;// 取出来要减少的金额
			newPrice = discount / 100 * oldPrice;
			total_price = discount / 100 * oldPrice * goods_numG;// 总价满足然后减去价格
		} else if (promotion_ruleL == 4) {// 4买赠（赠品） 1.必进4.5.6//赠品尚未开发
			newPrice = oldPrice;// 新的价格
			total_price = newPrice * goods_numG;//
		} else if (promotion_ruleL == 5) {// 5直降
			// 获取减少的金额的价格
			newPrice = promotion_detailJson[Num].reduction;// 新的价格
			total_price = newPrice * goods_numG;//
		} else if (promotion_ruleL == 6) {// 6打折
			newPrice = promotion_detailJson[Num].reduction / 100 * oldPrice;
			total_price = newPrice * goods_numG;//
		}
		params.newPrice = newPrice;//
		params.total_price = total_price;//
		params.sales_flag = sales_flag;
		return params;
	};
	// 获取促销活动
	common.getPromotionActiv = function(clinet_id) {
		// 获取促销活动
		var params = {};
		params.client_id = clinet_id;
		var res = asCore.setGetFalse(inFace.getpromotion, params);
		if (res.code == 200) {
			this.getpromotion = res.data;
			flag = 2;
			return res;
		} else {
			return {
				code : -1000
			};
		}

	};
	// 加/减/删除
	common.addReductionDelete = function(arr, uuid, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].uuid == uuid) {
					arr.splice(i, 1);
					return arr;
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].uuid == uuid) {
					arr[int].goods_num += 1;
					return arr;
				}
			}
		} else if (flag == 2) {
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].uuid == uuid) {
					arr[int].goods_num -= 1;
					return arr;
				}
			}
		}

	};
	// 商品详情加/减/删除，根据商品ID和单位
	common.addReductionDeleteInfo = function(arr, goods_id, unit_id, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].goods_id == goods_id) {
					if (arr[i].unit_id == unit_id) {
						arr.splice(i, 1);
						return arr;
					}
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == goods_id) {
					if (arr[int].unit_id == unit_id) {
						if (arr[int].goods_num == null || arr[int].goods_num == "") {
							arr[int].goods_num = 1;
						} else {
							arr[int].goods_num += 1;
						}

					} else {
						arr[int].goods_num = 0;
					}
				}
			}
			return arr;
		} else if (flag == 2) {//
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == goods_id) {
					if (arr[int].unit_id == unit_id) {
						if (arr[int].goods_num == null || arr[int].goods_num == "") {
							arr[int].goods_num = 0;
						} else {
							arr[int].goods_num -= 1;
						}
					} else {
						arr[int].goods_num = 0;
					}
				}
			}
			return arr;
		}
	};
	// 加/减/删除
	common.addPop = function(arr, uuid, num, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].uuid == uuid) {
					arr.splice(i, 1);
					return arr;
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].uuid == uuid) {
					arr[int].goods_num = num;
					return arr;
				}
			}
		} else if (flag == 2) {
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].uuid == uuid) {
					arr[int].goods_num = num;
					return arr;
				}
			}
		}

	};
	return common;
});