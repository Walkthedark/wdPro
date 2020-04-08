define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/theAgentOrder2/common/asCore");
	var inFace = require("$UI/theAgentOrder2/common/interfaceAdress");
	var Model = function(){
		this.callParent();
		this.classNameFlag =0;
		this.page =1;
		this.pageTotal=0;
		this.filterValue ="全部"
		
	};
	//参数
	Model.prototype.modelParamsReceive = function(event){
		var params = {};
		var res = asCore.setGetFalse(inFace.sales_order, params);
		if (res.code === 200) {
			if(this.page == 1){
				var total = res.data.pager.total;
				this.pageTotal = total % 20 == 0 ? parseInt(total / 20) : parseInt(total / 20) + 1;// 获取总页数
			}
			this.page+=1;
			var orderData = this.comp("orderData");
			orderData.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		};
	};

	Model.prototype.button1Click = function(event){
		if (this.classNameFlag == 0) {
			var params = {};
			var res = asCore.setGetFalse(inFace.getOrderState, params);
			if (res.code === 200) {
				this.comp("data2").loadData(res.data, false);
				if(res.data.length <=0){
					justep.Util.hint("尚未获取到订单分类",{'type':'danger'});
					return;
				}
				this.classNameFlag = 1;
				this.comp("popOver3").show();
			} else {
				justep.Util.hint(res.message,{'type':'danger'});
			}
			;
		} else {
			this.comp("popOver3").show();
		}
	};

	Model.prototype.li3Click = function(event){
		this.page =1;
		this.pageTotal=0;
		var row = event.bindingContext.$object;//获取绑定的行数据
		this.className = row.val("id");//赋值
		var name = row.val("name");//赋值
		this.comp("button1").set({'label':name});
		var params = {};
		params.type = this.className;
		var res = asCore.setGetFalse(inFace.sales_order, params);
		if (res.code === 200) {
			if(this.page == 1){
				var total = res.data.pager.total;
				this.pageTotal = total % 20 == 0 ? parseInt(total / 20) : parseInt(total / 20) + 1;// 获取总页数
			}
			this.page+=1;
			var orderData = this.comp("orderData");
			orderData.loadData(res.data.data, false);
		} else {
			justep.Util.hint(res.message);
		}
		this.comp("popOver3").hide();
	};

	Model.prototype.li1Click = function(event){
		// 获取数据
		var rowData = event.bindingContext.$object;
		var params = {};
		params.order_id = rowData.val("order_id");
		var type = rowData.val("type");
		if (type == 0 || type == 1 || type == 2) {
			justep.Shell.showPage("orderAudit", params);
		} else {
			justep.Shell.showPage("InfoOrder", params);
		}
		
	};
	//上华
	Model.prototype.scrollView1PullUp = function(event){
		if (this.pageTotal < this.page) {
			return;
		};
		var params = {};
		params.page = this.page;
		var res = asCore.setGetFalse(inFace.sales_order, params);
		if (res.code === 200) {
			if(this.page == 1){
				var total = res.data.pager.total;
				this.pageTotal = total % 20 == 0 ? parseInt(total / 20) : parseInt(total / 20) + 1;// 获取总页数
			}
			this.page+=1;
			var orderData = this.comp("orderData");
			orderData.loadData(res.data.data, true);
		} else {
			justep.Util.hint(res.message);
		};
	};

	Model.prototype.modelActive = function(event){
		this.modelParamsReceive(event);
	};

	return Model;
});