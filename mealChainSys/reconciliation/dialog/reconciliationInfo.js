define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var echarts = require("$UI/mealChainSys/common/echarts/echarts.common.min");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {

		var weatherIcons = {
			'Sunny' : './data/asset/img/weather/sunny_128.png',
			'Cloudy' : './data/asset/img/weather/cloudy_128.png',
			'Showers' : './data/asset/img/weather/showers_128.png'
		};

		var seriesLabel = {
			normal : {
				show : true,
				textBorderColor : '#333',
				textBorderWidth : 2
			}
		}

		option = {
			// title: {
			// text: 'Wheater Statistics'
			// },
			tooltip : {
				trigger : 'axis',
				axisPointer : {
					type : 'shadow'
				}
			},
			legend : {
				data : [ '收货金额', '退货金额', '小计' ]
			},
			grid : {
				left : 60
			},
			// toolbox: {
			// show: true,
			// feature: {
			// saveAsImage: {}
			// }
			// },
			xAxis : {
				type : 'value',
				name : '万元',
				axisLabel : {
					formatter : '{value}'
				}
			},
			yAxis : {
				type : 'category',
				inverse : true,
				data : [ '九台路' ],
				axisLabel : {
					formatter : function(value) {
						return '九台路';
					},
					margin : 20,
					rich : {
						value : {
							lineHeight : 30,
							align : 'center'
						},
						'九台路' : {
							height : 40,
							align : 'center',
							backgroundColor : {
								image : weatherIcons.Sunny
							},
						// data: [150,]

						},
					// '退货金额': {
					// height: 40,
					// align: 'center',
					// backgroundColor: {
					// image: weatherIcons.Cloudy
					// },
					// // data: [150,]
					// },
					// '小计': {
					// height: 40,
					// align: 'center',
					// backgroundColor: {
					// image: weatherIcons.Showers
					// },
					// // data: [150,]
					// }
					}
				}
			},
			series : [ {
				name : '收货金额',
				type : 'bar',
				data : [ 165, ],
				label : seriesLabel,
				itemStyle : {  
                normal : {  
                    color:'#86B1D6',  
                    lineStyle:{  
                        color:'#86B1D6'  
                    }  
                }  
            },  
				markPoint : {
					symbolSize : 1,
					symbolOffset : [ 0, '50%' ],
					label : {
						normal : {
							formatter : '{a|{a}\n}{b|{b} }{c|{c}}',
							backgroundColor : 'rgb(242,242,242)',
							borderColor : '#aaa',
							borderWidth : 1,
							borderRadius : 4,
							padding : [ 4, 10 ],
							lineHeight : 26,
							// shadowBlur: 5,
							// shadowColor: '#000',
							// shadowOffsetX: 0,
							// shadowOffsetY: 1,
							position : 'right',
							distance : 20,
							rich : {
								a : {
									align : 'center',
									color : '#fff',
									fontSize : 18,
									textShadowBlur : 2,
									textShadowColor : '#000',
									textShadowOffsetX : 0,
									textShadowOffsetY : 1,
									textBorderColor : '#333',
									textBorderWidth : 2
								},
								b : {
									color : '#333'
								},
								c : {
									color : '#ff8811',
									textBorderColor : '#000',
									textBorderWidth : 1,
									fontSize : 22
								}
							}
						}
					},
					data : [ {
						type : 'max',
						name : 'max days: '
					}, {
						type : 'min',
						name : '收货金额: '
					} ]
				}
			}, {
				name : '退货金额',
				type : 'bar',
				itemStyle : {  
                normal : {  
                    color:'#F5C058',  
                    lineStyle:{  
                        color:'#F5C058'  
                    }  
                }  
            },  
				label : seriesLabel,
				data : [ 150, ]
			}, {
				name : '小计',
				type : 'bar',
				label : seriesLabel,
				data : [ 220, ]
			} ]
		};

		var chart = echarts.init(this.getElementByXid("div6"));
		chart.setOption(option, true);

	};

	Model.prototype.div6Click = function(event){
		justep.Shell.showPage("gongYingsXianx");
	};

	return Model;
});