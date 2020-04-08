define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.button2Click = function(event) {
		if (id) {
			this.comp("windowReceiver1").windowEnsure({
				id : id,
				title : title
			});
		} else {
			justep.Util.hint("请选择有效的经销商信息");
		}
	};

	Model.prototype.modelLoad = function(event) {
		$(document).bind('click', function(e) {
			var e = e || window.event; // 浏览器兼容性
			var elem = e.target || e.srcElement;
			while (elem) { // 循环判断至跟节点，防止点击的是div子元素
				if (elem.id && (elem.id == 'typenum' || elem.id == "makeupCo")) {
					return;
				}
				elem = elem.parentNode;
			}
			$('#typenum').css('display', 'none'); // 点击的不是div或其子元素
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
	$("#typenum").css({
		"display" : "none"
	});
}
function setfocus(this_) {
	$("#typenum").css({
		"display" : ""
	});
	var select = $("#typenum");
	for (i = 0; i < TempArr.length; i++) {
		var option = $("<option value='" + TempArrID[i] + "'></option>").text(TempArr[i]);
		select.append(option);
	}
}

function setinput(this_) {
	id = "";
	title = "";
	var select = $("#typenum");
	select.html("");
	for (i = 0; i < TempArr.length; i++) {
		// 若找到以txt的内容开头的，添option
		if (TempArr[i].substring(0, this_.value.length).indexOf(this_.value) == 0) {
			var option = $("<option value='" + TempArrID[i] + "'></option>").text(TempArr[i]);
			select.append(option);
		}
	}
}