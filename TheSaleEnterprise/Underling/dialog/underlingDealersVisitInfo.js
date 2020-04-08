define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.id;
	};

	Model.prototype.modelLoad = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY-MM-dd');
		$("[xid=dateInput]").val(time);
	};

	// 日期算法(日)
	Model.prototype.GetDateStr2 = function(day, AddDayCount) {
		var date = new Date(day);
		date.setDate(date.getDate() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		var d = date.getDate();
		return y + "-" + m + "-" + d;
	};

	Model.prototype.button4Click = function(event) {
		$("[xid=dateInput]").val(this.GetDateStr2($("[xid=dateInput]").val(), -1));
	};
	Model.prototype.button7Click = function(event) {
		$("[xid=dateInput]").val(this.GetDateStr2($("[xid=dateInput]").val(), -1));
	};
	Model.prototype.button9Click = function(event) {
		var row = event.bindingContext.$object;
		var id = row.val("id");
		this.id = id;
		this.comp("popOver3").show();
	};
	Model.prototype.button2Click = function(event) {

	};
	Model.prototype.windowReceiver1Receive = function(event) {
		var self = this;
		var id = event.data.id;
		var xm = event.data.xm;
		var time = event.data.time;
		this.comp("CData").setValue("text", xm + "/" + time);
		var sendUrl = "/index/mobile/xsjxsbflb";
		var pData = this.comp("pData");
		var data = {};
		data.id = id;
		data.bgrq = time;
		asCore.xsjxsbflb(sendUrl, data, function(data) {
			debugger;
			pData.loadData(data);
		});
	};
	Model.prototype.button5Click = function(event) {
		var id = this.id;
		var sendUrl = "/index/mobile/jxsbfdz";
		var data = {};
		data.id = id;
		asCore.jxsbfdz(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint("点赞成功！");
			} else {
				justep.Util.hint("点赞失败！");
			}
		});
	};
	Model.prototype.button6Click = function(event) {
		this.comp("popOver3").hide();
		this.comp("popOver2").show();
	};
	Model.prototype.button8Click = function(event) {
		var id = this.id;
		var sendUrl = "/index/mobile/jxsbfpl";
		var content = this.comp("input1").val();
		var data = {};
		data.id = id;
		data.content = content;
		asCore.jxsbfpl(sendUrl, data, function(data) {
			if (data.success == 1) {
				justep.Util.hint("评论成功！");
			} else {
				justep.Util.hint("评论失败！");
			}
		})
		this.comp("popOver2").hide();
	};
	return Model;
});