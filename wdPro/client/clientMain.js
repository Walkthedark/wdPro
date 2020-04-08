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
		//添加客户
		this.workinfo ={};
		this.descId = "";// 排序选择的ID;
		// 分页
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.params = {};
	};
	Model.prototype.settlementClick = function(event) {

	};
	Model.prototype.button4Click = function(event) {
		this.comp("popOver2").show();
		this.comp("popOver8").hide();
		this.comp("popOver7").hide();
		this.comp("popOver9").hide();

	};

	Model.prototype.button5Click = function(event) {
		this.comp("popOver2").hide();
		this.comp("popOver7").show();
		this.comp("popOver8").hide();
		this.comp("popOver9").hide();
	};

	Model.prototype.button6Click = function(event) {
		this.comp("popOver2").hide();
		this.comp("popOver7").hide();
		this.comp("popOver8").show();
		this.comp("popOver9").hide();
	};

	Model.prototype.button7Click = function(event) {
		this.comp("popOver9").show();
		this.comp("popOver8").hide();
		this.comp("popOver7").hide();
		this.comp("popOver2").hide();
	};

	Model.prototype.div9Click = function(event) {
		var row = event.bindingContext.$object;
		var params ={};
		this.client_List_id = row.val("client_id");
		params.client_id = this.client_List_id;
		params.client_name =  row.val("client_name");
		this.workinfo =params; 
		this.comp("popOver6").show();
		event.stopPropagation();
	};
	//data的刷新事情
	Model.prototype.ListDataCustomRefresh = function(event) {
		this.params.need_contract =1;
		var res = asCore.setGetFalse(interFace.clientList, this.params);
		if (res.code === 200) {
			var ListData = this.comp("ListData");
			ListData.loadData(res.data.data, false);
			if (this.page == 1) {
				if (res.data.pager.total <= 15) {
					this.total = 1;
				} else {
					this.total = Math.ceil(res.data.pager.total / 15);
				}
			}
			this.page += 1;
		} else {
			justep.Util.hint("客户列表加载失败");
		}
	};

	// 打电话
	Model.prototype.button15Click = function(event) {
		// 弹窗
		this.comp("popOver6").hide();// 关闭选择弹窗
		// 获取信息
		var ListData = this.comp("ListData");
		var rowData = ListData.getValueByID("contract", this.client_List_id);
		this.comp("linkMan").loadData(rowData, false);
		
		this.comp("popOver4").show();

	};
	// 拨打电话
	Model.prototype.button33Click = function(event) {
		var phone = event.bindingContext.$object.val("phone");
		window.location.href = 'tel://' + phone;
	};

	// 新增客户
	Model.prototype.button3Click = function(event) {
		// 打开页面
		justep.Shell.showPage("addClient");
	};
	// 客户详情
	Model.prototype.div8Click = function(event) {
		// 获取行数据
		var row = event.bindingContext.$object;
		var client_id = row.val("client_id");
		justep.Shell.showPage("clientInfo", {
			id : client_id
		});
		// 阻止事件冒泡
		event.stopPropagation();
	};
	// 确定
	Model.prototype.button12Click = function(event) {
		// 获取客户名称的值
		// query
		var clientName = this.comp("input1").val();
		// 验证是否为空
		if (asCore.regular(clientName)) {
			justep.Util.hint("请输入搜索条件");
			return;
		}
		;
		var params = {};
		params.query = clientName;
		this.clientName = clientName;
		this.setGetRequest(params);
	};
	// 发送请求
	Model.prototype.setGetRequest = function(params) {
		params.need_contract =1;
		var res = asCore.setGetFalse(interFace.clientList, params);
		if (res.code === 200) {
			if (res.data.data.length <= 0) {
				justep.Util.hint("未搜到任何相关数据");
			} else {
				var ListData = this.comp("ListData");
				ListData.loadData(res.data.data, false);
			}
		} else {
			justep.Util.hint("搜索失败");
		}
	};
	// 获取搜索的选项
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
	// 客户分类
	Model.prototype.button2Click = function(event) {
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
		this.setGetRequest(params);
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		this.comp("popOver2").hide();
	};
	// 销售区域
	Model.prototype.button27Click = function(event) {
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
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.comp("popOver7").hide();
	};
	// 客户来源选择
	Model.prototype.button8Click = function(event) {
		justep.Shell.showPage("common_chebox", {
			flag : 1,
			name : "客户来源",
			data : {
				method : this
			}
		});
	};
	// 客户来源选择
	Model.prototype.setTypeValue = function(params) {
		// flag==1 客户来源
		var dataJson = this.comp("dataJson");
		if (params.flag == 1) {
			this.comp("input3").val(params.name);
			dataJson.setValueByID("source", params.id, "10001");
		} else if (params.flag == 2) {
			this.comp("input4").val(params.name);
			dataJson.setValueByID("establish_time", params.id, "10001");
		} else if (params.flag == 3) {
			this.comp("input5").val(params.name);
			dataJson.setValueByID("service_rate", params.id, "10001");
		} else if (params.flag == 4) {
			this.comp("input6").val(params.name);
			dataJson.setValueByID("deal_impression", params.id, "10001");
		} else if (params.flag == 5) {
			this.comp("input7").val(params.name);
			dataJson.setValueByID("enterprise_nature", params.id, "10001");
		} else if (params.flag == 6) {
			this.comp("input8").val(params.name);
			dataJson.setValueByID("year_turnover", params.id, "10001");
		}

	};
	// 成立时间
	Model.prototype.button9Click = function(event) {
		justep.Shell.showPage("common_chebox", {
			flag : 2,
			name : "成立时间",
			data : {
				method : this
			}
		});
	};
	// 服务满意度
	Model.prototype.button13Click = function(event) {
		justep.Shell.showPage("common_chebox", {
			flag : 3,
			name : "服务满意度",
			data : {
				method : this
			}
		});
	};
	// 交易印象
	Model.prototype.button14Click = function(event) {
		justep.Shell.showPage("common_chebox", {
			flag : 4,
			name : "交易印象",
			data : {
				method : this
			}
		});
	};
	// 企业性质
	Model.prototype.button31Click = function(event) {
		justep.Shell.showPage("common_chebox", {
			flag : 5,
			name : "企业性质",
			data : {
				method : this
			}
		});
	};
	// 年营业额
	Model.prototype.button32Click = function(event) {
		justep.Shell.showPage("common_chebox", {
			flag : 6,
			name : "年营业额",
			data : {
				method : this
			}
		});
	};
	// 更多筛选
	Model.prototype.button29Click = function(event) {
		// 获取上面选项
		var moreData = this.comp("moreData");
		var params = {};
		moreData.each(function(obj) {
			if (obj.row.val("choose") == 1) {
				if (obj.row.val("id") == 0) {// 无跟单
					params.no_documentary = 0;
				} else if (obj.row.val("id") == 1) {// 无订货人
					params.no_orderer = 0;
				} else if (obj.row.val("id") == 2) {// 无联系人
					params.no_linkman = 0;
				}
			}
		});
		// 获取下面的选择的值客户来源、成立时间、服务满意度、交易印象、企业性质、年营业额
		var dataJson = this.comp("dataJson");
		var source = dataJson.getValueByID("source", 10001);
		if (source != null && source.length > 0) {// 不大于0的时候活着不为null的时候，增加搜索条件
			params.source = source;// 添加客户来源搜索功率
		}
		var establish_time = dataJson.getValueByID("establish_time", 10001);
		if (establish_time != null && establish_time.length > 0) {// 不大于0的时候活着不为null的时候，增加搜索条件
			params.establish_time = establish_time;// 添加成立时间搜索功率
		}
		var service_rate = dataJson.getValueByID("service_rate", 10001);
		if (service_rate != null && service_rate.length > 0) {// 不大于0的时候活着不为null的时候，增加搜索条件
			params.service_rate = service_rate;// 添加服务满意度搜索功率
		}
		var deal_impression = dataJson.getValueByID("deal_impression", 10001);
		if (deal_impression != null && deal_impression.length > 0) {// 不大于0的时候活着不为null的时候，增加搜索条件
			params.deal_impression = deal_impression;// 添加交易印象搜索功率
		}
		var enterprise_nature = dataJson.getValueByID("enterprise_nature", 10001);
		if (enterprise_nature != null && enterprise_nature.length > 0) {// 不大于0的时候活着不为null的时候，增加搜索条件
			params.enterprise_nature = enterprise_nature;// 添加企业性质搜索功率
		}
		var year_turnover = dataJson.getValueByID("year_turnover", 10001);
		if (year_turnover != null && year_turnover.length > 0) {// 不大于0的时候活着不为null的时候，增加搜索条件
			params.year_turnover = year_turnover;// 添加年营业额搜索功率
		}
		this.setGetRequest(params);
		this.page = 1;// 当前页数
		this.total = 0;// 总页数
		this.comp("popOver8").hide();
	};
	// 排序
	Model.prototype.button22Click = function(event) {
		// 判断是否为空
		if (this.descId != "") {
			var par = [];
			var p = {};
			if (this.descId == 1) {
				p.key = "last_contract_time";
				p.rule = "desc";
				par.push(p);
			} else if (this.descId == 2) {
				p.key = "last_contract_time";
				p.rule = "asc";
				par.push(p);
			} else if (this.descId == 3) {
				p.key = "create_at";
				p.rule = "desc";
				par.push(p);
			} else if (this.descId == 4) {
				p.key = "create_at";
				p.rule = "asc";
				par.push(p);
			}
			this.params.sortable = par;
			this.setGetRequest(this.params);
			this.page = 1;// 当前页数
			this.total = 0;// 总页数
			this.comp("popOver9").hide();
		} else {
			justep.Util.hint("请选择排序条件");
		}
	};
	//
	Model.prototype.radio45Change = function(event) {
		var row = event.bindingContext.$object;
		this.descId = row.val("id");
	};
	// 上划刷新
	Model.prototype.scrollView1PullUp = function(event) {
		this.params.page = this.page;
		this.setUpGetRequest(this.params);
	};
	// 上划刷新发送请求
	Model.prototype.setUpGetRequest = function(params) {
	
		params.need_contract =1;
		var res = asCore.setGetFalse(interFace.clientList, params);
		if (res.code === 200) {
			if (res.data.data.length <= 0) {
				
			} else {
				var ListData = this.comp("ListData");
				ListData.loadData(res.data.data, true);
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
	Model.prototype.button16Click = function(event){
		justep.Shell.showPage("workRMain", {data:this.workinfo});
	};
	//删除客户
	Model.prototype.button3444Click = function(event){
		//获取删除的行数据
		//this.client_List_id这个是删除行的ID
		this.comp("popOver6").hide();
		this.comp("messageDialog1").show();
	};
	Model.prototype.messageDialog1OK = function(event){
		var params = {};
		params.id = this.client_List_id;
		var res = asCore.setGetFalse(interFace.removeClientList, params);
		if(res.code ==200){
			justep.Util.hint("客户数据删除成功");
			var ListData =this.comp("ListData");
			ListData.deleteData(ListData.getRowByID(this.client_List_id));
		}else{
			justep.Util.hint(res.message,{'type':'danger'});
		}
	};
	Model.prototype.button1Click = function(event){
//			ModifyClientInfo
		this.comp("popOver6").hide();
		justep.Shell.showPage("ModifyClientInfo", {id:this.client_List_id });
	};
	Model.prototype.button18Click = function(event){
		this.comp("popOver6").hide();
		var clientData = this.comp("ListData");
		var client_name = clientData.getValueByID("client_name",this.client_List_id );
		justep.Shell.showPage("clientSalesOrder", {id:this.client_List_id,name:client_name})
	};
	return Model;
});