define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.button2Click = function(event) {
		this.comp("setDialog").open();
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/messagedetail";
		var MsgData = this.comp("MsgData");
		var data = {};
		data.id = id;
		asCore.messagedetail(sendUrl, data, function(data) {
			MsgData.newData({
				"defaultValues" : [ {
					"id" : asCore.isNull(data.id),
					"title" : asCore.isNull(data.title),
					"is_read" : asCore.isNull(data.is_read),
					"fssj" : asCore.isNull(data.fssj),
					"fsr" : asCore.isNull(data.fsr),
					"fsr_name" : asCore.isNull(data.fsr_name),
					"content" : asCore.isNull(data.content),
					"txry" : asCore.isNull(data.txry),
					"txrq" : asCore.isNull(data.txrq),
					"txfs" : asCore.isNull(data.txfs)
				} ]
			});
		});
	};

	Model.prototype.output3Render = function(event) {
		var self = this;
		var content = event.value;
		if (asCore.isNull(content) != "") {
			var hStart = content.indexOf("请点击<a");
			var hEnd = content.indexOf(">这里");
			var preHtml = content.substring(0, hStart);
			var nextHtml = content.substring(hEnd);
			var id = RndNum(5);
			var html = preHtml + "请点击<a id='" + id + "' href='#' class='J_menuItem'" + nextHtml;
			var t = setTimeout(function() {
				$("#" + id).click(function() {
					self.button2Click();
				});
			}, 1500)
			event.html = html;
		}
	};
	Model.prototype.output2Render = function(event) {
		var sj = event.value;
		var fsr = this.comp("MsgData").getValue("fsr");
		event.html = fsr + " " + sj;
	};

	return Model;
});

function RndNum(n) {
	var rnd = "";
	for (var i = 0; i < n; i++)
		rnd += Math.floor(Math.random() * 10);
	return rnd;
}