define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://api.map.baidu.com/getscript?v=2.0&ak=9UEds3vEtbqPXFko5QQN25xyiNH7W5GN");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.map = function(event) {
		// 百度地图API功能
		var map = new BMap.Map("container");
		var systemInfo = this.comp("systemInfo");
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
					$("[xid=addresText]").text(address);
					systemInfo.setValue("detailAddress", address);
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
		this.getTwo();
		this.getCusType();
	};
	Model.prototype.getTwo = function() {
		var self = this;
		var sendUrl = "/index/mobile/getchannel2";
		var two = this.comp("two");
		var data = "";
		asCore.getchannel2(sendUrl, data, function(data) {
			two.loadData(data);
		});
	}
	Model.prototype.getCusType = function() {
		var self = this;
		var sendUrl = "/index/mobile/getcustype";
		var cusType = this.comp("cusType");
		var data = "";
		asCore.getchannel2(sendUrl, data, function(data) {
			cusType.loadData(data);
		});
	}
	Model.prototype.button4Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/txxtzl";
		var systemInfo = this.comp("systemInfo");
		var title = systemInfo.getValue("title");
		var jxs_id = systemInfo.getValue("jxs_id");
		var twoCType = systemInfo.getValue("twoCType");
		var cusType = systemInfo.getValue("cusType");
		var stuff = systemInfo.getValue("stuff");
		var sj = systemInfo.getValue("sj");
		var detailAddress = systemInfo.getValue("detailAddress");
		var brief = systemInfo.getValue("brief");
		var data = {};
		if (!asCore.isNull(title) || !asCore.isNull(jxs_id) || !asCore.isNull(twoCType) || !asCore.isNull(cusType)) {
			justep.Util.hint("请填写完整数据");
		} else {
			data.title = asCore.isNull(title);
			data.jxs_id = asCore.isNull(jxs_id);
			data.twoCType = asCore.isNull(twoCType);
			data.cusType = asCore.isNull(cusType);
			data.stuff = asCore.isNull(stuff);
			data.sj = asCore.isNull(sj);
			data.detailAddress = asCore.isNull(detailAddress);
			data.brief = asCore.isNull(brief);
			asCore.txxtzl(sendUrl, data, function(data) {
				if (data.success) {
					justep.Util.hint("提交成功");
					self.comp("windowReceiver1").windowEnsure();
				} else {
					justep.Util.hint("提交失败");
				}
			});
		}

	};
	Model.prototype.windowDialog1Received = function(event) {
		var id = event.data.data.id;
		var title = event.data.data.title;
		var systemInfo = this.comp("systemInfo");
		systemInfo.setValue("jxs_id", id);
		systemInfo.setValue("jxs_name", title);
	};
	Model.prototype.button3Click = function(event) {
		this.comp("windowDialog1").open();
	};
	return Model;
});