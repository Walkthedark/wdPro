define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wdPro/common/asCore");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	require("http://res.wx.qq.com/open/js/jweixin-1.2.0.js");
	var Model = function() {
		this.callParent();
		this.linkMan = [];// 现有客户
		this.link = [];// 现有联系人
		this.flag = "";
		this.cc_staff = [];// 抄送员工数组
	};
	// 添加关联客户
	Model.prototype.button2Click = function(event) {
		this.comp("alreadyWinDialog").open();
	};
	// 添加关联联系人
	Model.prototype.button3Click = function(event) {
		this.comp("linkWinDialog").open({
			data : {
				id : ""
			}
		});
	};
	// 获取现有的联系人
	Model.prototype.setManPop = function(params) {
		var rlinkManList = this.comp("rlinkManList");
		rlinkManList.loadData(params.Name, false);
		this.linkMan = params.ID;
	};
	// 删除已经选择的客户
	Model.prototype.button4Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("client_id");
		var flag = row.val("flag");
		this.comp("rlinkManList").deleteData(row);
		if (flag == 1) {
			// 删除数组里面的信息
			for (var i = 0; i < this.linkMan.length; i++) {
				if (this.linkMan[i].client_id == id) {
					this.linkMan.splice(i, 1);
				}
			}
		} else {
			for (var i = 0; i < this.addlinkMan.length; i++) {
				if (this.addlinkMan.client_id == id) {
					this.addlinkMan.splice(i, 1);
				}
			}
		}

	};
	Model.prototype.setLinkM = function(params) {
		this.link = params.ID;
		this.comp("ListData").loadData(params.Name, false);
	};
	Model.prototype.button5Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("staff_id");
		this.comp("ListData").deleteData(row);
		// 删除数组里面的信息
		for (var i = 0; i < this.link.length; i++) {
			if (this.link[i].staff_id == id) {
				this.link.splice(i, 1);
			}
		}
		console.log(this.link);
	};
	// 保存
	Model.prototype.button6Click = function(event) {
		// 获取汇报内容
		var params = {};
		var report_content = this.comp("textarea1").val();
		params.report_content = report_content;
		params.report_action = this.flag;
		var date_begin = this.comp("input3").val();
		params.date_begin = date_begin;
		var date_end = this.comp("input4").val();
		params.date_end = date_end;
		params.cc_staff = this.cc_staff;// 抄送员工数组
		params.only_mine = 0;
		params.sync_company = 0;
		params.client = this.linkMan;
//		params.staff = this.link;
		params.contract = this.link;
		this.setPost(params);
	};
	Model.prototype.setPost = function(params) {
		var res = asCore.setPostFalse(interFace.addWork, params);
		if (res.code == 200) {
			justep.Util.hint(this.flag+"汇报新增成功");
			history.back();
		}else{
			justep.Util.hint(this.flag+"新增汇报失败",{'type':'danger'});
		}
	};
	// 获取员工
	Model.prototype.image1Click = function(event) {
		this.comp("addTongWinDialog").open();
	};
	// 获取员工
	Model.prototype.getadd_Type = function(params) {
		this.comp("client").loadData(params.Name, false);
		this.cc_staff = params.ID;
	};
	Model.prototype.modelParamsReceive = function(event) {
		this.flag = this.params.data.flag;
		var pId =[];
		pId.push(this.params.data.workInfo.client_id);
		this.linkMan = pId;
		var pName = [];
		pName.push(this.params.data.workInfo);
		this.comp("rlinkManList").loadData(pName, false);
	};
	var images = window.images = {
		localId : [],
		serverId : [],
		baseDateId : []
	};
	// 上传附件
	Model.prototype.button1Click = function(event) {
		// 上传接口
		//justep.Util.hint("功能暂未开发");
		return;
		var self_ = this;
		wx.chooseImage({
			count : 1,
			sizeType : [ 'original', 'compressed' ],
			success : function(res) {
				images.localId = res.localIds;
				var pImage =[];
				var p ={};
				p.id =  justep.UUID.createUUID();
				p.url = res.localIds;
				pImage.push(p);
				self_.comp("imageData").loadData(pImage, true);
				self_.XianShiImage(event);
			}
		});
		
	};
	//上传照片
	Model.prototype.XianShiImage = function(event) {
		var me = this;
		var i = 0, length = images.localId.length;
		images.serverId = [];
		function upload() {
			wx.uploadImage({
				localId : images.localId[i],
				isShowProgressTips : 1,
				success : function(res) {
					i++;
					var localData = res.serverId;
					//直接上传到服务器
//					var res = fn.getWeiXinImage(localData, 'keep_arrange', me.id, 1, me.position, me.mainPosition);
					var res = asCore.getWeiXinImage(localData);
//					var para = [];
//					para.push(res.data);
//					me.comp("imageList").newData({
//						defaultValues : fn.getNewUrl(para)
//					});
//					me.comp("imageList").refreshData();

					if (i < length) {
						upload();
					}
				},
				fail : function(res) {
					alert(JSON.stringify(res));
				}
			});
		}
		upload();
	};
	
	return Model;
});