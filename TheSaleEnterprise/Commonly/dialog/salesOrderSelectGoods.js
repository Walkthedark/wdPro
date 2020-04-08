define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
		this.isBack;
		this.buyList = [];
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		// return url;
		return require.toUrl("$UI/TheSaleEnterprise/Commonly/img/006.png");
	};

	Model.prototype.setAllSum = function() {
		return;
		var sum = 0;
		var goodsData = this.comp("goodsData");
		goodsData.each(function(obj) {
			var qty = obj.row.val("QTY");
			var price = obj.row.val("PRICE");
			var fChoose = obj.row.val("fChoose");
			if (fChoose == "1") {
				sum = sum + qty * price;
			}
		})
		this.comp("calculateData").setValue("allSum", sum);
	}

	// 结算事件
	Model.prototype.settlementClick = function(event) {
		this.comp("windowReceiver1").windowEnsure({
			data : {
				data : this.buyList
			}
		})
	};

	Model.prototype.modelLoad = function(event) {
		this.initGoodTypes();
	};

	Model.prototype.calculateDataValueChanged = function(event) {
		this.setAllSum();
	};
	// 加数量
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var cData = this.comp("cData");
		cData.refreshData();
		cData.newData();
		cData.setValue("id", row.val("id"));
		cData.setValue("url", row.val("img"));
		cData.setValue("pro_name", row.val("pro_name"));
		cData.setValue("pro_id", row.val("pro_id"));
		cData.setValue("unitm", row.val("unitm"));
		this.initSpecData("pro_id");
		this.comp("popOver1").show();
	};
	Model.prototype.button5Click = function(event) {
		this.comp("popOver1").hide();
	};
	Model.prototype.addSpecBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var qty = row.val("qty");
		var id = row.val("id");
		var specData = this.comp("specData");
		specData.setValueByID("qty", asCore.accAdd(qty, 1), id);
	};
	Model.prototype.subSpecBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var qty = row.val("qty");
		var id = row.val("id");
		var specData = this.comp("specData");
		specData.setValueByID("qty", asCore.accSub(qty, 1), id);
	};

	Model.prototype.button7Click = function(event) {
		var self = this;
		var specData = this.comp("specData");
		var cData = this.comp("cData");
		var id = cData.getValue("id");
		var details = [];
		specData.each(function(param) {
			var params = {};
			if (param.row.val('qty') > 0) {
				params.id = param.row.val('id');
				params.unit = param.row.val('unit');
				params.unitm = param.row.val('unitm');
				params.pro_name = param.row.val('pro_name');
				params.pro_id = param.row.val('pro_id');
				params.price = param.row.val('price');
				params.spec = param.row.val('spec');
				params.story = param.row.val('story');
				params.is = param.row.val('is');
				params.qty = param.row.val('qty');
				self.addBuy(params, param.row.val('id'));
			} else {
				self.deleteBuy(param.row.val('id'));
			}
		});
		this.comp("popOver1").hide();
		this.caculateAll();
	};
	Model.prototype.addBuy = function(data, id) {
		this.deleteBuy(id);
		this.buyList.push(data);
	}
	Model.prototype.deleteBuy = function(id) {
		var newList = [];
		var data = this.buyList;
		for (i = 0; i < data.length; i++) {
			var specid = data[i].id;
			if (specid != id) {
				newList.push(data[i]);
			}
		}
		this.buyList = newList;
	}
	Model.prototype.windowReceiver1Receive = function(event) {
		var data = event.data.data;
		if (data) {
			this.buyList = data;
		}
		this.initGoodData();
	};
	Model.prototype.initGoodData = function() {
		var goodsData = this.comp("goodsData");
		var data = this.buyList;
		for (i = 0; i < data.length; i++) {
			var id = data[i].pro_id;
			goodsData.setValueByID("select", 1, id);
		}
		this.caculateAll();
	}
	Model.prototype.initSpecData = function(proID) {
		var specData = this.comp("specData");
		var data = this.buyList;
		for (i = 0; i < data.length; i++) {
			var id = data[i].id;
			var qty = data[i].qty;
			specData.setValueByID("qty", qty, id);
		}
	}
	Model.prototype.allGoodsClick = function(event) {
		// 切换到全部页签
		this.comp("contents1").to("content1");
		$("#subNavLine1 div").removeClass(function(index) {
			$(this).removeClass("active");
			if (index == 0) {
				$(this).addClass("active");
			}
		});
	};
	Model.prototype.buyGoodsClick = function(event) {
		// 切换到买过页签
		this.comp("contents1").to("content3");
		$("#subNavLine1 div").removeClass(function(index) {
			$(this).removeClass("active");
			if (index == 1) {
				$(this).addClass("active");
			}
		});
	};
	Model.prototype.caculateAll = function() {
		var data = this.buyList;
		var goodsData = this.comp("goodsData");
		var count = 0;
		for (i = 0; i < data.length; i++) {
			var qty = data[i].qty;
			count = asCore.accAdd(count, qty);
		}
		$("[xid=span15]").text("已选种类:" + data.length + " 数量:" + count);
	}
	Model.prototype.caculateBuy = function() {
		var count = 0;
		var sum = 0;
		var hasBugSpec = this.comp("hasBugSpec");
		hasBugSpec.each(function(param) {
			var params = {};
			if (param.row.val('qty') > 0) {
				count = asCore.accAdd(count, param.row.val('qty'));
				++sum;
			}
		});
		$("[xid=span33]").text("已选种类:" + sum + " 数量:" + count);
	}
	Model.prototype.col14Click = function(event) {
		var list = [];
		var hasBugSpec = this.comp("hasBugSpec");
		hasBugSpec.each(function(param) {
			var params = {};
			if (param.row.val('qty') > 0) {
				params.id = param.row.val('id');
				params.unit = param.row.val('unit');
				params.unitm = param.row.val('unitm');
				params.pro_name = param.row.val('pro_name');
				params.pro_id = param.row.val('pro_id');
				params.price = param.row.val('price');
				params.spec = param.row.val('spec');
				params.story = param.row.val('story');
				params.is = param.row.val('is');
				params.qty = param.row.val('qty');
				list.push(params);
			}
		});
		var data = this.buyList;
		for (i = 0; i < data.length; i++) {
			list.push(data[i]);
		}
		this.comp("windowReceiver1").windowEnsure({
			data : {
				data : list
			}
		})
	};
	Model.prototype.hasBugSpecValueChanged = function(event) {
		this.caculateBuy();
	};
	Model.prototype.addSpec1BtnClick = function(event) {
		var row = event.bindingContext.$object;
		var qty = row.val("qty");
		var id = row.val("id");
		var hasBugSpec = this.comp("hasBugSpec");
		hasBugSpec.setValueByID("qty", asCore.accAdd(qty, 1), id);
	};
	Model.prototype.subSpec1BtnClick = function(event) {
		var row = event.bindingContext.$object;
		var qty = row.val("qty");
		var id = row.val("id");
		var hasBugSpec = this.comp("hasBugSpec");
		hasBugSpec.setValueByID("qty", asCore.accSub(qty, 1), id);
	};
	Model.prototype.typeBtnClick = function(event) {
		this.comp("popOverType").show();
		this.comp("popOverLabel").hide();
		this.comp("popOverSales").hide();
	};
	Model.prototype.labelBtnClick = function(event) {
		this.comp("popOverLabel").show();
		this.comp("popOverType").hide();
		this.comp("popOverSales").hide();
	};
	Model.prototype.salesBtnClick = function(event) {
		this.comp("popOverSales").show();
		this.comp("popOverLabel").hide();
		this.comp("popOverType").hide();
	};
	Model.prototype.button3Click = function(event) {
		var selectData = this.comp("selectData");
		selectData.setValue("type", "");
	};
	Model.prototype.button10Click = function(event) {
		this.comp("popOverType").hide();
		this.initAllData();
	};

	Model.prototype.initAllData = function() {
		var selectData = this.comp("selectData");
		var type = selectData.getValue("type");
		var label = selectData.getValue("label");
		var sales = selectData.getValue("sales");
		console.log("type=" + type + ",label=" + label + ",sales=" + sales);
	}
	Model.prototype.button12Click = function(event) {
		this.comp("popOverLabel").hide();
		this.initAllData();
	};
	Model.prototype.button11Click = function(event) {
		var selectData = this.comp("selectData");
		selectData.setValue("label", "");
	};
	Model.prototype.button15Click = function(event) {
		var salesList = this.comp("salesList");
		salesList.each(function(param) {
			var params = {};
			var id = param.row.val('id');
			salesList.setValueByID("val", 0, id);
		})
	};
	Model.prototype.button14Click = function(event) {
		var salesList = this.comp("salesList");
		var selectData = this.comp("selectData");
		var list;
		salesList.each(function(param) {
			var params = {};
			var id = param.row.val('id');
			var val = param.row.val('val');
			if (val == 1) {
				if (list) {
					list += "," + id;
				} else {
					list = id;
				}
			}
		})
		selectData.setValue("sales", list);
		this.comp("popOverSales").hide();
		this.initAllData();
	};
	Model.prototype.li3Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		var val = row.val("val");
		var salesList = this.comp("salesList");
		if (val) {
			if (val == "0") {
				salesList.setValueByID("val", 1, id);
			} else {
				salesList.setValueByID("val", 0, id);
			}
		} else {
			salesList.setValueByID("val", 1, id);
		}
	};
	Model.prototype.initGoodTypes = function() {
		var sendUrl = "/shop/category/all";
		var self = this;
		var data = {};
		asCore.all(sendUrl, data, function(data) {
			debugger;
		});
	}
	return Model;
});