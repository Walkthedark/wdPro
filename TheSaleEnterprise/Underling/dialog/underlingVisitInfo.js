define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var time = justep.Date.toString(new Date(), 'YYYY-MM-dd');
		$("[xid=vdateInput]").val(time);
	};

	// 日期算法(日)
	Model.prototype.GetDateStr2 = function(day, AddDayCount) {
		var date = new Date(day);
		date.setDate(date.getDate() + AddDayCount);// 获取AddDayCount天后的日期
		var y = date.getFullYear();
		var m = date.getMonth() + 1;// 获取当前月份的日期
		if (m < 10) {
			m = "0" + m;
		}
		var d = date.getDate();
		if (d < 10) {
			d = "0" + d;
		}
		return y + "-" + m + "-" + d;
	};

	Model.prototype.button4Click = function(event) {
		$("[xid=vdateInput]").val(this.GetDateStr2($("[xid=vdateInput]").val(), -1));
	};
	Model.prototype.button7Click = function(event) {
		$("[xid=vdateInput]").val(this.GetDateStr2($("[xid=vdateInput]").val(), -1));
	};

	Model.prototype.button2Click = function(event) {
		justep.Util.hint("您没有拜访路线信息，无法查看轨迹！");
	};
	Model.prototype.windowReceiver1Receive = function(event) {
		var id = event.data.id;
		this.id = id;
		var self = this;
		var sendUrl = "/index/mobile/xsbfgjxq";
		var orderData = this.comp("pData");
		var yData = this.comp("yData");
		var sData = this.comp("sData");
		var data = {};
		data.id = id;
		asCore.xsbfgjxq(sendUrl, data, function(data) {
			orderData.newData({
				"defaultValues" : [ {
					"em_name" : asCore.isNull(data.em.em_name),
					"de_name" : asCore.isNull(data.em.de_name),
					"qdslxj" : asCore.isNull(data.qdslxj),
					"sl_jxs" : asCore.isNull(data.sl_jxs),
					"sl_wd" : asCore.isNull(data.sl_wd),
					"sl_qdhb" : asCore.isNull(data.sl_qdhb),
					"sl_schd" : asCore.isNull(data.sl_schd),
					"sl_kq" : asCore.isNull(data.sl_kq)
				} ]
			});
			yData.loadData(data.ybfkh);
			sData.loadData(data.sfkh);
		});
	};
	Model.prototype.output13Render = function(event) {
		event.html = "数量";
	};
	return Model;
});