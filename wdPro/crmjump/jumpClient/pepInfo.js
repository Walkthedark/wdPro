define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.id = "";
		this.flag = 1;
	};

	Model.prototype.modelParamsReceive = function(event) {
		$(this.getElementByXid("div7")).hide();
		this.id = this.getContext().getRequestParameter("id");
		var params = {};
		params.id = this.id;
		var res = asCore.setGetFalse(interFace.contactDetail, params);
		if (res.code === 200) {
			// 加载进本信息
			var linkManData = this.comp("linkManData");
			var p = [];
			p.push(res.data);
			linkManData.loadData(p, false);
			linkManData.refreshData();
			var relevanceDlientData = this.comp("relevanceDlientData");
			relevanceDlientData.loadData(res.data.client, false);
		}
	};
	// 解除关联
	Model.prototype.button1Click = function(event) {
		var row = event.bindingContext.$object;// 获取需要解除的客户ID
		var client_id = row.val("client_id")
		var params = {};
		params.client_id = client_id;
		params.staff_id = this.id;
		var res = asCore.setGetFalse(interFace.removeRelevancel, params);
		if (res.code === 200) {
			justep.Util.hint("解除成功");
			var relevanceDlientData = this.comp("relevanceDlientData");
			// relevanceDlientData.deleteData(relevanceDlientData.getRowByID(client_id));
			relevanceDlientData.deleteData(row);
		} else {
			justep.Util.hint("客户解除关联失败", {
				'type' : 'danger'
			});

		}
	};
	// 编辑
	Model.prototype.button4Click = function(event) {
		var self = this;
		var relevanceDlientData = this.comp("relevanceDlientData");
		relevanceDlientData.each(function(obj) {
			// if(sss)
			if (self.flag == 1) {
				relevanceDlientData.setValue("choose", "1", obj.row);
			} else {
				relevanceDlientData.setValue("choose", "", obj.row);
			}
		});
		if (this.flag == 1) {
			$(this.getElementByXid("div7")).show();
			this.flag = 0;
		} else {
			$(this.getElementByXid("div7")).hide();
			this.flag = 1;
		}
	};
	// 客户详情
	Model.prototype.button5Click = function(event) {
		var row = event.bindingContext.$object;// 获取需要解除的客户ID
		var client_id = row.val("client_id");
		window.location.href ="./dialog/outClinetInfo.w?id="+client_id;
	};
	// 联系人详情
	Model.prototype.button11Click = function(event) {
		justep.Shell.showPage("linkAndPop", {
			id : this.id
		});
		this.comp("popOver6").hide();
	};

	Model.prototype.button10Click = function(event) {
		var linkManData = this.comp("linkManData");
		var staff_name = linkManData.getValueByID("staff_name", this.id);
		//
		justep.Shell.showPage("linkAddClient", {
			id : this.id,
			staff_name : staff_name
		});
		this.comp("popOver6").hide();
	};

	return Model;
});