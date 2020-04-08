define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};
	Model.prototype.grid1Reload = function(event) {
		var orderData = this.comp("orderData");
		var option = {
			col3 : '合计：',
			col4 : parseFloat(orderData.sum('col4')).toFixed(2),
		};
		this.comp("grid1").setFooterData(option);
	};
	Model.prototype.button4Click = function(event) {
		this.comp("infoDialog").open();
	};
	Model.prototype.button2Click = function(event){
		var wd = this.comp("input1").val();//input1
		var jxs = this.comp("input4").val();
		var lxr = this.comp("input3").val();
		var dh = this.comp("input5").val();
		var dz = this.comp("textarea2").val();
		var pslx = "1";
		var bz = this.comp("textarea3").val();
		var sendUrl = "/index/mobile/tjwddd";
		//72.添加网点订单 地址：http://61.129.51.183:9986/index/mobile/tjwddd
		asCore.tjwddd(sendUrl, wd, jxs, lxr, dh, dz, pslx, bz, function(data){
			if(data.success){
				justep.Util.hint("添加成功！");
			} else {
				justep.Util.hint("添加失败！");
			}
		});
	};
	return Model;
});