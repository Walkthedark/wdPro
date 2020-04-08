define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function(){
		this.callParent();
		this.goods_id ="";
		this.goods_num = "";
		this.clinet_id = "";
		this.specification_id = "";
		this.uuid = "";
	};
	//获取参数详情
	Model.prototype.modelParamsReceive = function(event){
		this.goods_id = this.params.data.goods_id;
		this.goods_num = this.params.data.goods_num;
		this.clinet_id = this.params.data.clinet_id;
		this.specification_id =  this.params.data.specification_id;
		this.uuid =  this.params.data.uuid;
		this.getGoodsInfo(event);
	};
	//获取商品的相信信息
	Model.prototype.getGoodsInfo = function(event){
		var params = {};
		params.client_id = this.clinet_id;
		params.goods_id =this.goods_id ;
		params.specification_id = this.specification_id;
		var res = asCore.setGetFalse(inFace.GoodsInfo, params);
		if (res.code === 200) {
			var dataJson = res.data.goodsData;
			dataJson[0].goods_num = this.goods_num;
			console.log(dataJson);
			this.comp("goodsDataM").loadData(dataJson, false);
			this.comp("goodsDataM").refreshData();
		} else {
			justep.Util.hint(res.message);
		};
	};
	Model.prototype.button5Click = function(event){	
		var data  =this.comp("goodsDataM");
		var goods_num = data.getValue('goods_num');
		if(goods_num>1){
			data.setValue("goods_num", goods_num-1,data.getCurrentRowID());
		}
	};
	//jia
	Model.prototype.button4Click = function(event){
		var data  =this.comp("goodsDataM");
		var goods_num = data.getValue('goods_num');
		data.setValue("goods_num", goods_num+1,data.getCurrentRowID());
	};

	Model.prototype.button2Click = function(event){
		var data  =this.comp("goodsDataM");
		var goods_num = data.getValue('goods_num');
		var p = [];
		var params = {};
		params.goods_id= this.goods_id;
		params.goods_num = goods_num;
		p.push(params);
		this.getParentModel().ListloadGoodsOrderInfo(p);
	};

	Model.prototype.button1Click = function(event){
		this.getParentModel().deleteData(this.goods_id,this.uuid);
		justep.Util.hint("移除成功");
	};

	return Model;
});