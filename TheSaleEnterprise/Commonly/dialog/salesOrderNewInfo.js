define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/common/asCore");
	var inFace = require("$UI/TheSaleEnterprise/common/interfaceAdress");
	var cusName = "";
	var Model = function() {
		this.callParent();
		this.imgData = "";
		this.imgDataArray = new Array();
		this.UrlData = "";
		this.vId = "0";// 这个是发票的ID
		this.mvID = "";
		this.cClinet_id = "";
		//
		this.showId = 1;
	};

	Model.prototype.button2Click = function(event) {
		var goodsData = this.comp("goodsData");
		var details = [];
		goodsData.each(function(param) {
			var params = {};
			params.id = param.row.val('id');
			params.unit = param.row.val('unit');
			params.unitm = param.row.val('unitm');
			params.pro_name = param.row.val('pro_name');
			params.pro_id = param.row.val('pro_id');
			params.price = param.row.val('price');
			params.spec = param.row.val('spec');
			params.img = param.row.val('img');
			params.qty = param.row.val('qty');
			details.push(params);
		});
		// this.comp("infoDialog").open({
		// data : {
		// data : details
		// }
		// });

		this.comp("orderWinDialog").open({data:{"clinet_id":this.cClinet_id}});
	};
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		// return url;
		return require.toUrl("$UI/TheSaleEnterprise/Commonly/img/006.png");
	};
	// 展示&&隐藏
	Model.prototype.button4Click = function(event) {
		if (this.showId == 1) {
			$(this.getElementByXid("list2")).hide();
			this.comp("button4").set({
				"icon" : "icon-arrow-up-b"
			})
			this.showId = 2;
		} else {
			$(this.getElementByXid("list2")).show();
			this.comp("button4").set({
				"icon" : "icon-arrow-down-b"
			})
			this.showId = 1;
		}

	};

	Model.prototype.wReceiverReceive = function(event) {
	};

	Model.prototype.modelLoad = function(event) {
		this.init();
	};
	Model.prototype.init = function() {
		$("#newSaleOrderImg1").show();
		this.eventBind();
	};
	Model.prototype.eventBind = function() {
		var that = this;
		$("#uploadnewSaleOrder").click();
		$("#uploadnewSaleOrder").unbind().change(function() {
			var reader = new FileReader();
			reader.onload = function(e) {
				that.compress(this.result);
			};
			try {
				reader.readAsDataURL(this.files[0]);
			} catch (e) {
			}
		});
	}
	Model.prototype.compress = function(res) {
		var length = this.imgDataArray.length;
		if (length < 6) {
			var that = this;
			var img = new Image(), maxH = 300;
			img.onload = function() {
				var cvs = document.createElement('canvas'), ctx = cvs.getContext('2d');
				if (img.height > maxH) {
					img.width *= maxH / img.height;
					img.height = maxH;
				}
				cvs.width = img.width;
				cvs.height = img.height;
				ctx.clearRect(0, 0, cvs.width, cvs.height);
				ctx.drawImage(img, 0, 0, img.width, img.height);
				var dataUrl = cvs.toDataURL('image/jpeg', 1);
				var Insert = document.getElementById("newSaleOrderImg1");
				var div6 = document.getElementById("newSaleOrderImg");
				var id = "photo" + justep.UUID.createUUID();
				var divIDs = "curvediv" + justep.UUID.createUUID();
				var html = "<img src='' alt='' id='" + id + "' class='simg'/>";
				var curvediv = document.createElement("div");
				curvediv.setAttribute("id", divIDs);
				curvediv.setAttribute("class", "lfloat simg");
				curvediv.style.zIndex = 1;
				div6.insertBefore(curvediv, Insert);
				// 增加img标签放置图片
				var oldHtml = document.getElementById(divIDs).innerHTML;
				document.getElementById(divIDs).innerHTML = oldHtml + html;
				$('#' + id).css("display", 'block');
				$('#' + id).attr('src', dataUrl);
				var imageData = dataUrl.substring(23);
				if (!self.imgData) {
					that.imgData = imageData;
				} else {
					that.imgData = that.imgData + "," + imageData;
				}
				that.imgDataArray.push(imageData);
				// 上传略
				that.upload(imageData, divIDs);
			};
			img.src = res;
		} else {
			justep.Util.hint("此处只允许上传6张图片");
		}
	};
	Model.prototype.upload = function(image_data, id) {
		/* 这里写上次方法,图片流是base64_encode的 */
		var self = this;
		justep.Baas.sendRequest({
			"url" : "/theSaleEnterprise/upload",
			"action" : "upload",
			"async" : false,
			"params" : {
				"imagedata" : image_data,
			},
			success : function(data) {
				$('#uploadnewSaleOrder').val('');
				if (data.error == "0") {
					justep.Util.hint("上传成功");
					if (self.UrlData) {
						self.UrlData = self.UrlData + ";" + data.url;
					} else {
						self.UrlData = data.url;
					}
				} else {
					justep.Util.hint("上传失败");
					$("#" + id).remove();
				}
			},
			error : function() {
				layer.msg("上传失败");
			}
		});
	};
	Model.prototype.div3Click = function(event) {
		// 删除明细
		var cData = this.comp("cData");
		var row = event.bindingContext.$object;
		cData.refreshData();
		cData.newData({
			"defaultValues" : [ {
				"id" : asCore.isNull(row.val("id")),
				"img" : asCore.isNull(row.val("img")),
				"pro_name" : asCore.isNull(row.val("pro_name")),
				"pro_id" : asCore.isNull(row.val("pro_id")),
				"spec" : asCore.isNull(row.val("spec")),
				"price" : asCore.isNull(row.val("price")),
				"qty" : asCore.isNull(row.val("qty")),
				"unit" : asCore.isNull(row.val("unit")),
				"unitm" : asCore.isNull(row.val("unitm")),
				"remark" : asCore.isNull(row.val("remark")),
				"remark" : asCore.isNull(0)
			} ]
		});
		this.comp("popOver1").show();
	};
	Model.prototype.infoDialogReceive = function(event) {
		var data = event.data.data.data;
		var goodsData = this.comp("goodsData");
		if (data) {
			goodsData.deleteAllData();
			for (i = 0; i < data.length; i++) {
				goodsData.newData({
					"defaultValues" : [ {
						"id" : asCore.isNull(data[i].id),
						"img" : asCore.isNull(data[i].img),
						"pro_name" : asCore.isNull(data[i].pro_name),
						"pro_id" : asCore.isNull(data[i].pro_id),
						"spec" : asCore.isNull(data[i].spec),
						"price" : asCore.isNull(data[i].price),
						"qty" : asCore.isNull(data[i].qty),
						"unit" : asCore.isNull(data[i].unit),
						"unitm" : asCore.isNull(data[i].unitm),
						"remark" : asCore.isNull(data[i].remark)
					} ]
				});
			}
		} else {
			goodsData.deleteAllData();
		}
	};
	Model.prototype.button5Click = function(event) {
		this.comp("popOver1").hide();
	};
	Model.prototype.addSpecBtnClick = function(event) {
		var cData = this.comp("cData");
		var qty = cData.getValue("qty");
		cData.setValue("qty", asCore.accAdd(qty, 1));
	};
	Model.prototype.subSpecBtnClick = function(event) {
		var cData = this.comp("cData");
		var qty = cData.getValue("qty");
		cData.setValue("qty", asCore.accSub(qty, 1));
	};
	Model.prototype.button9Click = function(event) {
		// 移除行
		var cData = this.comp("cData");
		var goodsData = this.comp("goodsData");
		var id = cData.getValue("id");
		goodsData.deleteData(goodsData.getRowByID(id));
		this.comp("popOver1").hide();
	};
	Model.prototype.button10Click = function(event) {
		// 修改行
		var cData = this.comp("cData");
		var goodsData = this.comp("goodsData");
		var id = cData.getValue("id");
		var qty = cData.getValue("qty");
		var remark = cData.getValue("remark");
		goodsData.setValueByID("qty", qty, id);
		goodsData.setValueByID("remark", remark, id);
		this.comp("popOver1").hide();
	};
	Model.prototype.row9Click = function(event) {
		this.comp("customerDialog").open();
	};
	Model.prototype.customerDialogReceive = function(event) {
		var clientData = this.comp("clientData");
		var params = [];
		var para = {};
		para.level_id = event.data.data.level_id;
		para.client_name = event.data.data.client_name;
		var client_id = event.data.data.client_id;
		para.client_id = client_id;// 获取用户的ID
		this.cClinet_id = client_id;
		params.push(para);
		clientData.loadData(params, false);
		clientData.refreshData();
		// 获取地址
		this.getAddressInfo(event);
	};
	// 获取
	Model.prototype.getAddressInfo = function(event) {
		var params = {};
		var clientData = this.comp("clientData");
		var client_id = clientData.getValue("client_id");
		params.client_id = client_id;
		var res = asCore.setGetFalse(inFace.Clientaddress, params);
		if (res.code === 200) {
			var addressData = this.comp("addressData");
			addressData.loadData(res.data, false);
		} else {
			justep.Util.hint(res.message);
		}
		;

	};
	Model.prototype.output1Render = function(event) {
		var infoData = this.comp("infoData");
		var shdh = infoData.getValue("shdh");
		var shr = event.value;
		if (shr) {
			event.html = asCore.isNull(shr) + asCore.isNull(shdh);
		} else {
			event.html = "";
		}
	};
	Model.prototype.goodsDataAfterRefresh = function(event) {
		var goodsData = this.comp("goodsData");
		var types = 0;
		var count = 0;
		var sum = 0;
		// goodsData.each(function(param) {
		// ++types;
		// count = asCore.accAdd(count, param.row.val("qty"));
		// sum = asCore.accAdd(sum, asCore.accMul(param.row.val("qty"),
		// param.row.val("price"))).toFixed(2);
		// })
		$("#salesTypes").text(types);
		$("#salesCount").text(count);
		$("#salesSum").text("￥" + sum);
	};
	Model.prototype.goodsDataDataChange = function(event) {
		var goodsData = this.comp("goodsData");
		var types = 0;
		var count = 0;
		var sum = 0;
		// goodsData.each(function(param) {
		// ++types;
		// count = asCore.accAdd(count, param.row.val("qty"));
		// sum = asCore.accAdd(sum, asCore.accMul(param.row.val("qty"),
		// param.row.val("price"))).toFixed(2);
		// })
		$("#salesTypes").text(types);
		$("#salesCount").text(count);
		$("#salesSum").text("￥" + sum);

	};
	// 获取商品数据
	Model.prototype.loadGoodsOrder = function(params) {
		console.log(params);
		var goodsDataM = this.comp("goodsDataM");
		if (goodsDataM.find([ 'uuid' ], [ params.uuid ], true, true, true).length > 0) {// 商品选择过
			var sumValue = goodsDataM.getValueByID("goods_num", params.uuid);
			goodsDataM.setValueByID("goods_num", sumValue += 1, params.uuid);
			goodsDataM.refreshData();
		} else {// 商品未测加过购物车
			var par = [];
			par.push(params);
			goodsDataM.loadData(par, true);
			goodsDataM.refreshData();
		}
	};
	// 加
	Model.prototype.addBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("goods_id");// 获取商品ID
		var goodsDataM = this.comp("goodsDataM");// 获取
		if (goods_num >= 0) {
			goodsDataM.setValueByID("goods_num", goods_num += 1, goods_id);
		}
	};
	// 减
	Model.prototype.reductionBtnClick = function(event) {
		var row = event.bindingContext.$object;
		var goods_num = row.val("goods_num");// 获取商品的条数
		var goods_id = row.val("goods_id");// 获取商品ID
		var goodsDataM = this.comp("goodsDataM");// 获取
		if (goods_num > 1) {
			goodsDataM.setValueByID("goods_num", goods_num -= 1, goods_id);
		} else {
			goodsDataM.deleteData(goodsDataM.getCurrentRow());
			goodsDataM.refreshData();
		}
	};
	// 获取地址
	Model.prototype.row6Click = function(event) {

	};
	// 下单
	Model.prototype.settlementClick = function(event) {
		// 获取选择的用户ID
		var params = {};
		params.client_id = this.cClinet_id;// 获取被选择用户的ID
		var delivery_time_inp = this.comp("input5").val();// 获取交货时间
		params.delivery_time = delivery_time_inp;
		params.bill_message = this.vId;// 获取发票ID
		if (this.vId != 0) {
			params.invoice_id = this.mvID;// 获取发票ID
		}
		// 获取页面上的特价金额
		var Tprice = this.comp("input3").val();
		if (!Tprice || !$.trim(Tprice)) {
			// 这里面是空价格
			params.is_discount = 0;
		} else {
			params.is_discount = 1;
			params.discount_price = Tprice;
		}
		// 获取订单的备注
		var desc = this.comp("textarea4").val();
		params.order_des = desc;
		var addressData = this.comp("addressData");
		var findValue = addressData.find([ 'is_default' ], [ 1 ], true, true, true);
		if (findValue.length <= 0) {
			justep.Util.hint("没有查询到地址");
		} else {
			// 获取默认地址的ID
			params.address_id = findValue[0].row.client_address_id.value.latestValue;
		}
		// 获取商品信息
		var goodsDataM = this.comp("goodsDataM");
		var goods = [];
		goodsDataM.each(function(param) {
			var p = {};
			p.goods_id = param.row.val("goods_id");
			p.quantity = param.row.val("goods_num");
			p.unit_id = param.row.val("unit_id");
			p.order_goods_des = param.row.val("remark");
			goods.push(p);
		});
		params.goods = goods;
		params.order_accessory = [];
		params.make = localStorage.getItem("client_id");
		console.log(params);
		// 调取接口上传
		this.saveOrder(params);
	};
	// 上传订单
	Model.prototype.saveOrder = function(params) {
		var res = asCore.setPostFalse(inFace.saveOrder, params);
		if (res.code === 200) {

		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	// 打开选择发票
	Model.prototype.button17Click = function(event) {
		var clientData = this.comp("clientData");
		var client_id = clientData.getValue("client_id");
		this.comp("invoiceWinDiaLog").open({
			"data" : {
				client_id : client_id
			}
		});
	};
	Model.prototype.getBillInfoChoose = function(params) {
		// this.vId
		this.vId = params.vId;
		this.mvID = params.id;
		this.comp("button17").set({
			"label" : params.name
		});
	};
	return Model;
});