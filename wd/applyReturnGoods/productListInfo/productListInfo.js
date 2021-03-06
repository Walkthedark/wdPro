define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};
	
	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};
	
	Model.prototype.getBrief = function(str){
		if(str==""){
			return "请输入200字以内的备注";
		}else{
			return str;
		}
	}
	Model.prototype.returnGoodsCustomRefresh = function(event){
		var returnGoods = [ {
			id : '1',
			rName : '老布特 木糖醇果仁酥条花生',
			rImgUrl : '../../main/image/w4.jpg',
			rCoding : 'PS221282870',
			rQuantity : '2',
			rPrice : '0.01',
			rBreif :''
		},
		 {
			id : '2',
			rName : '老布特 木糖醇果仁酥条花1',
			rImgUrl : '../../main/image/w3.jpg',
			rCoding : 'DS221282872',
			rQuantity : '4',
			rPrice : '13.11',
			rBreif :''
		} ];
		this.comp("returnGoods").loadData(returnGoods);
	};

	return Model;
});