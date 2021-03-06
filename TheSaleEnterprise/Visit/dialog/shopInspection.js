define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("http://api.map.baidu.com/getscript?v=2.0&ak=9UEds3vEtbqPXFko5QQN25xyiNH7W5GN");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var dg_id = null;
	var address = null;
	var Model = function() {
		this.callParent();
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
					address = addComp.province + addComp.city + addComp.district + addComp.street + addComp.streetNumber;
					// console.log(address);
					$("[xid=addresSpan]").text(address);
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
		this.map();
	};
	Model.prototype.button2Click = function(event) {
		this.map();
	};

	// 拍照
	Model.prototype.GImageClick = function(event) {
		this.picSource(50, 1);
	};
	Model.prototype.picSource = function(quality, source) {

	};
	Model.prototype.wReceiverReceive = function(event) {
		dg_id = event.data.dg_id;
	};
	Model.prototype.button4Click = function(event) {
		var sendUrl = "/index/mobile/dgyzgjctj";
		var dz = address;// 地址
		var infoData = this.comp("infoData");
		var sfzg = infoData.getValue("sfzg");// 是否在岗
		var jcms = infoData.getValue("jcms");// 检查描述
		var sczp = "";
		// 22.导购员在岗检查-提交 地址：http://61.129.51.183:9986/index/mobile/dgyzgjctj
		asCore.sendDgyzgjctj(sendUrl, dg_id, dz, sfzg, jcms, sczp, function(data) {
			debugger
			if (data.success) {
				justep.Util.hint("保存成功！");
			} else {
				justep.Util.hint("保存失败");
			}
		});

	};
	Model.prototype.CDataCustomRefresh = function(event) {
		var id = dg_id;
		var self = this;
		var sendUrl = "/index/mobile/dgyzgjc";
		debugger;
		// 21. 导购员在岗检查 http://61.129.51.183:9986/index/mobile/dgyzgjc
		asCore.sendDgyzgjc(sendUrl, dg_id, function(data) {
			debugger
			self.comp("infoData").loadData(data.data);
		});
	};
	return Model;
});