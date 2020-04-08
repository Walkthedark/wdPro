define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/SCA/js/fastclick");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelParamsReceive = function(event) {

	};

	Model.prototype.windowReceiver1Receive = function(event) {
		var url = event.data.url;
		$('#img1x').attr('src', url);
	};

	Model.prototype.button1Click = function(event) {
		this.comp("windowReceiver1").windowCancel();
	};
	return Model;
});