define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var common = require("$UI/wd/public/js/common");
	var Model = function() {
		this.callParent();
		this.keyValue = "";
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.modelParamsReceive = function(event) {
		/*
		 * 1、接收上页传来参数、显示在搜索框中、参数不变不刷新
		 */
//		if (this.params != undefined) {
//			if (this.keyValue != this.params.keyValue) {
//				this.keyValue = this.params.keyValue;
//				this.comp("keyInput").val(this.keyValue);
//				this.comp("goodsData").refreshData();
//			}
//		}
	};

	// 获取商品列表
	Model.prototype.goodsDataCustomRefresh = function(event) {
		/*
		 * 1、加载商品数据 2、接收传入的参数，过滤数据
		 */
		var url = require.toUrl("./list/json/goodsData.json");
		var goodsData = event.source;
		goodsData.clear();
		$.ajaxSettings.async = false;
		$.getJSON(url, function(data) {
			goodsData.loadData(data);
		});
	};

	// 商品点击事件
	Model.prototype.listClick = function(event) {
		/*
		 *1、获取当前商品ID 2、传入弹出窗口，弹出窗口中显示商品详细信息 3、在弹出窗口的接收事件中，从服务端过滤数据		
 		 *显示页面代码如下：
		 *var data = this.comp("goodsData");
		 *justep.Shell.showPage("detail", {
		 *	goodsID : data.getValue("id"),
		 *	shopID : data.getValue("fShopID")
		 *});
		*/
	};

	// 搜索
	Model.prototype.searchBtnClick = function(event) {
		/*
		 *1、进入搜索页面		
		 *显示页面代码如下：
		 *justep.Shell.showPage("search");
		*/
	};

	// 修改列表样式图标
	Model.prototype.listStyleClick = function(event) {
		/*
		 * 1、切换下一个页面
		*/
		this.comp('pages').next();
	};
	
	Model.prototype.pagesActiveChanged = function(event) {
		/*
		 * 1、页面变化完成事件 2、根据页面索引修改按钮图标
		 */
		var btnObj = this.comp("listStyleBtn");
		var index = this.comp("pages").getActiveIndex();
		if (index == "0") {
			btnObj.set("icon", "glyphicon glyphicon-th-list");
		} else {
			btnObj.set("icon", "glyphicon glyphicon-th-large");
		}
	};
	/* 选择排序按钮 */
	Model.prototype.sortingBtnClick = function(event) {
		
		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		} else {
			this.comp("sortingPopOver").show();
			
		}

		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		}
	};
	/* 选择排序 */
	Model.prototype.sortingListClick = function(event) {
		/*
		 * 1、排序点击事件 2、修改当前排序 3、关闭排序窗口
		 */
		var data = this.comp("conditionData");
		data.setValue("fState", "0", data.find([ "fState" ], [ "1" ], true, true, true)[0]);
		var row = data.getCurrentRow();
		data.setValue("fState", "1", row);
		this.comp("sortingBtn").set("label", data.getValue("fName", row));

		this.comp("sortingPopOver").hide();
	};

	/* 折扣和服务按钮 */
	Model.prototype.screeningBtnClick = function(event) {
		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		} else {
			this.comp("screeningPopOver").show();
			this.getElementByXid("div9").style.marginTop="-227px";
		}
		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		}
	};

	/* 折扣和服务 */
	Model.prototype.discountClick = function(event) {
		/*
		 * 1、折扣和服务点击事件 2、选择折扣和服务，可多选
		 */
		var data = this.comp("discountData");
		var row = data.getCurrentRow();
		if (data.getValue("fState", row) == 0) {
			data.setValue("fState", "1", row);
		} else {
			data.setValue("fState", "0", row);
		}
	};

	/* 分类 */
	Model.prototype.classClick = function(event) {
		/*
		 * 1、分类点击事件 2、选择分类，单选
		 */
		var data = this.comp("classData");
		data.setValue("fState", "0", data.find([ "fState" ], [ "1" ], true, true, true)[0]);
		var row = data.getCurrentRow();
		data.setValue("fState", "1", row);
	};

	/* 重置 */
	Model.prototype.resetBtnClick = function(event) {
		/*
		 * 1、重置按钮点击事件 2、清空价格区间、折扣和服务、分类
		 */
		this.comp("price1").val("");
		this.comp("price2").val("");
		this.reset(this.comp("discountData"));
		this.reset(this.comp("classData"));
	};
	Model.prototype.reset = function(data) {
		var rows = data.find([ "fState" ], [ "1" ], false, true, true);
		for (var i = 0; i < rows.length; i++) {
			data.setValue("fState", "0", rows[i]);
		}
	};

	Model.prototype.modelLoad = function(event) {
		/*
		 * 判断html标签是否有iosstatusbar,有测表示在苹果手机上运行，顶部需要留出20px，因此修改popover的top
		 */
		var src = $("html").hasClass("iosstatusbar");
		if (src) {
			$(".x-popOver-overlay").css({
				"top" : "108px"
			});
		}
		/*
		 * 切换到缓存中保存的content
		 */
		var pagename = localStorage.getItem("list_style_name");
		if (pagename == null) {
			pagename = "oneColList";
		}
		this.comp("pages").to(pagename);
	};

	// 离开页面事件
	Model.prototype.modelUnLoad = function(event) {
		/*
		 * 将当前激活的content的Xid存入缓存
		 */
		localStorage.setItem("list_style_name", this.comp("pages").getActiveXid());
	};

	Model.prototype.returnGoodsBtnClick = function(event){
		if ($(this.comp("selectReturnPopOver").$domNode).css("display") == "block") {
			this.comp("selectReturnPopOver").hide();
		} else {
			this.comp("selectReturnPopOver").show();
			this.getElementByXid("div13").style.top="0px";
			this.getElementByXid("div17").style.left="50px";
			this.getElementByXid("div17").style.top="0px";
			this.getElementByXid("div17").style.maxHeight="100%";
		}
		if ($(this.comp("sortingPopOver").$domNode).css("display") == "block") {
			this.comp("sortingPopOver").hide();
		}
		
		if ($(this.comp("screeningPopOver").$domNode).css("display") == "block") {
			this.comp("screeningPopOver").hide();
		}
	};

	Model.prototype.button15Click = function(event){
		this.comp("selectReturnPopOver").hide();
		justep.Shell.showPage("returnGoodsList");
		
	};

	Model.prototype.addClick = function(event){
		var inputVal =  Number(this.comp("returnCount").val());
		this.comp("returnCount").set("value",common.add(inputVal));
	};
	

	Model.prototype.reduceClick = function(event){
		var inputVal =  Number(this.comp("returnCount").val());
		this.comp("returnCount").set("value",common.reduce(inputVal));
	};
	

	return Model;
});