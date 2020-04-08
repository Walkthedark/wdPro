define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/SCA/js/fastclick");

	var Model = function() {
		this.callParent();
		this.divId = "";
		this.imgfid = "";
		this.imgDetail = "";
	};

	Model.prototype.modelParamsReceive = function(event) {
		var context = this.getContext();
		var src = context.getRequestParameter("src");
		var id = context.getRequestParameter("id");
		this.imgfid = context.getRequestParameter("imgfid");
		this.divId = id;
		this.imgDetail = context.getRequestParameter("imgDetail");
		$('#img1').attr('src', src);
	};

	Model.prototype.windowReceiver1Receive = function(event) {

	};

	Model.prototype.button1Click = function(event) {
		this.comp("windowReceiver1").windowEnsure({
			"operate" : "delete",
			"id" : this.divId,
			"imgfid" : this.imgfid,
			"imgDetail" : this.imgDetail
		});
	};
	return Model;
});