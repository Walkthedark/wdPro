define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("css!$UI/market/js/layer/skin/default/layer").load();
	var server = require("$UI/market/js/interface");
	var layer;
	var Model = function() {
		this.callParent();
		this.isBack;
		window.layui.use('layer', function() { // 日期模块的应用
			layer = window.layui.layer;
		});
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		// return require.toUrl(url);
		return url;
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		this.getCarInfo();
	};
	// 获取店铺信息
	// 全选
	Model.prototype.allChooseChange = function(event) {
		var goodsData = this.comp("goodsData");
		var choose = this.comp("allChoose").val();
		goodsData.each(function(obj) {
			if (choose) {
				goodsData.setValue("fChoose", "1", obj.row);
			} else {
				goodsData.setValue("fChoose", "", obj.row);
			}
		});
	};

	// 减数量
	Model.prototype.reductionBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var n = row.val("QTY");
		var fid = row.val("FID");
		if (n > 1) {
			row.val("QTY", n - 1);
		}
		this.updateCar(fid, n - 1);
		this.setAllSum();
	};

	// 加数量
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var n = row.val("QTY");
		var fid = row.val("FID");
		row.val("QTY", n + 1);
		this.updateCar(fid, n + 1);
		this.setAllSum();
	};

	Model.prototype.updateCar = function(fid, qty) {
		var arr = JSON.parse(localStorage.getItem("userInfo"));
		 var userID = arr.myInfo[0].FID;
		var self = this;
		var Ajax = $.ajax({
			"url" : server.service + "Marketing/marketing/app/updateCar",
			"dataType" : "json",
			"type" : "get",
			"anync" : true,
			"timeout" : 10000,
			"data" : {
				"userID" : userID,
				"fid" : fid,
				"Qty" : qty
			},
			"success" : function(data) {
				
				if (data.code == "1") {
					// self.getCarInfo();
				} else {
					layer.msg(data.msg);
				}
			},
			"error" : function(msg) {
				
				layer.msg("获取数据失败,请刷新重试");
			},
			"complete" : function(XMLHttpRequest, status) {
				if (status == 'timeout') {
					Ajax.abort();
					layer.msg("服务器连接超时");
				}
				
			}
		});
	}
	Model.prototype.setAllSum = function() {
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
	// 删除
	Model.prototype.delBtnClick = function(event) {
		var goodsData = this.comp("goodsData");
		var goodsRows = goodsData.find([ "fChoose" ], [ "1" ]);
		var fid;
		goodsData.each(function(obj) {
			var FID = obj.row.val("FID");
			var fChoose = obj.row.val("fChoose");
			if (fChoose == "1") {
				if (FID) {
					fid = fid + "," + FID;
				} else {
					fid = FID;
				}
			}
		})
		if (fid) {
			var self = this;
			var Ajax = $.ajax({
				"url" : server.service + "Marketing/marketing/app/delectCar",
				"dataType" : "json",
				"type" : "get",
				"anync" : true,
				"timeout" : 10000,
				"data" : {
					"fid" : fid
				},
				"success" : function(data) {
					
					if (data.code == "1") {
						goodsData.deleteData(goodsRows);
						layer.msg(data.msg);
					} else {
						layer.msg(data.msg);
					}
				},
				"error" : function(msg) {
					
					layer.msg("获取数据失败,请刷新重试");
				},
				"complete" : function(XMLHttpRequest, status) {
					if (status == 'timeout') {
						Ajax.abort();
						layer.msg("服务器连接超时");
					}
					
				}
			});
		} else {
			layer.msg("请选择需要删除的商品");
		}
	};

	// 结算事件
	Model.prototype.settlementClick = function(event) {
		var goodsData = this.comp("goodsData");
		var goodsRows = goodsData.find([ "fChoose" ], [ "1" ]);
		var goodsData = this.comp("goodsData");
		var ids = "";
		goodsData.each(function(obj) {
			var fid = obj.row.val("FID");
			var fChoose = obj.row.val("fChoose");
			if (fChoose == "1") {
				if (ids == "")
					ids = fid;
				else
					ids = ids + "," + fid;
			}
		})
		justep.Shell.showPage("order", {
			data : {
				itemIDs : ids
			}
		});
	};

	Model.prototype.listClick = function(event) {
		var data = this.comp("goodsData");
		// justep.Shell.showPage("detail", {
		// goodsID : data.getValue("FID"),
		// });
	};

	Model.prototype.modelLoad = function(event) {
		this.getCarInfo();
	};
	Model.prototype.getCarInfo = function() {
		var arr = JSON.parse(localStorage.getItem("userInfo"));
		 var userID = arr.myInfo[0].FID;
		var self = this;
		var Ajax = $.ajax({
			"url" : server.service + "Marketing/marketing/app/getCar",
			"dataType" : "json",
			"type" : "get",
			"anync" : true,
			"timeout" : 10000,
			"data" : {
				"userID" : userID,
			},
			"success" : function(data) {
				
				if (data.code == "1") {
					self.comp("goodsData").loadData(data.data);
					self.setAllSum();
				} else {
					layer.msg(data.msg);
				}
			},
			"error" : function(msg) {
				
				layer.msg("获取数据失败,请刷新重试");
			},
			"complete" : function(XMLHttpRequest, status) {
				if (status == 'timeout') {
					Ajax.abort();
					layer.msg("服务器连接超时");
				}
				
			}
		});
	}
	Model.prototype.goodsDataAfterRefresh = function(event) {
		this.setAllSum();
	};
	Model.prototype.checkbox2Change = function(event) {

	};
	Model.prototype.calculateDataValueChanged = function(event) {
		this.setAllSum();
	};
	return Model;
});