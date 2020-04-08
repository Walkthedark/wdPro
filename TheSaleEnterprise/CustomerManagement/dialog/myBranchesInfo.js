define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/TheSaleEnterprise/SalesProgress/js/echarts.min");
	var Model = function() {
		this.callParent();
		this.id;
	};
	Model.prototype.modelLoad = function(event) {
		this.xiaoliang();
	};
	Model.prototype.xiaoliang = function(event) {
		// 基于准备好的dom，初始化echarts实例
		var myChart = echarts.init(document.getElementById('main'));

		// 指定图表的配置项和数据
		var option = {
			title : {
				text : '销量-零售数据',
				x : "center"
			},
			xAxis : {
				data : [ "衬衫", "羊毛衫", "雪纺衫", "裤子", "高跟鞋", "袜子" ]
			},
			yAxis : {},
			series : [ {
				name : '销量',
				type : 'bar',
				data : [ 5, 20, 36, 10, 10, 20 ]
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	// 条码查看详情
	Model.prototype.button2Click = function(event) {
		this.comp("barInfoDialog").open({
			data : {
				id : this.id
			}
		});
	};
	// 采集
	Model.prototype.button3Click = function(event) {
		this.comp("collectDialog").open({
			data : {
				id : this.id
			}
		});
	};
	// 数据采集
	Model.prototype.button4Click = function(event) {
		this.comp("branchesCollectDialog").open({
			data : {
				id : this.id
			}
		});
	};
	// 网点修改
	Model.prototype.button5Click = function(event) {
		this.comp("updateDialog").open({
			data : {
				id : this.id
			}
		});
	};
	// 竞品详情
	Model.prototype.button8Click = function(event) {
		this.comp("competingGoodsDialog").open({
			data : {
				"net_id" : this.id
			}
		});
	};
	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/netzlxq";
		var orderData = this.comp("CData");
		var person = this.comp("person");
		var data = {};
		data.id = id;
		asCore.netzlxq(sendUrl, data, function(data) {
			person.loadData(asCore.isNull(data.lianxiren))
			orderData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"sn" : asCore.isNull(data.sn),
					"net" : asCore.isNull(data.net),
					"jxs" : asCore.isNull(data.jxs),
					"sys" : asCore.isNull(data.sys),
					"mysn" : asCore.isNull(data.mysn),
					"cat" : asCore.isNull(data.cat),
					"grade" : asCore.isNull(data.grade),
					"iskey" : asCore.isNull(data.iskey),
					"guide" : asCore.isNull(data.guide),
					"area" : asCore.isNull(data.area),
					"cashiers" : asCore.isNull(data.cashiers),
					"shelf_num" : asCore.isNull(data.shelf_num),
					"addr" : asCore.isNull(data.addr),
					"breif" : asCore.isNull(data.breif),
					"starttime" : asCore.isNull(data.starttime),
					"competitor" : asCore.isNull(data.competitor),
					"jinchang" : asCore.isNull(data.jinchang),
					"dg" : asCore.isNull(data.dg),
				} ]
			});
		});
	};
	return Model;
});