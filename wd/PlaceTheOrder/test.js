define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	// require("$UI/wd/PlaceTheOrder/tagTree/js/tagTree");
	require('css!$UI/wd/PlaceTheOrder/tagTree/css/tagTree').load();
	var Model = function() {
		this.callParent();
		this.page = 1;// 当前页数
		this.pageTotal = 0;// 总页数
		this.c_id = "";// 记录下分类ID
	};
	var self = this;
	Model.prototype.categoryDataCustomRefresh = function(event) {
		// var params = {};
		// var res = asCore.setGetFalse(inFace.Category, params);
		// if (res.code === 200) {
		// var categoryData = this.comp("categoryData");
		// categoryData.loadData(res.data, false);
		// } else {
		// justep.Util.hint(res.message);
		// }
		// ;
	};

	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		// var name = "#"+row.val("cate_id")+row.val("cate_name");
		// console.log(event);

	};
	function getGoodsList(id) {

	}
	Model.prototype.modelLoad = function(event) {
		this.page = 1;
		this.pageTotal = 0;
		var params = {};
		var res = asCore.setGetFalse(inFace.Category, params);
		if (res.code === 200) {
			this.tagTree({
				id : "",
				data : res.data,
				fold : false,
				multiple : false,
				check : function(val) {
					console.log($(this).tagTreeValues());
				},
				done : function() {
					console.log('tagTree is ok!');
				},
				click : function(val) {
					console.log("fff")
				},
			});
			// 掉取分类商品
			if (res.data.length > 0) {// 判断大于
				var cate_id = res.data[0].cate_id;// 获取分类的值
				// MICHEAL 注释end
				var params = {};
				params.cate_id = cate_id;
				this.c_id = cate_id;
				var res = asCore.setGetFalse(inFace.goodsList, params);
				if (res.code === 200) {
					var goodsDataM = this.comp("goodsDataM");
					goodsDataM.loadData(res.data.data, false);
					if (this.page == 1) {// 第一次加载
						this.page += 1;
						var total = res.data.pager.total;
						this.pageTotal = total % 20 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;// 获取总页数
					}
				} else {
					justep.Util.hint(res.message);
				}
				;
			} else {

			}
		}
	};
	Model.prototype.button1Click = function(id) {
		console.log("我的一个好人")
		self.comp("categoryData").loadData([], false);
	};
	// (function($){

	var defaults = {
		id : "",
		data : [],
		fold : true,
		multiple : false,
		check : function() {
		},
		click : function() {
			console.log("gg")
		},
		done : function() {
		}
	};
	Model.prototype.delData = function(id) {
		this.page = 1;// 当前页数
		this.pageTotal = 0;// 总页数
		if (id != null || id != "") {
			this.c_id = id;
			// 掉取获取分类的商品数据
			var cate_id = id;// 获取分类的值
			// MICHEAL 注释end
			var params = {};
			params.cate_id = cate_id;
			var res = asCore.setGetFalse(inFace.goodsList, params);
			if (res.code === 200) {
				var goodsDataM = this.comp("goodsDataM");
				goodsDataM.loadData(res.data.data, false);
				if (this.page == 1) {// 第一次加载
					this.page += 1;
					var total = res.data.pager.total;
					this.pageTotal = total % 20 == 0 ? parseInt(total / 10) : parseInt(total / 10) + 1;// 获取总页数
				}
			} else {
				justep.Util.hint(res.message);
			}
			;
		} else {
			justep.Util.hint("数据出现未知错误", {
				type : "info"
			});
		}
	};
	Model.prototype.tagTree = function(options) {
		var slef = this;
		var that = $("#test");
		options.id = "#" + that.attr("id");
		var opts = $.extend(defaults, options);
		that.addClass("tagtree");
		this.setTree(defaults.data, $("#test"));
		$(defaults.id + ' li:has(ul)').addClass('li-top');
		if (defaults.fold)
			$(defaults.id + " .li-top li").hide('fast');
		$(defaults.id + ' li.li-top > span').on('click', function(e) {
			var child = $(this).parent('li.li-top').find(' > ul > li');
			if (child.is(":visible")) {
				child.hide('fast');
				var dia = this.getElementsByTagName("i")[0].getAttribute('name');
				slef.delData(dia);
			} else {
				var dia = this.getElementsByTagName("i")[0].getAttribute('name');
				child.show('fast');
				slef.delData(dia);
			}
			return false;
		});
		$(defaults.id + ' li span').hover(function() {
			if (!$(this).find('i').hasClass('i-check'))
				$(this).find('i').show(200);
		}, function() {
			if (!$(this).find('i').hasClass('i-check'))
				$(this).find('i').hide(100);
		});
		$(defaults.id + ' li span i').click(function(event) {
			if (!defaults.multiple) {
				$(defaults.id + " .i-check").removeClass('i-check').hide(100);
			}
			if ($(this).hasClass('i-check'))
				$(this).removeClass('i-check');
			else
				$(this).addClass('i-check');
			defaults.check($(this).attr("data-val"));

			return false;
		});
		$(defaults.id + ' li').click(function(event) {
			return false;
		});
		defaults.done();
	};
	Model.prototype.tagTreeValues = function() {
		var vals = [];
		$(defaults.id + " .i-check").each(function(index, el) {
			vals.push($(el).attr('data-val'));
		});
		return vals;
	};
	// 递归生成树
	Model.prototype.setTree = function(data, that) {
		self = this;
		var ul = $('<ul></ul>');
		that.append(ul);
		$.each(data, function(index, value) {
			var li = $('<li  onclick="justep.Bind.contextFor(this).$model.delData(' + value.cate_id + ')" ><span>' + value.cate_name + '<i  name=' + '\'' + value.cate_id + '\''
					+ 'class="fa fa-check" style="display:none;">' + '</i></span></li>');
			ul.append(li);
			if (value.child != null) {
				if (value.child.length > 0) {
					self.setTree(value.child, li);
				}
			}

		});
	};
	// 获取的准备跳转
	Model.prototype.li2Click = function(event) {
		var row = event.bindingContext.$object;// 获取行数据
		var goods_id = row.val("goods_id");
		var specification_id = row.val("specification_id");
		justep.Shell.showPage("productDetail", {
			goods_id : goods_id,
			specification_id : specification_id
		});
	};
	// 上划加载
	Model.prototype.scrollView1PullUp = function(event) {
		if (this.pageTotal < this.page) {
			return;
		}
		this.upGetLoadData(event);
	};
	Model.prototype.upGetLoadData = function(event) {
		if (this.c_id != null || this.c_id != "") {
			// 掉取获取分类的商品数据
			var cate_id = this.c_i;// 获取分类的值
			// MICHEAL 注释end
			var params = {};
			params.cate_id = cate_id;
			params.page = this.page;
			var res = asCore.setGetFalse(inFace.goodsList, params);
			if (res.code === 200) {
				var goodsDataM = this.comp("goodsDataM");
				goodsDataM.loadData(res.data.data, true);
				this.page += 1;
			} else {
				justep.Util.hint(res.message);
			}
			;
		} else {
			justep.Util.hint("数据出现未知错误", {
				type : "info"
			});
		}
	};
	return Model;

});
;