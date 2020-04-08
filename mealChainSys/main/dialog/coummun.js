define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
		this.flag = true;
	};

	Model.prototype.div1Click = function(event) {
		if (this.flag) {

			this.comp("button7").set({
				"icon" : "icon-arrow-down-b"
			});
			$(this.getElementByXid("div2")).show();
			$(this.getElementByXid("div3")).show();
			$(this.getElementByXid("div4")).show();
			this.flag = false;
		} else {
			this.comp("button7").set({
				"icon" : "icon-arrow-right-b"
			});
			$(this.getElementByXid("div2")).hide();
			$(this.getElementByXid("div3")).hide();
			$(this.getElementByXid("div4")).hide();
			this.flag = true;
		}

	};

	Model.prototype.div4Click = function(event){
		justep.Shell.showPage("contactInfo");
	};

	return Model;
});