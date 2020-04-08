define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function(){
		this.callParent();
		this.flag ="";
		this.name = "";
	};
	//确定事件
	Model.prototype.okBtnClick = function(event){
		//获取选择的数据
		var business_Type_Data = this.comp("business_Type_Data");
		var type_ID_List=[];
		var type_Name ="";
		business_Type_Data.each(function(obj) {
			//obj.row
			if(obj.row.val("choose") == 1){
				type_ID_List.push(obj.row.val("id"));
				type_Name=type_Name+obj.row.val("name")+",";
			}
		});
		//获取值之后向上提交
		this.params.data.method.setTypeValue({id:type_ID_List,name:type_Name,flag:this.flag});
		history.back()
	};
	//模型加载事件
	Model.prototype.modelLoad = function(event){
		this.flag = this.params.flag;
		this.name = this.params.name;
		$(this.getElementByXid("common_Span")).html(this.name);
		var params = {};
		var res = asCore.setGetFalse(interFace.getClientSearchData, params);
		if(res.code == 200){
			//客户来源//source
			if(this.flag == 1){
				this.comp("business_Type_Data").loadData(res.data.source.list, false);
			}else if(this.flag == 2){
				this.comp("business_Type_Data").loadData(res.data.establish_time.list, false);
			}else if(this.flag == 3){
				this.comp("business_Type_Data").loadData(res.data.service_rate.list, false);
			}else if(this.flag == 4){
				this.comp("business_Type_Data").loadData(res.data.deal_impression.list, false);
			}else if(this.flag == 5){
				this.comp("business_Type_Data").loadData(res.data.enterprise_nature.list, false);
			}else if(this.flag == 6){
				this.comp("business_Type_Data").loadData(res.data.year_turnover.list, false);
			}
		}
	};

	return Model;
});