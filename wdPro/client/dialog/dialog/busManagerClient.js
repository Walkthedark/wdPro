define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
	};
	// 获取
	Model.prototype.modelLoad = function(event) {
		
	};
	//获取客户分类
	Model.prototype.okBtnClick = function(event){
		//获取选择的数据
		var business_Type_Data = this.comp("business_Type_Data");
		var type_ID_List=[];
		var type_Name ="";
		business_Type_Data.each(function(obj) {
			//obj.row
			if(obj.row.val("is_checked") == 1){
				type_ID_List.push(obj.row.val("staff_id"));
				type_Name=type_Name+obj.row.val("staff_name")+",";
			}
		});
		var para = {};
		para.ID = type_ID_List;
		para.Name = type_Name;
		this.params.data.method.getbusManagerClient(para);
		history.back();
	};
	//根据change获取值
	Model.prototype.radio1Change = function(event){
		
		
	};

	Model.prototype.modelParamsReceive = function(event){
		var params = {};
		var res = asCore.setGetFalse(interFace.staffeasy, params);
		if (res.code === 200) {
			this.comp("business_Type_Data").loadData(res.data.data, false);
			if (this.page == 1) {
				if (res.data.count <= 10) {
					this.total = 1;
				} else {
					this.total = Math.ceil(res.data.count / 10);
				}
				
			}
			this.page+=1;
		} else {
			justep.Util.hint("员工列表获取失败",{'type':'danger'});
		}
	};

	Model.prototype.button1Click = function(event){

	};
	//上划刷新
	Model.prototype.scrollView1PullUp = function(event){
		var seachValue = this.comp("input1").val();
		if(this.total < this.page){
			return;
		};
		if (asCore.regular(seachValue)) {//s数据唯恐
			var params = {};
			params.page = this.page;
			this.setUpGetRequest(params);
		}else{
			var params = {};
			params.page = this.page;
			params.query = seachValue;
			this.setUpGetRequest(params);
		}
	};
	Model.prototype.setUpGetRequest = function(params) {
		var res = asCore.setGetFalse(interFace.staffeasy, params);
		if (res.code === 200) {
			this.comp("business_Type_Data").loadData(res.data.data, true);
			this.page+=1;
		} else {
			justep.Util.hint("员工列表获取失败",{'type':'danger'});
		}
	};
	
	Model.prototype.button2Click = function(event){
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		var seachValue = this.comp("input1").val();
		if (asCore.regular(seachValue)) {//s数据唯恐
			var params = {};
			params.page = this.page;
			this.refashGetEasy(params);
		}else{
			var params = {};
			params.page = this.page;
			params.query = seachValue;
			this.refashGetEasy(params);
		}
	};
	Model.prototype.refashGetEasy = function(params){
		var res = asCore.setGetFalse(interFace.staffeasy, params);
		if (res.code === 200) {
			this.comp("business_Type_Data").loadData(res.data.data, false);
			if (this.page == 1) {
				if (res.data.count <= 10) {
					this.total = 1;
				} else {
					this.total = Math.ceil(res.data.count / 10);
				}
				
			}
			this.page+=1;
		} else {
			justep.Util.hint("员工列表获取失败",{'type':'danger'});
		}
	};
	return Model;
});