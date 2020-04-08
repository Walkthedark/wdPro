define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.type_ID = "";
		this.type_Name = "";
		this.name = "";
	};
	// 获取
	Model.prototype.modelLoad = function(event) {
		// 接受上面传过来的参数，判断选择什么数据
		this.flag = this.params.data.flag;
		this.name = this.params.data.name;
		$(this.getElementByXid("common_Span")).html(this.name);
		var params = {};
		var res = asCore.setGetFalse(interFace.getClientSearchData, params);
		if (res.code === 200) {
			if (this.flag == 1) {
				this.comp("business_Type_Data").loadData(res.data.level_id.list, false);
			} else if (this.flag == 2) {
				this.comp("business_Type_Data").loadData(res.data.source.list, false);
			} else if (this.flag == 3) {
				this.comp("business_Type_Data").loadData(res.data.establish_time.list, false);
			} else if (this.flag == 4) {
				this.comp("business_Type_Data").loadData(res.data.service_rate.list, false);
			} else if (this.flag == 5) {
				this.comp("business_Type_Data").loadData(res.data.deal_impression.list, false);
			} else if (this.flag == 6) {
				this.comp("business_Type_Data").loadData(res.data.enterprise_nature.list, false);
			} else if (this.flag == 7) {
				this.comp("business_Type_Data").loadData(res.data.year_turnover.list, false);
			} else if (this.flag == 8) {
				this.comp("business_Type_Data").loadData(res.data.enterprise_scale.list, false);
			}
			//
		} else {
			justep.Util.hint("销售区域获取失败");
		}
	};
	// 获取客户分类
	Model.prototype.okBtnClick = function(event) {
		if (this.type_ID == "") {
			justep.Util.hint("请选择销售区域");
			return;
		}
		var params = {};
		params.ID = this.type_ID;
		params.Name = this.type_Name;
		params.flag = this.flag;
		// 提交选择的数据
		this.getParentModel().getCommon_Radio(params);
		this.close();
	};
	// 根据change获取值
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.type_ID = row.val("id");
		this.type_Name = row.val("name");
	};
	return Model;
});