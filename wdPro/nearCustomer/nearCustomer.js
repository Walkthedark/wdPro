define(function(require){
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	
	var Model = function(){
		this.callParent();
	};

	Model.prototype.settlementClick = function(event){
		
		
	};

	Model.prototype.button4Click = function(event){
		this.comp("popOver1").show();
		this.comp("popOver3").hide();
		this.comp("popOver2").hide();
		this.comp("popOver5").hide();	
		
	};

	Model.prototype.button5Click = function(event){
		this.comp("popOver1").hide();
		this.comp("popOver2").show();
		this.comp("popOver3").hide();
		this.comp("popOver5").hide();
	};

	Model.prototype.button6Click = function(event){
		this.comp("popOver1").hide();
		this.comp("popOver2").hide();
		this.comp("popOver3").show();
		this.comp("popOver5").hide();
	};

	Model.prototype.button7Click = function(event){
		this.comp("popOver5").show();
		this.comp("popOver3").hide();
		this.comp("popOver2").hide();
		this.comp("popOver1").hide();
	};



	Model.prototype.div9Click = function(event){
		this.comp("popOver6").show();
	};



	return Model;
});