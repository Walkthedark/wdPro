define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/TheSaleEnterprise/SalesProgress/js/echarts.min");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		this.getaAreaList();
		this.getData();
	};
	Model.prototype.getaAreaList = function() {
		var self = this;
		var sendUrl = "/index/mobile/getallfenqu";
		var areaList = this.comp("areaList");
		var data = {};
		asCore.getallfenqu(sendUrl, data, function(data) {
			areaList.loadData(data);
		});
	}
	Model.prototype.echarts = function(num) {
		var myChart = echarts.init(document.getElementById('gauge1'));
		// 指定图表的配置项和数据
		var option = {
			title : {
				text : '销售达成率',
				x : 'left',
			},
			toolbox : {
				feature : {
					restore : {},
					saveAsImage : {}
				}
			},
			series : [ {
				name : '业务指标',
				type : 'gauge',
				radius : '100%',
				detail : {
					formatter : '{value}%'
				},
				data : [ {
					value : num
				} ]
			} ]
		};

		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};
	Model.prototype.echarts2 = function(num) {
		var myChart = echarts.init(document.getElementById('gauge2'));
		// 指定图表的配置项和数据
		var option = {
			title : {
				text : '费用使用率',
				x : 'left',
			},
			toolbox : {
				feature : {
					restore : {},
					saveAsImage : {}
				}
			},
			series : [ {
				name : '业务指标',
				type : 'gauge',
				radius : '100%',
				detail : {
					formatter : '{value}%'
				},
				data : [ {
					value : num
				} ]
			} ]
		};
		// 使用刚指定的配置项和数据显示图表。
		myChart.setOption(option);
	};

	Model.prototype.cDateValueChanged = function(event) {
		this.getData();
	};
	Model.prototype.getData = function() {
		var self = this;
		var area = this.comp("cDate").getValue("area");
		var pDate = this.comp("pDate");
		var data = {};
		if (asCore.isNull(area)) {
			data.fenqu = area;
		} else {
			data.fenqu = 1;
		}
		var sendUrl = "/index/mobile/fenqujindu";
		asCore.fenqujindu(sendUrl, data, function(data) {
			pDate.newData({
				"defaultValues" : [ {
					"zid" : asCore.isNull(data.zid),
					"ztitle" : asCore.isNull(data.ztitle),
					"target" : asCore.isNull(data.target),
					"yizhi" : asCore.isNull(data.yizhi),
					"dacheng" : asCore.isNull(data.dacheng),
					"yusuan" : asCore.isNull(data.yusuan),
					"sjfyl" : asCore.isNull(data.sjfyl),
					"yjfyl" : asCore.isNull(data.yjfyl),
					"xsdcl" : asCore.isNull(data.xsdcl),
					"fysyl" : asCore.isNull(data.fysyl),
				} ]
			});
			self.echarts(data.xsdcl * 100);
			self.echarts2(data.fysyl * 100);
		});

	}
	Model.prototype.output3Render = function(event) {
		event.html = "（预计费用率：" + event.value + "）";
	};
	Model.prototype.output4Render = function(event) {
		event.html = "（实际费用率：" + event.value + "）";
	};
	return Model;
});