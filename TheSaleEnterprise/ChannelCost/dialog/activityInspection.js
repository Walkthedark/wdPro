define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.li2Click = function(event) {
		var net_id = event.bindingContext.$object.val("net_id");
		var title = event.bindingContext.$object.val("title");
		this.comp("activityInspectionInfoDialog").open({
			data : {
				net_id : net_id,
				net_name : title
			}
		});
	};

	Model.prototype.initData = function() {
		var self = this;
		var pData = this.comp("pData");
		var sendUrl = "/index/mobile/hdzxjclb";
		// 87.活动执行检查列表 地址：http://61.129.51.183:9986/index/mobile/hdzxjclb
		asCore.hdzxjclb(sendUrl, function(data) {
			pData.loadData(data);
		});
	}
	Model.prototype.wReceiverReceive = function(event) {
		this.initData();
	};
	Model.prototype.output7Render = function(event) {
		var lat = event.bindingContext.$rawData.row.lat.value.latestValue;
		var lng = event.bindingContext.$rawData.row.lng.value.latestValue;
		var customerY = localStorage.getItem("latitude");
		var customerX = localStorage.getItem("longitude");
		if (lat && lat != "undefined" && lng && lng != "undefined") {
			if (customerX && customerX != "undefined" && customerY && customerY != "undefined") {
				var map = new BMap.Map("BMap");
				var address = new BMap.Point(lng, lat);
				var customer = new BMap.Point(customerX, customerY);
				var distance = map.getDistance(address, customer);
				console.log("起始点：(" + customerX + "," + customerY + ");结束点：(" + lng + "," + lat + ")" + ";距离：" + distance.toFixed(2) + "米。");
				var TansformDis = "";
				if (distance > 1000) {
					TansformDis = accDiv(distance, 1000).toFixed(2) + "千米"
				} else {
					TansformDis = distance.toFixed(2) + "米";
				}
				event.html = TansformDis;
			} else {
				event.html = "未知距离";
			}
		} else {
			event.html = "未知距离";
		}
		// 除法函数
		function accDiv(arg1, arg2) {
			var t1 = 0, t2 = 0, r1, r2;
			try {
				t1 = arg1.toString().split(".")[1].length;
			} catch (e) {
			}
			try {
				t2 = arg2.toString().split(".")[1].length;
			} catch (e) {
			}
			with (Math) {
				r1 = Number(arg1.toString().replace(".", ""));
				r2 = Number(arg2.toString().replace(".", ""));
				return (r1 / r2) * pow(10, t2 - t1);
			}
		}
	};
	return Model;
});