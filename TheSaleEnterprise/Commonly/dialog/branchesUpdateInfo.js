define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button4Click = function(event){
		var cp = this.comp("input9").val();
		var ghj = this.comp("input2").val();
		var ddsl_x = this.comp("input3").val();
		var ddsl_g = this.comp("input5").val();
		var cxhd = this.comp("input8").val();
		var cpbz = this.comp("textarea1").val();
		var sendUrl = "/index/mobile/tjwdddmx";
		//73.添加网点订单明细 地址：http://61.129.51.183:9986/index/mobile/tjwdddmx
		asCore.tjwdddmx(sendUrl, cp, ghj, ddsl_x, ddsl_g, cxhd, cpbz, function(data){
			if(data.success){
				justep.Util.hint("添加成功！");
			} else {
				justep.Util.hint("添加失败！");
			}
		});
	};

	return Model;
});