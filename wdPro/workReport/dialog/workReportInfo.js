define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/wdPro/common/asCore");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var Model = function() {
		this.callParent();
		this.id = "";
		this.parent_id = "";
		this.likes=0;
	};
	// 参数接受事件
	Model.prototype.modelParamsReceive = function(event) {
		var params = {};
		this.id = this.params.data.report_id;
		params.id = this.id;
		this.loadAndRefashData(params);
	};
	// 评论
	Model.prototype.button27Click = function(event) {
		var params = {};
		params.report_id = this.id;
		params.parent_id = 0;
		var content = this.comp("textarea1").val();
		params
		if (asCore.regular(content)) {
			justep.Util.hint("请填写评论内容");
			return;
		}
		params.content = content;
		var res = asCore.setPostFalse(interFace.commentList, params);
		if (res.code == 200) {
			var p = {};
			p.id = this.id;
			this.loadAndRefashData(p);
			this.comp("popOver2").hide();
		}
	};
	Model.prototype.loadAndRefashData = function(params) {
		var res = asCore.setGetFalse(interFace.report_detail, params);
		if (res.code === 200) {
			var par = [];
			par.push(res.data);
			this.comp("myreData").loadData(par, false);
			this.comp("myreData").refreshData();
			// 要展示@人
			if (res.data.cc_staff.lenght <= 0) {
				$(this.getElementByXid("list2")).hide();
			}
			this.comp("cc_staffData").loadData(res.data.cc_staff, false);
			// 循环图片
			var i = [];
			for (var int = 0; int < res.data.image.length; int++) {
				var p = {};
				p.id = justep.UUID.createUUID();
				p.url = res.data.image[int];
				i.push(p);
			};
			this.comp("imageData").loadData(i, false);
			this.comp("AccessoryData").loadData(res.data.accessory, false);
			// 循环
		} else {
			justep.Util.hint("获取汇报详情失败");
		}
		// 循环评论获取字评论
		this.comp("commentData").loadData(res.data.comment, false);
		for (var int2 = 0; int2 < res.data.comment.length; int2++) {
			if (int2 == 0) {
				this.comp("sonCommenData").loadData(res.data.comment[int2].child_comment, false);
			} else {
				this.comp("sonCommenData").loadData(res.data.comment[int2].child_comment, true);
			}

		}
		// 插入点评论数
		var length = this.comp("commentData").getCount() + this.comp("sonCommenData").getCount();
		$(this.getElementByXid("span4")).html("评论" + length);
		this.likes = res.data.likes.length;
		$(this.getElementByXid("span5")).html("点赞" + res.data.likes.length);

	};
	//
	Model.prototype.li1Click = function(event) {
		var row = event.bindingContext.$object;
		this.parent_id = row.val("comment_id");
		this.comp("popOver2").show();
	};
	//
	Model.prototype.button11Click = function(event) {

		var params = {};
		params.report_id = this.id;
		params.parent_id = this.parent_id;
		var content = this.comp("textarea2").val();
		if (asCore.regular(content)) {
			justep.Util.hint("请填写评论内容");
			return;
		}
		params.content = content;
		var res = asCore.setPostFalse(interFace.commentList, params);
		if (res.code == 200) {
			// 评论成功
			var p = {};
			p.id = this.id;
			this.loadAndRefashData(p);
			this.comp("popOver2").hide();
		}
	};
	//点赞
	Model.prototype.button9Click = function(event){
		//likesD
		var params = {};
		params.id = this.id;
		var res = asCore.setPostFalse(interFace.likesD, params);
		if(res.code == 200){
			this.comp("myreData").setValueByID("is_like", 1, this.id);
			this.comp("myreData").refreshData();
			this.likes+=1;
			$(this.getElementByXid("span5")).html("点赞" + this.likes);
		}
	};
	Model.prototype.button10Click = function(event){
		var params = {};
		params.id = this.id;
		var res = asCore.setPostFalse(interFace.likesD, params);
		if(res.code == 200){
			this.comp("myreData").setValueByID("is_like", 0, this.id);
			this.likes-=1;
			$(this.getElementByXid("span5")).html("点赞" + this.likes);
		}
		
	};
	return Model;
});