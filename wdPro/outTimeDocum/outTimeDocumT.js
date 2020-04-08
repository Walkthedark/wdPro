define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.documentary_id = "";// 获取行跟单ID
		this.tag_Name = "";// 获取跟单阶段
		this.client_cate_id = "";// 客户分类ID
		this.AreaId = "";// 销售区域ID
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		// 参数
		this.params = {};
	};

	Model.prototype.settlementClick = function(event) {

	};

	Model.prototype.button4Click = function(event) {
		this.comp("popOver8").show();
		this.comp("popOver9").hide();
		this.comp("popOver11").hide();
		this.comp("popOver12").hide();

	};

	Model.prototype.button5Click = function(event) {
		this.comp("popOver8").hide();
		this.comp("popOver9").show();// 2
		this.comp("popOver11").hide();
		this.comp("popOver12").hide();
	};

	Model.prototype.button6Click = function(event) {
		this.comp("popOver8").hide();
		this.comp("popOver9").hide();
		this.comp("popOver11").show();// 3
		this.comp("popOver12").hide();
	};

	Model.prototype.button7Click = function(event) {
		this.comp("popOver12").show();
		this.comp("popOver8").hide();
		this.comp("popOver9").hide();
		this.comp("popOver11").hide();
	};

	Model.prototype.div9Click = function(event) {
		this.comp("popOver6").show();
	};

	// 获取跟单列表
	Model.prototype.ListDataCustomRefresh = function(event) {
		var params = {};
		params.overdue =1;
		var res = asCore.setGetFalse(interFace.salesOrder, params);
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
			justep.Util.hint("跟单列表加载失败");
		}
	};
	// 新增跟单//
	Model.prototype.addSalesOrderClick = function(event) {
		justep.Shell.showPage("addSalesOrder");
	};
	//
	Model.prototype.div5Click = function(event) {
		var row = event.bindingContext.$object;
		this.documentary_id = row.val("documentary_id");
		this.comp("popOver6").show();
		event.stopPropagation();
	};
	// 修改跟单状态
	Model.prototype.button15Click = function(event) {
		this.comp("popOver6").hide();
		this.comp("TagWinDialog").open();
	};
	// 跟单阶段
	Model.prototype.setTag = function(params) {
		var para = {};
		para.stage = params.Name;
		para.documentary_id = this.documentary_id;
		var res = asCore.setPostFalse(interFace.editDocumentary, para);
		if (res.code === 200) {
			justep.Util.hint("跟单状态修改成功");
		} else {
			justep.Util.hint("跟单状态修改失败");
		}
	};
	// 未变化原因
	Model.prototype.button16Click = function(event) {
		this.comp("popOver6").hide();
		this.comp("popOver4").show();
	};
	// 提交
	Model.prototype.col8Click = function(event) {
		justep.Util.hint("暂未开发");
	};
	// 修改
	Model.prototype.button17Click = function(event) {
		justep.Shell.showPage("editSalesOrder", {
			id : this.documentary_id
		})
	};
	// 删除
	Model.prototype.button25Click = function(event) {
		// 获取
		this.comp("popOver6").hide();
		this.comp("messageDialog").show();
	};
	Model.prototype.messageDialogOK = function(event) {
		var params = {};
		params.id = this.documentary_id;
		var res = asCore.setPostFalse(interFace.del_documentary, params);
		if (res.code === 200) {
			var ListData = this.comp("ListData");
			ListData.deleteData(ListData.getRowByID(this.documentary_id));
			justep.Util.hint("跟单删除成功");
		} else {
			justep.Util.hint("跟单删除失败");
		}
	};
	// 行点击事件
	Model.prototype.div4Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("documentary_id");
		justep.Shell.showPage("infoSalesOrder", {
			id : id
		});
		event.stopPropagation();
	};
	// 跟单阶段确定
	Model.prototype.button8Click = function(event) {
		if (this.tag_Name != "") {
			var params = {};
			params.stage_id = this.tag_Name;
			this.params  = params;
			this.seachSetGetparams(params);
		} else {
			justep.Util.hint("请选择跟单阶段");
		}
	};
	// 获取tagData数据
	Model.prototype.tagListDataCustomRefresh = function(event) {
		var params = {};
		// getStage
		var res = asCore.setGetFalse(interFace.getStage, params);
		if (res.code == 200) {
			this.comp("tagListData").loadData(res.data, false);
		} else {
			justep.Util.hint("跟单阶段获取失败");
		}
		// this.comp("tagListData").loadData(params, false);
	};
	// 改变事件获取值
	Model.prototype.radio1Change = function(event) {
		var row = event.bindingContext.$object;
		this.tag_Name = row.val("stage_id");
		this.comp("popOver8").hide();
	};
	// 搜索发送请求
	Model.prototype.seachSetGetparams = function(params) {
		params.overdue = 1;
		var res = asCore.setGetFalse(interFace.salesOrder, params);
		if (res.code === 200) {
			if (res.data.data.length <= 0) {
				justep.Util.hint("未搜到任何相关数据");
			} else {
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
			}
		} else {
			justep.Util.hint("搜索失败");
		}
	};
	// 创建人搜索确定
	Model.prototype.button10Click = function(event) {
		var nameInpVue = this.comp("nameInp").val();
		var params = {};
		params.create_staff = nameInpVue;
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		this.params  = params;
		this.seachSetGetparams(params);
		this.comp("popOver9").hide();
	};

	// 获取客户分类
	Model.prototype.dataJasonCustomRefresh = function(event) {
		var params = {};
		var res = asCore.setGetFalse(interFace.getClientSearchData, params);
		if (res.code == 200) {
			this.comp("categoryData").loadData(res.data.category.list, false);
		} else {
			justep.Util.hint("过滤条件加载失败");
		}
	};

	// 分类确定搜索
	Model.prototype.button33Click = function(event) {
		var params = {};
		params.client_cate_id = this.client_cate_id;
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		this.params  = params;
		this.seachSetGetparams(params);
		this.comp("popOver11").hide();
	};
	// 分类搜索获取值改变事件
	Model.prototype.radio7Change = function(event) {
		var row = event.bindingContext.$object;
		this.client_cate_id = row.val("id");
	};
	// 更多搜索
	Model.prototype.button36Click = function(event) {
		var params = {};
		if (this.comp("checkbox1").val() == 1) {// 获取超期未变化的跟单
			params.overdue = 1;
		}
		if (this.AreaId != "") {
			params.region_id = this.AreaId;// 获取销售区域}
		}
		var Sta_EndDate = [];
		var staDate = this.comp("input5").val();
		if (staDate != "" ) {
			Sta_EndDate.push(staDate);
			var endDate = this.comp("input6").val();
			if (endDate != "") {
				Sta_EndDate.push(endDate);
				params.create_at = Sta_EndDate;
			}else{
				justep.Util.hint("请选择结束时间");
				return;
			}
		}
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		this.params  = params;
		this.seachSetGetparams(params);
		this.comp("popOver12").hide();
	};
	// 打开销售区域
	Model.prototype.button37Click = function(event) {
		justep.Shell.showPage("salesAreaChoose", {
			data : {
				method : this
			}
		});
	};
	// 获取销售区域
	Model.prototype.getAreaParams = function(params) {
		this.comp("input3").val(params.Name);
		this.AreaId = params.ID;
	};
	//上划刷新
	Model.prototype.scrollView1PullUp = function(event){
		this.params.page = this.page;
		this.upSetGetparams(this.params);
	};
	// 搜索发送请求
	Model.prototype.upSetGetparams = function(params) {
	params.overdue =1;
		var res = asCore.setGetFalse(interFace.salesOrder, params);
		if (res.code === 200) {
			if (res.data.data.length <= 0) {
				justep.Util.hint("未加载到相关数据");
			} else {
				var ListData = this.comp("ListData");
				ListData.loadData(res.data.data, false);
				if (this.page == 1) {
					if (res.data.pager.total <= res.data.pager.pageSize) {
						this.total = 1;
					} else {
						this.total = Math.ceil(res.data.pager.total / res.data.pager.pageSize);
					}
				}
				this.page += 1;
			}
		} else {
			justep.Util.hint("数据加载失败");
		}
	};
	//跟单标题
	Model.prototype.button41Click = function(event){
		var title = this.comp("titleInp").val();
		var params = {};
		params.title = title;
		this.page = 1;// 当前页数
		this.total = 0;// 总页数q
		this.params  = params;
		this.seachSetGetparams(params);
	};
	
	return Model;
});