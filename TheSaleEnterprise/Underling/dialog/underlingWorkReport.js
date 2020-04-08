define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.data;
		this.id;
	};

	Model.prototype.modelLoad = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xsgzrb";
		var workData = this.comp("workData");
		var data = {};
		// 17.网点拜访列表 地址：http://61.129.51.183:9986/index/mobile/wdbflb
		asCore.xsgzrb(sendUrl, data, function(data) {
			debugger;
			workData.loadData(data);
			self.data = data;
		});
	};

	Model.prototype.plImageClick = function(event) {
		this.comp("popOver3").show();
	};

	Model.prototype.button6Click = function(event) {
		this.comp("popOver3").hide();
		this.comp("popOver2").show();
	};

	Model.prototype.button9Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		this.id = id;
		this.comp("popOver3").show();
	};

	Model.prototype.button4Click = function(event) {
		this.comp("newDialog").open();
	};

	Model.prototype.output2Render = function(event) {
		var row = event.bindingContext.$object;
		var em_id = row.val("em_id");
		var Em_bm = row.val("Em_bm");
	};
	Model.prototype.button5Click = function(event) {
		var id = this.id;
		// 日报点赞 地址：http://61.129.51.183:9986/index/mobile/rbdz
		var sendUrl = "/index/mobile/rbdz";
		asCore.sendPostDZ(sendUrl, id, function(data) {
			if (data.success == 1) {
				justep.Util.hint("点赞成功！");
			} else {
				justep.Util.hint("点赞失败！");
			}
		});
	};

	Model.prototype.button7Click = function(event) {
		var id = this.id;
		// 9.日报评论 地址：http://61.129.51.183:9986/index/mobile/rbpl
		var sendUrl = "/index/mobile/rbpl";
		var content = this.comp("input1").val();
		asCore.sendPostRBPL(sendUrl, id, content, function(data) {
			debugger
			if (data.success == 1) {
				justep.Util.hint("评论成功！");
			} else {
				justep.Util.hint("评论失败！");
			}
		})
		this.comp("popOver2").hide();
	};
	Model.prototype.button2Click = function(event) {
		var filter = $("#MyReportQuery").val();
		if (filter.length > 0) {
			var NewList = [];
			var rows = this.data;
			for (i = 0; i < rows.length; i++) {
				var em_id = rows[i].em_id;
				var em_bm = rows[i].em_bm;
				var rq = rows[i].rq;
				if (em_id.toString().indexOf(filter) >= 0) {
					NewList.push(rows[i]);
				} else if (em_bm.toString().indexOf(filter) >= 0) {
					NewList.push(rows[i]);
				} else if (rq.toString().indexOf(filter) >= 0) {
					NewList.push(rows[i]);
				}
			}
			this.comp("workData").loadData(NewList);
		} else {
			this.comp("workData").loadData(this.data);
		}
	};
	return Model;
});