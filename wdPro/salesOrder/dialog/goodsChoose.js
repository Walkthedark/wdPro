define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.type_ID = "";
		this.type_Name = "";
	};
	// 确定选择
	Model.prototype.okBtnClick = function(event) {
		//获取
		var ListData = this.comp("ListData");
		var pa ={};
		var type_ID_List=[];
		var goodsList=[];
		ListData.each(function(obj) {
			//obj.row
			var params ={};
			if(obj.row.val("choose") == 1){
				type_ID_List.push(obj.row.val("goods_id"));
				params.goods_id = obj.row.val("goods_id");
				params.goods_name = obj.row.val("goods_name");
				params.specification = obj.row.val("specification");
				goodsList.push(params);
			}
		});
		pa.ID = type_ID_List;
		pa.Name = goodsList;
		// 上传
		this.getParentModel().setGoodsValue(pa);
		this.close();
	};

	Model.prototype.modelParamsReceive = function(event) {

	};
	// 获取关联客户
	Model.prototype.ListDataCustomRefresh = function(event) {
		var params = {};
		var res = asCore.setGetFalse(interFace.relation_goods, params);
		if (res.code === 200) {
			var ListData = this.comp("ListData");
			ListData.loadData(res.data);
		} else {
			justep.Util.hint("商品列表加载失败");
		}
	};
	//
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.type_ID = row.val("client_id");
		this.type_Name = row.val("client_name");
	};
	return Model;
});