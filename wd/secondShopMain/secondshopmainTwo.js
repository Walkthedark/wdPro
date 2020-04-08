define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function(){
		this.callParent();
	};

	Model.prototype.categoryDataCustomRefresh = function(event){
		var params = {};
		var res = asCore.setGetFalse(inFace.categoryAll, params);
		if (res.code === 200) {
			var categoryData = this.comp("categoryData");
			var data1 = this.comp("data1");
			var data2 = this.comp("data2");
			categoryData.loadData(res.data, false);
			data1.loadData(res.data, false);
			data2.loadData(res.data, false);
		} else {
			justep.Util.hint(res.message);
		}
		;
	};
	Model.prototype.li1Click = function(event){

	};

	Model.prototype.data2CustomRefresh = function(event){
//		var params = {};
//		var res = asCore.setGetFalse(inFace.secondCate, params);
//		if (res.code === 200) {
//				console.log(res);
//		} else {
//			justep.Util.hint(res.message);
//		}
//		;
	};
	//获取选中的商品分类
	Model.prototype.div5Click = function(event){
		var row = event.bindingContext.$object;//获取行数据
		//获取行id
		var cate_id = row.val('cate_id');
//		打开页面
		justep.Shell.showPage("product",{cate_id:cate_id});
		
	};

	return Model;
});