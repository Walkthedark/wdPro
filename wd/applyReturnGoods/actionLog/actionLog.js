define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");

	var Model = function(){
		this.callParent();
	};

	Model.prototype.actionlogCustomRefresh = function(event){
			var actionLog = [ {
			id : '1',
			log_content : '已提交退货单，等待退货单审核',
			log_time : '2019-03-20 10:30:20'
		}]
		this.comp("actionlog").loadData(actionLog);
	};

	return Model;
});