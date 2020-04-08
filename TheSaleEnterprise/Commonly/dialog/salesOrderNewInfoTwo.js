define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.button4Click = function(event){
		var sendUrl = "/index/mobile/tjxsdd";
		var Kind = '1';
		var product = this.comp("input4").val();
		var xsry = this.comp("output1").val() //output1
		var Sn = this.comp("output2").val() //output2
		var Ygj = this.comp("output3").val() //output3
		var Xgj = this.comp("input8").val() //input8
		var dhsl = this.comp("input9").val() //input9
		var Dzsl = this.comp("input10").val() //input10
		var yje = this.comp("output5").val() //output5
		var ysje = this.comp("output6").val() //output6
		var beizhu = this.comp("textarea2").val() //textarea2
		//69.添加销售订单明细 地址：http://61.129.51.183:9986/index/mobile/tjxsddmx	
		asCore.tjxsdd(sendUrl, Kind, product, xsry, Sn, Ygj, Xgj, dhsl, Dzsl, yje, ysje, beizhu, function(data){
			debugger
			if(data.success){
				justep.Util.hint("添加成功！");
			} else 
				justep.Util.hint("添加失败！");
		});
	};

	return Model;
});