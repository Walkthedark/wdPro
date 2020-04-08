define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button4Click = function(event){
		var Jx = 1;
		var cp = this.comp("input4").val();
		var bm = this.comp("output2").val();
		var dj = this.comp("input8").val();
		var thsl = this.comp("input9").val();
		var thje = this.comp("output5").val();
		var pcsm = this.comp("textarea2").val();
		var sendUrl = "/index/mobile/tjthmx";
		//84.添加退货明细 地址：http://61.129.51.183:9986/index/mobile/tjthmx
		asCore.tjthmx(sendUrl, Jx, cp, bm, dj, thsl, thje, pcsm, function(data){
			if(data.success){
				justep.Util.hint("添加成功！");
			} else {
				justep.Util.hint("添加失败！");
			}
		});
		
	};

	return Model;
});