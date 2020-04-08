define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = require("$UI/TheSaleEnterprise/commonJS/core");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button4Click = function(event) {
		var cData = this.comp("cData");
		var feiid = cData.getValue("feiid");
		var feis = cData.getValue("feis");
		var start = cData.getValue("start");
		var end = cData.getValue("end");
		var chufa = cData.getValue("chufa");
		var feim = cData.getValue("feim");
		var mudi = cData.getValue("mudi");
		var remark = cData.getValue("remark");
		var sendUrl = "/index/mobile/tjrcfybxmx";
		var jxs = "";
		var jxsm = "";
		if (id) {
			jxs = id;
			jxsm = title;
		} else {
			justep.Util.hint("请选择有效的经销商信息");
			return;
		}
		if (feiid && start && end && chufa && mudi) {
			this.comp("windowReceiver1").windowEnsure({
				data : {
					feiid : feiid,
					feim : feim,
					feis : feis,
					start : start,
					end : end,
					chufa : chufa,
					jxs : jxs,
					jxsm : jxsm,
					mudi : mudi,
					remark : remark
				}
			})
		} else {
			justep.Util.hint("填写信息不全");
			return;
		}
	};

	Model.prototype.windowReceiver1Receive = function(event) {
		this.getFeeTypeList();
	};
	Model.prototype.getFeeTypeList = function() {
		var feeTypeList = this.comp("feeTypeList");
		var sendUrl = "/index/mobile/richangkemuliset";
		var data = {};
		asCore.richangkemuliset(sendUrl, data, function(data) {
			feeTypeList.loadData(data);
		});
	}
	Model.prototype.modelLoad = function(event) {
		$(document).bind('click', function(e) {
			var e = e || window.event; // 浏览器兼容性
			var elem = e.target || e.srcElement;
			while (elem) { // 循环判断至跟节点，防止点击的是div子元素
				if (elem.id && (elem.id == 'typenum1' || elem.id == "makeupCo1")) {
					return;
				}
				elem = elem.parentNode;
			}
			$('#typenum1').css('display', 'none'); // 点击的不是div或其子元素
		});
		/* 先将数据存入数组 */
		this.getTypeList();
	};
	Model.prototype.getTypeList = function() {
		var sendUrl = "/index/mobile/ddjxslist";
		var data = {};
		asCore.ddjxslist(sendUrl, data, function(data) {
			for (i = 0; i < data.length; i++) {
				TempArr[i] = data[i].title;
				TempArrID[i] = data[i].id;
			}
		});
	}
	return Model;
});

var TempArr = [];// 存储option
var TempArrID = [];
var id;
var title;
function changeF(this_) {
	$(this_).prev("input").val($(this_).find("option:selected").text());
	title = $(this_).find("option:selected").text();
	id = $(this_).find("option:selected").val();
	$("#typenum1").css({
		"display" : "none"
	});
}
function setfocus(this_) {
	$("#typenum1").css({
		"display" : ""
	});
	var select = $("#typenum1");
	for (i = 0; i < TempArr.length; i++) {
		var option = $("<option value='" + TempArrID[i] + "'></option>").text(TempArr[i]);
		select.append(option);
	}
}

function setinput(this_) {
	id = "";
	title = "";
	var select = $("#typenum1");
	select.html("");
	for (i = 0; i < TempArr.length; i++) {
		// 若找到以txt的内容开头的，添option
		if (TempArr[i].substring(0, this_.value.length).indexOf(this_.value) == 0) {
			var option = $("<option value='" + TempArrID[i] + "'></option>").text(TempArr[i]);
			select.append(option);
		}
	}
}