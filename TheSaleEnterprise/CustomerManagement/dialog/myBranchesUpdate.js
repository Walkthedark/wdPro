define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://api.map.baidu.com/getscript?v=2.0&ak=9UEds3vEtbqPXFko5QQN25xyiNH7W5GN");
	var Model = function() {
		this.callParent();
		this.id;
	};
	Model.prototype.map = function(event) {
		// 百度地图API功能
		var map = new BMap.Map("container");
		var geolocation = new BMap.Geolocation();
		geolocation.getCurrentPosition(function(r) {
			if (this.getStatus() == BMAP_STATUS_SUCCESS) {
				var mk = new BMap.Marker(r.point);
				map.addOverlay(mk);
				map.panTo(r.point);
				// console.log('您的位置：' + r.point.lng + ',' + r.point.lat);
				var geoc = new BMap.Geocoder();
				var pt = r.point;
				geoc.getLocation(pt, function(rs) {
					var addComp = rs.addressComponents;
					var address = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
					// console.log(address);
					$("[xid=address]").text(address);
				});
			} else {
				console.log('failed' + this.getStatus());
			}
		}, {
			enableHighAccuracy : true
		});
		// 关于状态码
		// BMAP_STATUS_SUCCESS 检索成功。对应数值“0”。
		// BMAP_STATUS_CITY_LIST 城市列表。对应数值“1”。
		// BMAP_STATUS_UNKNOWN_LOCATION 位置结果未知。对应数值“2”。
		// BMAP_STATUS_UNKNOWN_ROUTE 导航结果未知。对应数值“3”。
		// BMAP_STATUS_INVALID_KEY 非法密钥。对应数值“4”。
		// BMAP_STATUS_INVALID_REQUEST 非法请求。对应数值“5”。
		// BMAP_STATUS_PERMISSION_DENIED 没有权限。对应数值“6”。(自 1.1 新增)
		// BMAP_STATUS_SERVICE_UNAVAILABLE 服务不可用。对应数值“7”。(自 1.1 新增)
		// BMAP_STATUS_TIMEOUT 超时。对应数值“8”。(自 1.1 新增)
	};
	Model.prototype.modelLoad = function(event) {
		// this.map();
	};
	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/netzlxq";
		var netData = this.comp("netData");
		var data = {};
		data.id = id;
		asCore.netzlxq(sendUrl, data, function(data) {
			netData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sn" : asCore.isNull(data.sn),
					"net" : asCore.isNull(data.net),
					"jxs" : asCore.isNull(data.jxs),
					"sys" : asCore.isNull(data.sys),
					"mysn" : asCore.isNull(data.mysn),
					"cat" : asCore.isNull(data.cat),
					"grade" : asCore.isNull(data.grade),
					"iskey" : asCore.isNull(data.iskey),
					"guide" : asCore.isNull(data.guide),
					"area" : asCore.isNull(data.area),
					"cashiers" : asCore.isNull(data.cashiers),
					"shelf_num" : asCore.isNull(data.shelf_num),
					"addr" : asCore.isNull(data.addr),
					"breif" : asCore.isNull(data.breif),
					"starttime" : asCore.isNull(data.starttime),
					"competitor" : asCore.isNull(data.competitor),
					"jinchang" : asCore.isNull(data.jinchang),
					"dg" : asCore.isNull(data.dg),
					"name" : asCore.isNull(data.lianxiren.name),
					"phone" : asCore.isNull(data.lianxiren.phone),
				} ]
			});
		});
		this.getType();
		this.getLevel();
	};
	Model.prototype.button8Click = function(event) {
		this.setAddress();
	};
	Model.prototype.button4Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xiugainet";
		var netData = this.comp("netData");
		var mysn = netData.getValue("mysn");
		var cat = netData.getValue("cat");
		var grade = netData.getValue("grade");
		var iskey = netData.getValue("iskey");
		var guide = netData.getValue("guide");
		var area = netData.getValue("area");
		var cashiers = netData.getValue("cashiers");
		var shelf_num = netData.getValue("shelf_num");
		var addr = netData.getValue("addr");
		var breif = netData.getValue("breif");
		var lianxiren = netData.getValue("name");
		var lianxiphone = netData.getValue("phone");
		var data = {};
		data.id = this.id;
		data.mysn = asCore.isNull(mysn);
		data.cat = asCore.isNull(cat);
		data.grade = asCore.isNull(grade);
		data.iskey = asCore.isNull(iskey);
		data.guide = asCore.isNull(guide);
		data.area = asCore.isNull(area);
		data.cashiers = asCore.isNull(cashiers);
		data.shelf_num = asCore.isNull(shelf_num);
		data.addr = asCore.isNull(addr);
		data.breif = asCore.isNull(breif);
		data.lianxiren = asCore.isNull(lianxiren);
		data.lianxiphone = asCore.isNull(lianxiphone);
		asCore.xiugainet(sendUrl, data, function(data) {
			if (data.success) {
				justep.Util.hint("提交成功");
				self.comp("windowReceiver1").windowEnsure();
			} else {
				justep.Util.hint("提交失败");
			}
		});
	};

	Model.prototype.getType = function() {
		var self = this;
		var sendUrl = "/index/mobile/getcustype";
		var netType = this.comp("netType");
		var data = {};
		asCore.getchannel2(sendUrl, data, function(data) {
			netType.loadData(data);
		});
	}

	Model.prototype.getLevel = function() {
		var self = this;
		var sendUrl = "/index/mobile/netlevel";
		var netLevel = this.comp("netLevel");
		var data = {};
		asCore.netlevel(sendUrl, data, function(data) {
			netLevel.loadData(data);
		});
	}
	Model.prototype.setAddress = function() {
		var self = this;
		var sendUrl = "/index/mobile/getjxsaddr";
		var netData = this.comp("netData");
		var data = {};
		data.id = this.id;
		asCore.getjxsaddr(sendUrl, data, function(data) {
			netData.setValue("addr", data.addr);
		});
	}
	return Model;
});