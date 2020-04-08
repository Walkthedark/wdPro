define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.category = "";// 客户分类
		this.region_ID_Type = "";// 销售区域
		this.business_Type = "";// 业务模式
		this.add_linkman = 1;// 判断是否直接添加联系人
		this.relation_linkman = 1;// 判断是否关联现有的联系人
	};
	// 保存客户信息
	Model.prototype.div77Click = function(event) {
		var dataJson = this.comp("dataJson");
		var params = {};
		// 获取客户名称
		var nameInpV = this.comp("nameInp").val();
		// 验证客户名称不能为空
		/**/
		if (asCore.regular(nameInpV)) {
			justep.Util.hint("客户名不能为空");
			return;
		}
		// 获取客户分类IDcategory
		params.client_name = nameInpV;
		// 验证客户分类
		if (this.category == "") {
			justep.Util.hint("客户分类不能为空");
			return;
		};
		var level_id =  dataJson.getValue("level_id");
		params.level_id = level_id;
		params.category = this.category;
		// 获取销售区域
		params.region_id = this.region_ID_Type;
		// 业务模式business_type_Inp
		params.business_type = this.business_Type;
		// 客户来源
		params.source = dataJson.getValue("source");
		// 成立时间
		params.establish_time = dataJson.getValue("establish_time");
		// 服务满意度
		params.service_rate = dataJson.getValue("service_rate");
		// 交易印象
		params.deal_impression = dataJson.getValue("deal_impression");
		// 企业性质
		params.enterprise_nature = dataJson.getValue("enterprise_nature");
		// 年营业
		params.year_turnover = dataJson.getValue("year_turnover");
		// 企业模式
		params.enterprise_scale = dataJson.getValue("enterprise_scale");
		// 获取开户名称
		var bank_Name_V = this.comp("bank_Name_Inp").val();
		params.bank_name = bank_Name_V;
		// 获取开户行
		var bank_Inp_V = this.comp("bank_Inp").val();
		params.bank = bank_Inp_V;
		// 税号
		var tax_Num_V = this.comp("tax_Num_Inp").val();
		params.tax_num = tax_Num_V;
		// 备注
		var remark_V = this.comp("remark_Inp").val();
		params.remark_V = remark_V;
		// 助记码
		var mnemonic_V = this.comp("mnemonic_Inp").val();
		params.mnemonic = mnemonic_V;
		// 关键词
		var keywords_V = this.comp("keywords_Inp").val();
		params.keywords = keywords_V;
		// 座机
		var phone_V = this.comp("phone_Inp").val();
		params.phone = phone_V;
		// 传真fax_Inp
		var fax_V = this.comp("fax_Inp").val();
		params.fax = fax_V;
		// 邮箱email_Inp
		var email_V = this.comp("email_Inp").val();
		params.email = email_V;
		// 官网website_Inp
		var website_V = this.comp("website_Inp").val();
		params.website = website_V;
		// 微博micro_Blog_Inp
		var micro_Blog_V = this.comp("micro_Blog_Inp").val();
		params.micro_blog = micro_Blog_V;
		// address_Inp//地址
		var address_V = this.comp("address_Inp").val();
		params.address = address_V;
		// main_Product_Inp主营产品
		var main_Product_V = this.comp("main_Product_Inp").val();
		params.main_product = main_Product_V;
		// bank_Account_Inp银行帐号
		var bank_Account_V = this.comp("bank_Account_Inp").val();
		params.bank_account = bank_Account_V;
		// 获取企业
		params.trade_id = dataJson.getValue("trade_id");
		// 判断是否新增了联系人
//		if (this.add_linkman == 2) {
//			var linkM = [];
//			var p = {};
//			var staff_Name = this.comp("staff_Name_Inp").val();
//			if (asCore.regular(staff_Name)) {
//				justep.Util.hint("联系人名称不能为空");
//				return;
//			}
//			p.staff_name = staff_Name;
//			// 手机号
//			var linkman_Phone = this.comp("linkman_Phone_Inp").val();
//			p.phone = linkman_Phone;
//			// 职务
//			var linkMan_Duty = this.comp("linkMan_Duty_Inp").val();
//			p.duty = linkMan_Duty;
//			// 备注
//			var hobby = this.comp("hobby_Inp").val();
//			p.hobby = hobby;
//			linkM.push(p);
//			params.add_linkman = linkM;
//		}
		//提交 向父类传值
		var p ={};
		p.client_id =  justep.UUID.createUUID();
		p.client_name = nameInpV;
		p.flag = 2;
		var pa = {};
		pa.dataJson = params;
		pa.loadData = p;
		this.getParentModel().setAddPop(pa);
		this.close();
	};
	
	Model.prototype.modelLoad = function(event) {

	};
	// 打开客户分类页面
	Model.prototype.button1Click = function(event) {
		this.comp("clinet_TypeWinDialog").open();
	};
	Model.prototype.getClinet_Type = function(params) {
		this.category = params.ID;
		this.comp("typeInp").val(params.Name);
	};
	// 打开业务模式
	Model.prototype.business_type_btnClick = function(event) {
		this.comp("business_TypewinDialog").open();
	};
	Model.prototype.getBusiness_type = function(params) {
		this.business_Type = params.ID;
		this.comp("business_type_Inp").val(params.Name);
	};
	// 打开销售区域
	Model.prototype.region_ID_btnClick = function(event) {
		this.comp("region_IDWinDialog").open();
	};
	Model.prototype.getRegion_ID = function(params) {
		this.region_ID_Type = params.ID;
		this.comp("region_ID_Inp").val(params.Name);
	};
	// /从这里开始往data里面set值
	// 客户等级1:代表客户等级
	Model.prototype.level_id_btnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 1,
				name : "客户等级"
			}
		});
	};
	Model.prototype.source_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 2,
				name : "客户来源"
			}
		});
	};
	// 获取企业getEnterprise_Radio
	Model.prototype.getEnterprise_Radio = function(params) {
		var dataJson = this.comp("dataJson");
		dataJson.setValue("trade_id", params.id);
		this.comp("trade_Id_Inp").val(params.name);
	};
	// 公共的获取值
	Model.prototype.getCommon_Radio = function(params) {
		// 获取data
		var dataJson = this.comp("dataJson");
		// input赋值
		if (params.flag == 1) {
			dataJson.setValue("level_id", params.ID);
		
			this.comp("level_Id_Inp").val(params.Name);
		} else if (params.flag == 2) {
			dataJson.setValue("source", params.ID);
			this.comp("source_Inp").val(params.Name);
		} else if (params.flag == 3) {
			dataJson.setValue("establish_time", params.ID);
			this.comp("establish_Time_Inp").val(params.Name);
		} else if (params.flag == 4) {
			dataJson.setValue("service_rate", params.ID);
			this.comp("service_Rate_Inp").val(params.Name);
		} else if (params.flag == 5) {
			dataJson.setValue("deal_impression", params.ID);
			this.comp("deal_Impression_Inp").val(params.Name);
		} else if (params.flag == 6) {
			dataJson.setValue("enterprise_nature", params.ID);
			this.comp("enterprise_Nature_Inp").val(params.Name);
		} else if (params.flag == 7) {
			dataJson.setValue("year_turnover", params.ID);
			this.comp("year_Turnover_Inp").val(params.Name);
		} else if (params.flag == 8) {
			dataJson.setValue("enterprise_scale", params.ID);
			this.comp("enterprise_Scale_Inp").val(params.Name);
		}
		;
	};
	// 成立时间
	Model.prototype.establish_Time_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 3,
				name : "成立时间"
			}
		});
	};
	// 服务满意度
	Model.prototype.service_Rate_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 4,
				name : "服务满意度"
			}
		});
	};
	// 交易印象
	Model.prototype.deal_Impression_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 5,
				name : "交易印象"
			}
		});
	};
	// 行业
	Model.prototype.trade_Id_BtnClick = function(event) {
		this.comp("enterprise_WinDialog").open();
	};
	// 企业性质
	Model.prototype.enterprise_Nature_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 6,
				name : "企业性质"
			}
		});
	};
	// 年营业额
	Model.prototype.year_Turnover_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 7,
				name : "年营业额"
			}
		});
	};
	// 企业规模
	Model.prototype.enterprise_Scale_BtnClick = function(event) {
		this.comp("common_RadioWinDialog").open({
			data : {
				flag : 8,
				name : "企业规模"
			}
		});
	};
	// 控制添加联系人的隐藏还是展示
	Model.prototype.div62Click = function(event) {
		if (this.add_linkman == 1) {
			$(this.getElementByXid("div63")).show();
			$(this.getElementByXid("div15")).show();
			$(this.getElementByXid("div62")).hide();
			this.add_linkman = 2;
		} else if (this.add_linkman == 2) {
			$(this.getElementByXid("div63")).hide();
			$(this.getElementByXid("div15")).hide();
			$(this.getElementByXid("div62")).show();
			this.add_linkman = 1;
		}
	};

	return Model;
});