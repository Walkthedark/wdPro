define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function() {
		this.callParent();
	};

	Model.prototype.briefDataCustomRefresh = function(event) {
		var briefData = [ {
			id : '1',
			brief_content : '阿萨劳动纪律',
			brief_create_time : '2019-03-20 10:30:20'
		}, {
			id : '2',
			brief_content : '爱迪生动纪律',
			brief_create_time : '2019-03-10 09:30:20'
		} ]
		this.comp("briefData").loadData(briefData);
	};

	return Model;
});