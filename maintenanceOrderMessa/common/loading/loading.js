define(function(require) {
	var $ = require("jquery");
	require("$UI/maintenanceOrderMessa/common/loading/js/loading");
	require("css!$UI/maintenanceOrderMessa/common/loading/css/animate").load();
	require("css!$UI/maintenanceOrderMessa/common/loading/css/global").load();
	require("css!$UI/maintenanceOrderMessa/common/loading/css/loading").load();
	var fn = {
		loadingStart1 : function() {
			$('body').loading({
				loadingWidth : 240,
				title : '请稍等!',
				name : 'test',
				discription : '描述描述描述描述',
				direction : 'column',
				type : 'origin',
				// originBg:'#71EA71',
				originDivWidth : 40,
				originDivHeight : 40,
				originWidth : 6,
				originHeight : 6,
				smallLoading : false,
				loadingMaskBg : 'rgba(0,0,0,0.2)'
			});
		},
		loadingStart5 : function() {
			$('body').loading({
				loadingWidth : 240,
				loadingHeight : 50,
				title : '拼命加载中...',
				name : 'test',
				animateIn : 'none',
				discription : '这是一个描述...',
				direction : 'row',
				type : 'origin',
				mustRelative : true,
				originBg : '#FAF9FB',
				originDivWidth : 30,
				originDivHeight : 30,
				originWidth : 4,
				originHeight : 4,
				smallLoading : false,
				titleColor : '#FAF9FB',
				loadingBg : '#797979',
				loadingMaskBg : 'rgba(22,22,22,0.2)'
			});
		},

		loadingStart3 : function() {
			$('body').loading({
				loadingWidth : 120,
				loadingHeight : 100,
				title : '',
				name : 'test',
				discription : '数据加载中...',
				direction : 'column',
				type : 'origin',
				// originBg:'#71EA71',
				originDivWidth : 40,
				originDivHeight : 40,
				originWidth : 6,
				originHeight : 6,
				smallLoading : false,
				loadingMaskBg : 'rgba(0,0,0,0.2)'
			});
		},
		loadingEnd : function() {
			//setTimeout(function(){
				removeLoading('test');
			//},1000);
		}

	};
	return fn;
});