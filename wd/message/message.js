define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.data1CustomRefresh = function(event) {
		var messageList = [ {
			id : 1,
			title : '业务信息',
			first_title : '',
			icon : 'icon-chatbox-working',
			bg : 'rgb(248, 191, 126)',
			list_num : '',
		}, {
			id : 2,
			title : '系统公告',
			first_title : '',
			icon : 'icon-ios7-volume-high',
			bg : 'rgb(113, 127, 250)',
			list_num : '',

		}, {
			id : 3,
			title : '营销物料',
			first_title : '国庆促销海报宣传物料',
			icon : 'flag-o',
			bg : 'rgb(113, 188, 250)',
			list_num : 2,
		}, {
			id : 4,
			title : '政策发文',
			first_title : '关于交易手续费优惠政策的通知',
			icon : 'description',
			bg : 'rgb(250, 163, 113)',
			list_num : 1,
		}, {
			id : 5,
			title : '公司制度',
			first_title : '公司员工守则',
			icon : 'bell',
			bg : 'rgb(177, 113, 250)',
			list_num : 2,
		}, {
			id : 6,
			title : '最新通知',
			first_title : '关于交易手续费优惠政策的通知',
			icon : 'smile-comment',
			bg : 'rgb(250, 113, 193)',
			list_num : 2,
		}];
		
		this.comp("data1").loadData(messageList);
	};

	Model.prototype.li1Click = function(event){
		var rowData = event.bindingContext.$object;
		var title = rowData.val("title");
		var id = rowData.val("id");
		this.comp("windowDialog1").open({
			params : {
				id:id,
				title:title
			}
		});
		
	};
	Model.prototype.refashData = function(event){
		
		
	};
	return Model;
});