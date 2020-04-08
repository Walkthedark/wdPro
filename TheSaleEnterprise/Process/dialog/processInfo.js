define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.output21Render = function(event) {
		if (event.value == "0") {
			event.html = "提交申请";
		}
		if (event.value == "1") {
			event.html = "打回修改";
			// // this.comp("sp2");// color:#81C160;
			// $(this).find("[xid=i2]").css({
			// color : "#FF8000",
			// });
			// $(this).find("[xid=i2]").attr('class', 'e-commerce
			// e-commerce-quancha');// e-commerce
			// e-commerce-quangou
		}
		if (event.value == "2") {
			event.html = "提交";
		}
		if (event.value == "3") {
			event.html = "审批通过";
		}
		if (event.value == "4") {
			event.html = "抄送";
		}
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var self = this;
		var workId = event.data.workId;
		var trackId = event.data.trackId;
		var myId = event.data.myId;
		var sendUrl = "/index/mobile/noformalbacklogdetail";
		var data = {};
		data.workId = workId;
		data.trackId = trackId;
		data.myId = myId;
		asCore.sendWorkPossDetail(sendUrl, data, function(data) {
			debugger;
		});
	};

	return Model;
});