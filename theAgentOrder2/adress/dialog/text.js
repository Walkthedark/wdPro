define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.regionId = "";
		this.cityId = "";
		this.AreaId = "";
		this.regionName = "";
		this.cityName = "";
		this.AreaName = "";
	};


	Model.prototype.modelParamsReceive = function(event) {
		var par = {};
		var res = asCore.setGetFalse(inFace.getRegion, par);
		if (res.code === 200) {
			this.comp("regionData").loadData(res.data, false);
		} else {
			justep.Util.hint(res.message);
		}
	};
	// 省行数据点击事件
	Model.prototype.li14Click = function(event) {
		// 展示第二级别的数据
		var row = event.bindingContext.$object;
		var id = row.val('id');
		var name = row.val('name');
		// 去到第二级别的数据
		this.comp("button5").set({
			'label' : name
		});// 塞入省值
		this.regionId = id;
		this.regionName = name;
		$(this.getElementByXid("button6")).show();// 显示第二级别数据
		if (this.getCity(id)) {
			this.comp("contents6").to(1);
		} else {
			conosle.log("数据出错");
		}
	};
	Model.prototype.getCity = function(regionId) {
		var flag = false;
		var par = {};
		par.region = regionId;
		var res = asCore.setGetFalse(inFace.getCity, par);
		if (res.code === 200) {
			this.comp("cityData").loadData(res.data, false);
			flag = true;
		} else {
			justep.Util.hint(res.message);
		}
		return flag;
	};
	// 第二级别的
	Model.prototype.li19Click = function(event) {
		// 展示第二级别的数据
		var row = event.bindingContext.$object;
		var id = row.val('id');
		var name = row.val('name');
		// 去到第二级别的数据
		this.comp("button6").set({
			'label' : name
		});// 塞入省值
		this.cityId = id;
		this.cityName = name;
		$(this.getElementByXid("button7")).show();// 显示第二级别数据
		if (this.getArea(id)) {
			this.comp("contents6").to(2);
		} else {
			conosle.log("数据出错");
		}
	};
	Model.prototype.getArea = function(cityId) {
		var flag = false;
		var par = {};
		par.city = cityId;
		var res = asCore.setGetFalse(inFace.getArea, par);
		if (res.code === 200) {
			this.comp("areaData").loadData(res.data, false);
			flag = true;
		} else {
			justep.Util.hint(res.message);
		}
		return flag;
	};
	// 确定数据
	Model.prototype.li20Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val('id');
		var name = row.val('name');
		// 去到第二级别的数据
		this.comp("button7").set({
			'label' : name
		});// 塞入省值
		this.AreaId = id ;
		this.AreaName = name;
		//关闭页面
		var area = [];
		area.push(this.regionId);
		area.push(this.cityId);
		area.push(this.AreaId);
		var NameValue = this.regionName+"/"+this.cityName+"/"+this.AreaName;
		this.getParentModel().getAdressInfo(area,NameValue);
		this.close();
	};
	// 第二级别
	Model.prototype.button5Click = function(event) {
		this.comp("button6").set({
			'label' : '选择市'
		});// 塞入省值
		this.comp("button7").set({
			'label' : '选择镇/区'
		});// 塞入省值
		$(this.getElementByXid("button7")).hide();// 显示第二级别数据
		$(this.getElementByXid("button6")).hide();// 显示第二级别数据
		// 选择的值变为空
		this.cityId = "";
		this.AreaId = "";
	};
	Model.prototype.button6Click = function(event) {
		this.comp("button7").set({
			'label' : '选择镇/区'
		});// 塞入省值
		$(this.getElementByXid("button7")).hide();// 显示第二级别数据
		// 将第三级别数据置为null
		this.AreaId = "";
	};
	return Model;
});