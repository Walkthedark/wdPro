define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.client_List_id = "";
		this.clientName = "";
		this.categoryList = [];
		this.region_idList = [];
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		// 参数
		this.params = {};
		this.linkManId = "";//联系人的id
	};
	Model.prototype.button4Click = function(event) {
		this.comp("popOver7").show();
		this.comp("popOver1").hide();
		this.comp("popOver2").hide();
		this.comp("popOver3").hide();
	};
	Model.prototype.button5Click = function(event) {
		this.comp("popOver1").show();
		this.comp("popOver7").hide();
		this.comp("popOver2").hide();
		this.comp("popOver3").hide();
	};
	Model.prototype.button6Click = function(event) {
		this.comp("popOver2").show();
		this.comp("popOver1").hide();
		this.comp("popOver7").hide();
		this.comp("popOver3").hide();
	};
	Model.prototype.button7Click = function(event) {
		this.comp("popOver3").show();
		this.comp("popOver2").hide();
		this.comp("popOver1").hide();
		this.comp("popOver7").hide();
	};

	Model.prototype.modelLoad = function(event) {

	};
	// 参数接收事件
	Model.prototype.modelParamsReceive = function(event) {
		var params = {};
		var res = asCore.setGetFalse(interFace.linkman, params);
		if (res.code === 200) {
			var linkManData = this.comp("linkManData");
			linkManData.loadData(res.data.data, false);
			if (this.page == 1) {
				if (res.data.pager.total <= 15) {
					this.total = 1;
				} else {
					this.total = Math.ceil(res.data.pager.total / 15);
				}
			}
			this.page += 1;
		}
	};
	// 新增联系人
	Model.prototype.button3Click = function(event) {
		justep.Shell.showPage('addContactPep');
	};
	// 搜索事件
	Model.prototype.button12Click = function(event) {

	};
	// 获取客户分类
	Model.prototype.dataJasonCustomRefresh = function(event) {
		var params = {};
		var res = asCore.setGetFalse(interFace.getClientSearchData, params);
		if (res.code == 200) {
			this.comp("categoryData").loadData(res.data.category.list, false);
			this.comp("region_idData").loadData(res.data.region_id.list, false);
		} else {
			justep.Util.hint("过滤条件加载失败");
		}
	};
	// 搜索发送请求
	Model.prototype.setGetRequest = function(params) {
		var res = asCore.setGetFalse(interFace.linkman, params);
		if (res.code == 200) {
			var linkManData = this.comp("linkManData");
			linkManData.loadData(res.data.data, false);
		} else {
			justep.Util.hint("过滤条件加载失败");
		}
	};
	// 按客户分类搜索
	Model.prototype.button27Click = function(event) {
		// 先获取客户分类
		var categoryData = this.comp("categoryData");
		var IDlist = [];
		categoryData.each(function(obj) {
			// obj.row
			if (obj.row.val("choose") == 1) {
				IDlist.push(obj.row.val("id"));
			}
		});
		this.categoryList = IDlist;
		var params = {};
		params.category = this.categoryList;
		this.params = params;
		this.setGetRequest(params);
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		this.comp("popOver7").hide();// 隐藏弹窗
	};
	// 销售区域确定搜索
	Model.prototype.button8Click = function(event) {
		var region_idData = this.comp("region_idData");
		var IDlist = [];
		region_idData.each(function(obj) {
			// obj.row
			if (obj.row.val("choose") == 1) {
				IDlist.push(obj.row.val("id"));
			}
		});
		this.region_idList = IDlist;
		var params = {};
		params.region_id = this.region_idList;
		this.setGetRequest(params);
		this.params = params;
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.comp("popOver1").hide();// 隐藏弹窗
	};
	// 创建人搜索
	Model.prototype.button10Click = function(event) {
		var nameInpVue = this.comp("nameInp").val();
		var params = {};
		params.create_staff = nameInpVue;
		this.params = params;
		this.setGetRequest(params);
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.comp("popOver2").hide();// 隐藏弹窗
	};
	// 关注状态
	Model.prototype.button19Click = function(event) {
		justep.Shell.showPage("linkStateChoose", {
			data : {
				method : this
			}
		});
	};
	// 获取关注状态标签
	Model.prototype.setLinkStateParams = function(params) {
		var moreData = this.comp("moreData");
		this.comp("input4").val(params.name);
		moreData.setValueByID("attention_type", params.id, "10001");
	};
	// 获取联系人标签的值
	Model.prototype.setTagParams = function(params) {
		var moreData = this.comp("moreData");
		this.comp("input5").val(params.name);
		moreData.setValueByID("tag", params.id, "10001");
	};
	// 联系人标签
	Model.prototype.button20Click = function(event) {
		justep.Shell.showPage("linkTagList", {
			data : {
				method : this
			}
		});
	};
	// 性别
	Model.prototype.button21Click = function(event) {
		// seachSexChoose
		justep.Shell.showPage("seachSexChoose", {
			data : {
				method : this
			}
		});
	};
	// 获取性别的值
	Model.prototype.setSexParams = function(params) {
		this.comp("input6").val(params.name);
		var moreData = this.comp("moreData");
		moreData.setValueByID("sex", params.id, "10001");
	};
	// 近期生日
	Model.prototype.button22Click = function(event) {

	};
	// 更多
	Model.prototype.button13Click = function(event) {
		var params = {};
		// 获取是否选择未关联客户的联系人
		var weiLinkMan = this.comp("checkbox4").val();
		// 近期生日
		var futureBao = this.comp("checkbox2").val();
		if (weiLinkMan == 1) {// 添加搜索为关联客户的联系人
			params.no_client = 0;
		}
		if (futureBao == 1) {// 添加近期生日
			params.birthday_soon = 1;
		}
		// 获取
		var moreData = this.comp("moreData");
		var attention_type = moreData.getValueByID("attention_type", "10001");//
		if (attention_type != null && attention_type.length > 0) {// 关注状态
			params.attention_type = attention_type;
		}
		var tag = moreData.getValueByID("tag", "10001");//
		if (tag != null && tag.length > 0) {// 关注状态
			params.tag = tag;
		}
		var sex = moreData.getValueByID("sex", "10001");//
		if (sex != null && sex.length > 0) {// 关注状态
			params.sex = sex;
		}
		this.params = params;
		this.setGetRequest(params);
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.comp("popOver3").hide();// 隐藏弹窗
	};
	// 上划刷新
	Model.prototype.scrollView1PullUp = function(event) {
		this.params.page = this.page;
		this.upSetGetRequest(this.params);
	};
	//
	Model.prototype.upSetGetRequest = function(params) {
		var res = asCore.setGetFalse(interFace.linkman, params);
		if (res.code === 200) {
			if (res.data.data.length <= 0) {
				justep.Util.hint("没有数据了");
			} else {
				var linkManData = this.comp("linkManData");
				linkManData.loadData(res.data.data, true);
				if (this.page == 1) {
					if (res.data.pager.total <= 15) {
						this.total = 1;
					} else {
						this.total = Math.ceil(res.data.pager.total / 15);
					}
				}
				this.page += 1;
			}
		} else {
			justep.Util.hint("数据加载失败");
		}
	};
	Model.prototype.button1Click = function(event){
		justep.Util.hint("邀请信息已经发送");
	};
	
	Model.prototype.div72Click = function(event){
		var row = event.bindingContext.$object;
		var staff_id  = row.val("staff_id");
		//contactPepInfo
		// 阻止事件冒泡
		justep.Shell.showPage("contactPepInfo", {id:staff_id})
		event.stopPropagation();
	};
	//行操作事件
	Model.prototype.div9Click = function(event){
		this.comp("popOver5").show();
		var staff_id = event.bindingContext.$object.val("staff_id");
		this.linkManId = staff_id;
		event.stopPropagation();
	};
	//打电话
	Model.prototype.button41Click = function(event){
		this.comp("popOver5").hide();
		var linkManData = this.comp("linkManData");
		//this.linkManId
		var phone =linkManData.getValueByID("phone", this.linkManId);
		window.location.href = 'tel://' + phone;
	};
	//绑定外部联系人
	Model.prototype.button40Click = function(event){
		justep.Util.hint("功能暂未开放");
	};
	//删除
	Model.prototype.button2Click = function(event){
		//removeLinkManw
		this.comp("popOver5").hide();
		this.comp("messageDialog1").show();
	};
	//修改
	Model.prototype.button45Click = function(event){
		//
		this.comp("popOver5").hide();
		justep.Shell.showPage("modifyContactPep", {id:this.linkManId})
	};
	//删除
	Model.prototype.messageDialog1OK = function(event){
		var params = {};
		params.id = this.linkManId;
		var res = asCore.setGetFalse(interFace.removeLinkManw, params);
		if (res.code === 200) {
			justep.Util.hint("联系人删除成功");
			var linkManData = this.comp("linkManData");
			linkManData.deleteData(linkManData.getRowByID(this.linkManId));
		} else {
			justep.Util.hint("联系人删除失败", {
				'type' : 'danger'
			});

		}
	};
	return Model;
});