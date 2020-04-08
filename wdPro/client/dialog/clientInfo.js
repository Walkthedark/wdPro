define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.listImage = ""
		this.id = ""
	};
	// 新增
	Model.prototype.button3Click = function(event) {
		this.comp("popOver6").show();
	};
	// 参数接受事件
	Model.prototype.modelParamsReceive = function(event) {
		// 获取客户列表的ID
		var params = {};
		params.id = this.params.id;
		this.id = params.id;
		var res = asCore.setGetFalse(interFace.clientDetail, params);
		if (res.code === 200) {
			// loadData基本数据
			var clientData = this.comp("clientData");
			var pa = [];
			pa.push(res.data);
			clientData.loadData(pa, false);
			clientData.refreshData();
			// accessoryData数据
			var accessoryData = this.comp("accessoryData");
			accessoryData.loadData(res.data.accessory, false);
			accessoryData.refreshData();
			// image数据
			var imageData = this.comp("imageData");
			imageData.loadData(res.data.image, false);
			this.listImage = res.data.image;
			// linkman
			var linkmanData = this.comp("linkmanData");
			linkmanData.loadData(res.data.contract, false);
			linkmanData.refreshData();
			// documentary
			var documentaryData = this.comp("documentaryData");
			var d = [];
			d.push(res.data.documentary);
			documentaryData.loadData(d, false);
			documentaryData.refreshData();
			// bill
			var billData = this.comp("billData");
			billData.loadData(res.data.bill, false);
			billData.refreshData();
			// log
			var logData = this.comp("logData");
			logData.loadData(res.data.bill, false);
			logData.refreshData();
			// relevanceDlientData 关联客户
			var relevanceDlientData = this.comp("relevanceDlientData");
			relevanceDlientData.loadData(res.data.relevance_client, false);
			this.relevance_client_list = res.data.relevance_client;
			relevanceDlientData.refreshData();
		} else {
			justep.Util.hint("客户详情加载失败");
		}
		// 获取历史跟单数据
		var rest = asCore.setGetFalse(interFace.easyDocumentary, params);
		if (rest.code === 200) {
			var documentaryListData = this.comp("documentaryListData");
			documentaryListData.loadData(rest.data, false);
		} else {
			justep.Util.hint("历史跟单加载失败");
		}
		var p = {};
		p.client_id = this.params.id;
		var restH = asCore.setGetFalse(interFace.report, p);
		if (restH.code === 200) {
			var reportData = this.comp("reportData");
			reportData.loadData(restH.data, false);
		} else {
			justep.Util.hint("历史汇报加载失败");
		}
	};
	// 联系人点击事件
	Model.prototype.div9Click = function(event) {
		this.comp("popOver1").show();
		var staff_id = event.bindingContext.$object.val("staff_id");
		this.linkManId = staff_id;
	};

	Model.prototype.button5Click = function(event) {
		justep.Shell.showPage("imageList", {
			data : this.listImage
		})
	};

	Model.prototype.button15Click = function(event) {

	};

	Model.prototype.button16Click = function(event) {
		var clientData = this.comp("clientData");
		var client_id = clientData.getValue("client_id");
		var client_name = clientData.getValue("client_name");
		var params = {};
		params.client_id = client_id;
		params.client_name = client_name;
		justep.Shell.showPage("workRMain", {
			data : params
		});
	};
	// 关联现有的客户
	Model.prototype.button7Click = function(event) {
		this.comp("popOver6").hide();
		var params = {
			id : this.id,
			method : this
		};
		justep.Shell.showPage("clientAndPop", {
			data : params
		})
	};
	// 关联现有的联系人
	Model.prototype.button11Click = function(event) {
		this.comp("popOver6").hide();
		var params = {
			id : this.id,
			method : this
		};
		justep.Shell.showPage("clientAndLinkMan", {
			data : params
		})
	};
	// 关联客户展示
	Model.prototype.button35Click = function(event) {
		var params = {
			id : this.id,
			method : this
		};
		justep.Shell.showPage("associatedPop", {
			data : params
		})
	};

	Model.prototype.media3Click = function(event) {
		var params = {
			id : this.id,
			method : this
		};
		justep.Shell.showPage("clientDetailedInfo", {
			data : params
		})
	};
	// 打电话
	Model.prototype.button41Click = function(event) {
		this.comp("popOver1").hide();
		var linkmanData = this.comp("linkmanData");
		//this.linkManId
		var phone =linkmanData.getValueByID("phone", this.linkManId);
		window.location.href = 'tel://' + phone;
	};
	// 解除关联
	Model.prototype.button43Click = function(event) {
		this.comp("popOver1").hide();
		var params = {};
		params.client_id = this.id;
		params.staff_id = this.linkManId;
		var res = asCore.setGetFalse(interFace.removeRelevancel, params);
		if (res.code === 200) {
			justep.Util.hint("解除成功");
			var linkmanData = this.comp("linkmanData");
			linkmanData.deleteData(linkmanData.getRowByID(this.linkManId));
		} else {
			justep.Util.hint("联系人解除关联失败", {
				'type' : 'danger'
			});

		}
	};
	// 绑定外部联系人
	Model.prototype.button40Click = function(event) {

	};
	//删除联系人
	Model.prototype.button2Click = function(event){
		//removeLinkManw
		this.comp("popOver1").hide();
		this.comp("messageDialog1").show();
	};
	//
	Model.prototype.messageDialog1OK = function(event){
		var params = {};
		params.id = this.linkManId;
		var res = asCore.setGetFalse(interFace.removeLinkManw, params);
		if (res.code === 200) {
			justep.Util.hint("联系人删除成功");
			var linkmanData = this.comp("linkmanData");
			linkmanData.deleteData(linkmanData.getRowByID(this.linkManId));
		} else {
			justep.Util.hint("联系人解除关联失败", {
				'type' : 'danger'
			});

		}
	};
	//修改
	Model.prototype.button45Click = function(event){
		this.comp("popOver1").hide();
		justep.Shell.showPage("modifyContactPep", {id:this.linkManId})
	};
	//增加跟单
	Model.prototype.button17Click = function(event){
		//this.id = ""
		this.comp("popOver6").hide();
		var clientData = this.comp("clientData");
		var client_name = clientData.getValueByID("client_name",this.id );
		justep.Shell.showPage("clientSalesOrder", {id:this.id,name:client_name})
	};
	//
	Model.prototype.media2Click = function(event){
		var documentaryData = this.comp("documentaryData");
		justep.Shell.showPage("infoAddsalesOrder", {
			id : documentaryData.getValue("documentary_id")
		});
	};
	//客户详情里面新增联系人
	Model.prototype.button12Click = function(event){
		this.comp("popOver6").hide();
		justep.Shell.showPage("newClinetAddlink", {
			id : this.id
		});
		//
	};

	return Model;
});