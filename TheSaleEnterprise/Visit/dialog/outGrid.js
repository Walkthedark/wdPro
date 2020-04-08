define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
		this.id;
		this.wdid;
		this.wdmc;
		this.bfmb;
	};
	// 签到
	Model.prototype.col15Click = function(event) {
		// 19.网点拜访签到 地址：http://61.129.51.183:9986/index/mobile/wdbfqd
		this.comp("signInDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 签退
	Model.prototype.col64Click = function(event) {
		this.comp("signBackDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 导购检查
	Model.prototype.col18Click = function(event) {
		this.comp("shopDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 市场活动
	Model.prototype.col22Click = function(event) {
		justep.Util.hint("本网点当前无市场活动需要检查");
	};
	/*
	 * { "type: {string} 提示类型，取值范围：info、success、warning、danger，缺省：info "delay" :
	 * {integer} 自动关闭时间，单位为：毫秒，缺省：3000 "parent": {DomNode} 父容器，缺省：body，使用jquery
	 * selector来设置或jquery对象，如"#abc" ".abc" "position": {string}
	 * 显示位置，取值范围：top、middle、bottom，缺省：top "style": {string} css样式，增加的自定义样式 }
	 */

	// 物料检查
	Model.prototype.col28Click = function(event) {
		this.comp("materialDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 货架
	Model.prototype.col25Click = function(event) {
		this.comp("shelvesDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 产品检查
	Model.prototype.col33Click = function(event) {
		this.comp("goodsDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};

	// 库存
	Model.prototype.col40Click = function(event) {
		this.comp("inventoryDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 销量汇报
	Model.prototype.col37Click = function(event) {
		this.comp("salesDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 订单
	Model.prototype.col45Click = function(event) {
		this.comp("orderDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid,
				wdmc : this.wdmc
			}
		});
	};
	// 竞品
	Model.prototype.col52Click = function(event) {
		this.comp("competingGoodsDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 拜访小结
	Model.prototype.col49Click = function(event) {
		this.comp("visitSummaryDialog").open({
			data : {
				id : this.id,
				wdid : this.wdid
			}
		});
	};
	// 协同拜访
	Model.prototype.col57Click = function(event) {
		this.comp("synergyVisitDialog").open();
	};
	Model.prototype.wReceiverReceive = function(event) {
		this.wdid = event.data.wdid;
		this.id = event.data.id;
		this.wdmc = event.data.wdmc;
		this.bfmb = event.data.bfmb;
		$("#" + this.getIDByXID("span5")).html(event.data.wdmc);
		$("#" + this.getIDByXID("span1")).html("拜访目标：" + event.data.bfmb);
	};
	return Model;
});