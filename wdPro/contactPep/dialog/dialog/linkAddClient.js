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
		this.client_id_ = "";
		this.id_ = "";
	};
	// 保存客户信息
	Model.prototype.div77Click = function(event) {
		var dataJson = this.comp("dataJson");
		var params = {};
		// 获取客户名称
		var nameInpV = this.comp("nameInp").val();
		var client_id = this.comp("input1").val();
		// 验证客户名称不能为空
		/**/
		if (asCore.regular(nameInpV)) {
			justep.Util.hint("客户名不能为空");
			return;
		}
		if (asCore.regular(client_id)) {
			justep.Util.hint("客户编码不能为空");
			return;
		}
		// 获取客户分类IDcategory
		params.client_name = nameInpV;
		// 验证客户分类
		if (this.category == "") {
			justep.Util.hint("客户分类不能为空");
			return;
		}
		;
		var level_id = dataJson.getValue("level_id");
		params.level_id = level_id;
		params.category = this.category;
		params.client_id = client_id;
		if (this.region_ID_Type == "") {
			justep.Util.hint("销售区域不能为空");
			return;
		}
		;
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
		// 这里是1053的新增值
		var en_name = this.comp("input3").val();// 英文名字
		params.en_name = en_name;
		var age = this.comp("input5").val();// 年龄
		params.age = age;
		var zodiac = this.comp("input4").val();// 属相
		params.zodiac = zodiac;
		var brithday = this.comp("input9").val();// 生日
		params.brithday = brithday;
		var constellation = this.comp("input8").val();// 星座
		params.constellation = constellation;
		var character = this.comp("input6").val();// 性格
		params.character = character;
		var skill = this.comp("input7").val();// 才艺
		params.skill = skill;
		var profession = this.comp("input17").val();// 职业
		params.profession = profession;
		var company = this.comp("input16").val();// 企业
		params.company = company;
		var id_num = this.comp("input14").val();// 身份证
		params.id_num = id_num;
		var other_contact = this.comp("input15").val();// 其他社交
		params.other_contact = other_contact;
		var wechat = this.comp("input10").val();// 微信
		params.wechat = wechat;
		var country = this.comp("input12").val();// 国籍
		params.country = country;
		var race = this.comp("input19").val();// 民族
		params.race = race;
		var education = this.comp("input20").val();// 最高学历
		params.education = education;
		var abroad = this.comp("input21").val();// 留学地点
		params.abroad = abroad;
		var old_address = this.comp("input23").val();// 曾居地址
		params.old_address = old_address
		var household = this.comp("input25").val();// 户籍
		params.household = household;
		var family_background = this.comp("input26").val();// 家庭背景
		params.family_background = family_background;
		var belief = this.comp("input27").val();// 宗教信仰
		params.belief = belief;
		var buy_ability = this.comp("input28").val();// 消费能力
		params.buy_ability = buy_ability;
		var car_brand = this.comp("input24").val();// 汽车品牌
		params.car_brand = car_brand;
		// 个人喜好
		var color = this.comp("input46").val();// 颜色
		params.coloe = color;
		var floriculture = this.comp("input45").val();// 花艺
		params.floriculture = floriculture;
		var style = this.comp("input43").val();// 风格
		params.style = style;
		var form = this.comp("input44").val();// 形式
		params.form = form;
		var clothing = this.comp("input39").val();// 服装
		params.clothing = clothing;
		var festival = this.comp("input40").val();// 节日
		params.festival = festival;
		var anniversaries = this.comp("input42").val();// 纪念日
		params.anniversaries = anniversaries;
		var gift = this.comp("input41").val();// 礼物
		params.gift = gift;
		var element = this.comp("input54").val();// 元素
		params.element = element;
		var shape = this.comp("input50").val();// 形状
		params.shape = shape;
		var movie = this.comp("input48").val();// 电影
		params.movie = movie;
		var book = this.comp("input49").val();// 书籍
		params.book = book;
		var music = this.comp("input51").val();// 音乐
		params.music = music;
		var brand = this.comp("input52").val();// 品牌
		params.brand = brand;
		var game = this.comp("input47").val();// 游戏
		params.game = game;
		var food = this.comp("input53").val();// 食物
		params.food = food;
		var drink = this.comp("input56").val();// 饮品
		params.drink = drink;
		var hobby = this.comp("input34").val();// 爱好
		params.hobby = hobby;
		var city = this.comp("input35").val();// 城市
		params.city = city;
		var hotel = this.comp("input36").val();// 酒店
		params.hotel = hotel;
		var like = this.comp("input55").val();// 喜好
		params.like = like;
		var person = this.comp("input37").val();// 人物
		params.person = person;
		var pet = this.comp("input31").val();// 宠物
		params.pet = pet;
		var animal = this.comp("input32").val();// 动物
		params.animal = animal;
		var cartoon_characters = this.comp("input33").val();// 卡通人物
		params.cartoon_characters = cartoon_characters;
		var program = this.comp("input38").val();// 节目
		params.program = program;
		// love_experience
		var love_experience = this.comp("textarea1").val()
		params.love_experience = love_experience;
		// remark
		var remark2 = this.comp("textarea2").val()
		params.remark = remark2;
		params.staff_id = this.id;
		// 提交
		this.saveClient(params);
	};
	Model.prototype.saveClient = function(params) {

		var res = asCore.setPostFalse(interFace.relationClient, params);
		if (res.code === 200) {
			this.clearInput();
			// successClient
			history.back();
			 justep.Util.hint("客户新增关联成功");
		} else {
			justep.Util.hint("客户新增关联失败",{'type':'danger'});
		}
	};
	// 清空数据
	Model.prototype.clearInput = function() {
		// 获取客户名称
		this.comp("nameInp").val("");
		this.comp("input1").val("");

		// 获取开户名称
		this.comp("bank_Name_Inp").val("");
		// 获取开户行
		this.comp("bank_Inp").val("");
		// 税号
		this.comp("tax_Num_Inp").val("");
		// 备注
		this.comp("remark_Inp").val("");
		// 助记码
		this.comp("mnemonic_Inp").val("");
		// 关键词
		this.comp("keywords_Inp").val("");
		// 座机
		this.comp("phone_Inp").val("");
		// 传真fax_Inp
		this.comp("fax_Inp").val("");
		// 邮箱email_Inp
		this.comp("email_Inp").val("");
		// 官网website_Inp
		this.comp("website_Inp").val("");
		// 微博micro_Blog_Inp
		this.comp("micro_Blog_Inp").val("");
		// address_Inp//地址
		this.comp("address_Inp").val("");
		// main_Product_Inp主营产品
		this.comp("main_Product_Inp").val("");
		// bank_Account_Inp银行帐号
		this.comp("bank_Account_Inp").val("");
		// 这里是1053的新增值
		this.comp("input3").val("");// 英文名字
		this.comp("input5").val("");// 年龄
		this.comp("input4").val("");// 属相
		this.comp("input9").val("");// 生日
		this.comp("input8").val("");// 星座
		this.comp("input6").val("");// 性格
		this.comp("input7").val("");// 才艺
		this.comp("input17").val("");// 职业
		this.comp("input16").val("");// 企业
		this.comp("input14").val("");// 身份证
		this.comp("input15").val("");// 其他社交
		this.comp("input10").val("");// 微信
		this.comp("input12").val("");// 国籍
		this.comp("input19").val("");// 民族
		this.comp("input20").val("");// 最高学历
		this.comp("input21").val("");// 留学地点
		this.comp("input23").val("");// 曾居地址
		this.comp("input25").val("");// 户籍
		this.comp("input26").val("");// 家庭背景
		this.comp("input27").val("");// 宗教信仰
		this.comp("input28").val("");// 消费能力
		this.comp("input24").val("");// 汽车品牌
		// 个人喜好
		this.comp("input46").val("");// 颜色
		this.comp("input45").val("");// 花艺
		this.comp("input43").val("");// 风格
		this.comp("input44").val("");// 形式
		this.comp("input39").val("");// 服装
		this.comp("input40").val("");// 节日
		this.comp("input42").val("");// 纪念日
		this.comp("input41").val("");// 礼物
		this.comp("input54").val("");// 元素
		this.comp("input50").val("");// 形状
		this.comp("input48").val("");// 电影
		this.comp("input49").val("");// 书籍
		this.comp("input51").val("");// 音乐
		this.comp("input52").val("");// 品牌
		this.comp("input47").val("");// 游戏
		this.comp("input53").val("");// 食物
		this.comp("input56").val("");// 饮品
		this.comp("input34").val("");// 爱好
		this.comp("input35").val("");// 城市
		this.comp("input36").val("");// 酒店
		this.comp("input55").val("");// 喜好
		this.comp("input37").val("");// 人物
		this.comp("input31").val("");// 宠物
		this.comp("input32").val("");// 动物
		this.comp("input33").val("");// 卡通人物
		this.comp("input38").val("");// 节目
		// love_experience
		this.comp("textarea1").val("")
		// remark
		this.comp("textarea2").val("")
		this.comp("dataJson").refreshData();
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

	Model.prototype.button4Click = function(event) {
		var text = justep.UUID.createUUID();
		this.client_id_ = text;
		this.comp("input1").val(text);
	};

	Model.prototype.modelParamsReceive = function(event){
		var linkManData = this.comp("linkManData");
		var param =[];
		var p ={};
		p.staff_id = this.params.id;
		p.staff_name = this.params.staff_name;
		this.id = this.params.id
		param.push(p);
		linkManData.loadData(param, false);
		linkManData.refreshData();
	};

	return Model;
});