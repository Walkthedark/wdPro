define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var common = require("$UI/theAgentOrder2/placeOrder/common");
	// 开发核心js
	var asCore = {};

	// '配置的URL请求'
	asCore.ServerURL = function() {
		return localStorage.getItem("ServerURL");
	};

	// +"配置服务名"
	asCore.ServerName = function() {
		return localStorage.getItem("ServerName");
	};
	// json数组过滤返回数组
	asCore.search = function(array, type, value) {
		// if(!u.isArray(array)) throw new Error('第一个参数必须是数组类型');
		var arr = [];
		arr = array.filter(function(a) {
			return a[type].toString().indexOf(value) != -1;
		});
		return arr;
	};
	asCore.search2 = function(array, type, value) {
		// if(!u.isArray(array)) throw new Error('第一个参数必须是数组类型');
		var arr = [];
		arr = array.filter(function(a) {
			// return a[type].toString().indexOf(value)!=-1;
			return a[type].toString() == value;
		});
		return arr;
	};
	// //////////////////start////////////////
	// 加入购物车
	asCore.ListloadGoodsOrderInfo = function(params) {
		// 判断一个数据是不是数组
		if (!Array.isArray(params)) {
			layer.msg('加入购物车失败,数据不是OBJECT');
			return;
		}
		var goodsDataListChoose = localStorage.getItem("cartList");
		var jsonData = JSON.parse(goodsDataListChoose);
		for (var int = 0; int < params.length; int++) {
			var pa = asCore.search2(jsonData, 'goods_id', params[int].goods_id);
			if (pa.length > 0) {// 商品选择过
				var uuid = pa[0].uuid;
				var addSum = params[int].goods_num;
				asCore.addGoodsDataListInfo(uuid, addSum, 1);
			} else {// 商品未测加过购物车
				var par = [];
				par.push(params[int]);
				// 加入总体的数据
				jsonData.push(params[int]);// 更新选中的商品数据
				localStorage.setItem("cartList", JSON.stringify(jsonData));
			}
		}
	};
	// 数据加减
	asCore.addGoodsDataListInfo = function(uuid, num, flag) {
		var goodsDataListChoose = localStorage.getItem("cartList");
		var jsonData = JSON.parse(goodsDataListChoose);// 获取购物车里面的数据
		var resData = common.addPop(jsonData, uuid, num, flag);
		localStorage.setItem("cartList", JSON.stringify(resData));
	};
	// 赠品加入购物车
	asCore.ListloadGoodsOrderInfo2 = function(params) {
		// 判断一个数据是不是数组
		if (!Array.isArray(params)) {
			layer.msg('加入购物车失败,数据不是OBJECT');
			return;
		}
		console.log("111")
		console.log(params)
		var goodsDataListChoose = localStorage.getItem("giftList");
		var jsonData = JSON.parse(goodsDataListChoose);
		for (var int = 0; int < params.length; int++) {
			var pa = asCore.search2(jsonData, 'goods_id', params[int].goods_id);
			if (pa.length > 0) {// 商品选择过
				var uuid = pa[0].uuid;
				var addSum = params[int].goods_num;
				asCore.addGoodsDataListInfo2(uuid, addSum, 1);
			} else {// 商品未测加过购物车
				var par = [];
				par.push(params[int]);
				// 加入总体的数据
				jsonData.push(params[int]);// 更新选中的商品数据
				localStorage.setItem("giftList", JSON.stringify(jsonData));
			}
		}
	};
	// 数据加减
	asCore.addGoodsDataListInfo2 = function(uuid, num, flag) {
		var goodsDataListChoose = localStorage.getItem("giftList");
		var jsonData = JSON.parse(goodsDataListChoose);// 获取购物车里面的数据
		var resData = asCore.addPop4(jsonData, uuid, num, flag);
		localStorage.setItem("giftList", JSON.stringify(resData));
	};

	// ///////////////////////////end///////////////////
	asCore.ServerName = function() {
		return localStorage.getItem("ServerName");
	};
	asCore.login = function(URL, pramas) {
		var re = "";
		$.ajax({
			url : URL,
			data : pramas,
			type : "get",
			dataType : "json",
			success : function(res) {
				// aaa为服务器所返回的值
				if (res.code == 200) {
					localStorage.setItem("client_id", res.data.client_id);
					localStorage.setItem("client_Name", res.data.client_name);
					localStorage.setItem("token", res.data.token);
					justep.Shell.showPage("homeMane");
				} else {
					justep.Util.hint(res.message);
				}
			},
			error : function() {
				// 服务器连接失败
				justep.Util.hint("服务器连接失败");
			},
			beforeSend : function() {// 在success之前就进行了
				// 操作
			},
			complete : function() {// 在success之后就进行
				// 操作
			}
		});
		return re;
	};
	asCore.isNumber = function(val) {
		var regPos = /^\d+(\.\d+)?$/; // 非负浮点数
		var regNeg = /^(-(([0-9]+\.[0-9]*[1-9][0-9]*)|([0-9]*[1-9][0-9]*\.[0-9]+)|([0-9]*[1-9][0-9]*)))$/; // 负浮点数
		if (regPos.test(val) || regNeg.test(val)) {
			return true;
		} else {
			return false;
		}

	};

	asCore.setGetFalse = function(URL, params) {
		params.company_id = getUserIdAndToken().company_id;
		params.user = getUserIdAndToken().userId;
		params.token = getUserIdAndToken().token;
		params.supplier_id = getUserIdAndToken().supplier_id;
		var re = "";
		$.ajax({
			type : "GET",
			url : URL,
			cache : false,
			async : false,
			dataType : 'json',
			// headers :getUserIdAndToken(),
			data : params
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			re = d;
		}).always(function() {
		});
		return re;
	};
	asCore.setPostFalse = function(URL, params) {
		params.company_id = getUserIdAndToken().company_id;
		params.user = getUserIdAndToken().userId;
		params.token = getUserIdAndToken().token;
		params.supplier_id = getUserIdAndToken().supplier_id;
		var re = "";
		$.ajax({
			type : "POST",
			url : URL,
			cache : false,
			async : false,
			dataType : 'json',
			// headers :getUserIdAndToken(),
			data : params
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			re = d;
		}).always(function() {
		});
		return re;
	};
	asCore.setlogin = function(URL, params) {
		var re = "";
		$.ajax({
			type : "GET",
			url : URL,
			cache : false,
			async : false,
			dataType : 'json',
			// headers :getUserIdAndToken(),
			data : params
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			alert("请求异常");
		}).done(function(d) {
			re = d;
		}).always(function() {
		});
		return re;
	};
	asCore.addPop = function(arr, uuid, num, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].goods_id == uuid) {
					arr.splice(i, 1);
					return arr;
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num = num;
					return arr;
				}
			}
		} else if (flag == 2) {
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num = num;
					return arr;
				}
			}
		}

	};
	asCore.addPop2 = function(arr, uuid, num, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].goods_id == uuid) {
					arr.splice(i, 1);
					return arr;
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num += 1;
					return arr;
				}
			}
		} else if (flag == 2) {
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num -= 1;
					return arr;
				}
			}
		}

	};
	asCore.addPo3 = function(arr, uuid, num, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].goods_id == uuid) {
					arr.splice(i, 1);
					return arr;
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num = num;
					arr[int].num = goods_num;
					return arr;
				}
			}
		} else if (flag == 2) {
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num = num;
					arr[int].num = goods_num;
					return arr;
				}
			}
		}

	};
	asCore.addPop4 = function(arr, uuid, num, flag) {
		if (flag == 0) {// 删除
			for (var i = 0; i < arr.length; i++) {
				if (arr[i].goods_id == uuid) {
					arr.splice(i, 1);
					return arr;
				} //
			}
		} else if (flag == 1) {// 加
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num += 1;
					arr[int].num += 1;
					return arr;
				}
			}
		} else if (flag == 2) {
			for (var int = 0; int < arr.length; int++) {
				if (arr[int].goods_id == uuid) {
					arr[int].goods_num -= 1;
					arr[int].num -= 1;
					return arr;
				}
			}
		}

	};
	function getUserIdAndToken() {
		return {
			'token' : localStorage.getItem("token"),
			'userId' : localStorage.getItem("userId"),
			'company_id' : localStorage.getItem("company_id"),
			'supplier_id' : localStorage.getItem("supplier_id"),
		};
	}

	return asCore;
});