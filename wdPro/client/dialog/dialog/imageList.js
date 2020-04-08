define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};
	//模型加载
	Model.prototype.modelParamsReceive = function(event){
		var imagedata = this.params.data;
		this.comp("imageData").loadData(imagedata, false);
	};

	return Model;
});