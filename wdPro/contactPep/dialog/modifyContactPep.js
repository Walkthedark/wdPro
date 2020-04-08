define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.tagList = "";
		this.sexFlag = "";
		this.addlinkMan = [];// 新增
		this.linkMan = [];// 现有
		this.id = "";
	};
	// 打开客户标签
	Model.prototype.tagBtnClick = function(event) {
		this.comp("tagWinDialog").open();
	};
	// 打开客户标签
	Model.prototype.getTag = function(params) {
		this.comp("tagInp").val(params.Name);
		this.tagList = params.ID;
	};
	// 打开性别选择
	Model.prototype.sexBtnClick = function(event) {
		this.comp("sexWinDialog").open();
	};
	// 获取性别
	Model.prototype.getSex = function(params) {
		this.comp("sexInp").val(params.Name);
		this.sexFlag = params.ID;
	};
	// 保存
	Model.prototype.div77Click = function(event) {
		var params = {};
		//
		var nameInpV = this.comp("input1").val();
		if (asCore.regular(nameInpV)) {
			justep.Util.hint("名称不能为空");
			return;
		}
		params.staff_name = nameInpV;
		var phoneInpV = this.comp("input2").val();
		if (asCore.regular(phoneInpV)) {
			justep.Util.hint("手机号不能为空");
			return;
		}
		params.staff_id = this.id;
		params.phone = phoneInpV;
		params.tag = this.tagList;
		var dutyInpV = this.comp("input3").val();
		params.duty = dutyInpV;
		var birthday = this.comp("input10").val();
		params.birthday = birthday;
		params.sex = this.sexFlag;
		var special_plane = this.comp("input6").val();
		params.special_plane = special_plane;
		var email = this.comp("input5").val();
		params.email = email;
		var wechat = this.comp("input4").val();
		params.wechat = wechat;
		var micro_blog = this.comp("input9").val();
		params.micro_blog = micro_blog;
		var qq = this.comp("input8").val();
		params.qq = qq;
		var native_place = this.comp("input7").val();
		params.native_place = native_place;
		var hobby = this.comp("input12").val();
		params.hobby = hobby;
		params.add_client = this.addlinkMan;
		params.relation_client = this.linkMan;
		this.setSavePostData(params);
		
	};
	
	//提交数据
	Model.prototype.setSavePostData = function(params) {
		//saveLinkman
		var res = asCore.setPostFalse(interFace.editLinkMan, params);
		if (res.code === 200) {
			justep.Util.hint("联系人修改成功");
		}else{
			justep.Util.hint(res.message,{'type':'danger'});
		}
	};
	// 关联客户
	Model.prototype.div62Click = function(event) {
		this.comp("popOver1").show();
	};
	// 关联现有联系人
	Model.prototype.button2Click = function(event) {
		this.comp("popOver1").hide();
		this.comp("alreadyWinDialog").open();

	};
	// 获取现有的联系人
	Model.prototype.setManPop = function(params) {
		var rlinkManList = this.comp("rlinkManList");
		rlinkManList.loadData(params.Name, false);
		this.linkMan = params.ID;
	};
	// 新增客户
	Model.prototype.button1Click = function(event) {
		this.comp("popOver1").hide();
		this.comp("addPopWinDialog").open();
	};
	// 新增客户
	Model.prototype.setAddPop = function(params) {
		var p1 = [];
		p1.push(params.dataJson);
		this.addlinkMan = p1;
		var rlinkManList = this.comp("rlinkManList");
		var p2 = [];
		p2.push(params.loadData);
		rlinkManList.loadData(p2, true);
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
	//获取参数
	Model.prototype.modelParamsReceive = function(event){
		this.id = this.params.id;
		var params ={};
		params.id = this.id;
		var res = asCore.setGetFalse(interFace.contactDetail, params);
		if (res.code === 200) {
			//加载进本信息
			var  linkManData = this.comp("linkManData");
			var p = [];
			p.push(res.data);
			linkManData.loadData(p, false);
			linkManData.refreshData();
		}
	};

	return Model;
});