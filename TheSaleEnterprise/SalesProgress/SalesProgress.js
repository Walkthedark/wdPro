define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/TheSaleEnterprise/SalesProgress/js/echarts.min");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.echarts();
		this.echarts2();
		this.echarts3();
		this.echarts4();
		this.echarts5();
		this.echarts6();
		this.echarts7();
		this.echarts8();
		this.echarts9();
		this.echarts10();
		this.echarts11();
		this.echarts12();

	};
	Model.prototype.echarts = function(event) {
		var myChart = echarts.init(document.getElementById('main'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '渠道占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '电商', '零售', ]
			},
			series : [ {
				name : '渠道占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '零售60%'
				}, {
					value : 38,
					name : '电商40%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts2 = function(event) {
		var myChart = echarts.init(document.getElementById('main2'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '品牌占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '福利口' ]
			},
			series : [ {
				name : '品牌占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '福利口100%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts3 = function(event) {
		var myChart = echarts.init(document.getElementById('main3'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '二渠道占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '福利口' ]
			},
			series : [ {
				name : '二渠道占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '福利口100%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts4 = function(event) {
		var myChart = echarts.init(document.getElementById('main4'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '品牌占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '大嘴猴', '舒爽', '梦工厂', '西部人', '蓝精灵', '广州酒家', ]
			},
			series : [ {
				name : '品牌占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 7,
					name : '大嘴猴7%'
				}, {
					value : 16,
					name : '舒爽16%'
				}, {
					value : 1,
					name : '梦工厂1%'
				}, {
					value : 41,
					name : '西部人41%'
				}, {
					value : 16,
					name : '舒爽1%'
				}, {
					value : 1,
					name : '蓝精灵1%'
				}, {
					value : 34,
					name : '广州酒家34%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts5 = function(event) {
		var myChart = echarts.init(document.getElementById('main5'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '渠道占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '电商', '零售', ]
			},
			series : [ {
				name : '渠道占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '零售60%'
				}, {
					value : 38,
					name : '电商40%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts6 = function(event) {
		var myChart = echarts.init(document.getElementById('main6'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '品牌占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '福利口' ]
			},
			series : [ {
				name : '品牌占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '福利口100%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts7 = function(event) {
		var myChart = echarts.init(document.getElementById('main7'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '二渠道占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '福利口' ]
			},
			series : [ {
				name : '二渠道占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '福利口100%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts8 = function(event) {
		var myChart = echarts.init(document.getElementById('main8'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '品牌占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '大嘴猴', '舒爽', '梦工厂', '西部人', '蓝精灵', '广州酒家', ]
			},
			series : [ {
				name : '品牌占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 7,
					name : '大嘴猴7%'
				}, {
					value : 16,
					name : '舒爽16%'
				}, {
					value : 1,
					name : '梦工厂1%'
				}, {
					value : 41,
					name : '西部人41%'
				}, {
					value : 16,
					name : '舒爽1%'
				}, {
					value : 1,
					name : '蓝精灵1%'
				}, {
					value : 34,
					name : '广州酒家34%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts9 = function(event) {
		var myChart = echarts.init(document.getElementById('main9'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '渠道占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '电商', '零售', ]
			},
			series : [ {
				name : '渠道占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '零售60%'
				}, {
					value : 38,
					name : '电商40%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts10 = function(event) {
		var myChart = echarts.init(document.getElementById('main10'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '品牌占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '福利口' ]
			},
			series : [ {
				name : '品牌占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '福利口100%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts11 = function(event) {
		var myChart = echarts.init(document.getElementById('main11'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '二渠道占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '福利口' ]
			},
			series : [ {
				name : '二渠道占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 62,
					name : '福利口100%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts12 = function(event) {
		var myChart = echarts.init(document.getElementById('main12'));
		// 指定图表的配置项和数据
		option = {
			title : {
				text : '品牌占比',
				x : 'left',
			},
			legend : {
				orient : 'vertical',
				left : 'left',
				data : [ '大嘴猴', '舒爽', '梦工厂', '西部人', '蓝精灵', '广州酒家', ]
			},
			series : [ {
				name : '品牌占比',
				type : 'pie',
				radius : '80%',
				center : [ '50%', '60%' ],
				data : [ {
					value : 7,
					name : '大嘴猴7%'
				}, {
					value : 16,
					name : '舒爽16%'
				}, {
					value : 1,
					name : '梦工厂1%'
				}, {
					value : 41,
					name : '西部人41%'
				}, {
					value : 16,
					name : '舒爽1%'
				}, {
					value : 1,
					name : '蓝精灵1%'
				}, {
					value : 34,
					name : '广州酒家34%'
				},

				],
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.modelModelConstructDone = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xsjd";
		// 101.销售进度—本月 地址：http://61.129.51.183:9986/index/mobile/xsjd
		asCore.xsjd(sendUrl, function(data) {
			debugger;
			self.comp("data1").loadData(data);
		});
	};
	Model.prototype.button3Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xsjdbj";
		// 102.销售进度—本季 地址：http://61.129.51.183:9986/index/mobile/xsjdbj
		asCore.xsjdbj(sendUrl, function(data) {
			self.comp("data1").loadData(data);
		});

	};
	Model.prototype.button14Click = function(event) {
		var self = this;
		var sendUrl = "/index/mobile/xsjdbn";
		// 103.销售进度—本年 地址：http://61.129.51.183:9986/index/mobile/xsjdbn
		asCore.xsjdbn(sendUrl, function(data) {
			self.comp("data1").loadData(data);
		});

	};
	return Model;
});