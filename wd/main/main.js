define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("css!$UI/wd/main/dist/css/swiper").load();
	require("$UI/wd/main/dist/js/swiper");
	var asCore = require("$UI/wd/common/asCore");
	var inFace = require("$UI/wd/common/interfaceAdress");
	var Model = function() {
		this.callParent();
	};

	Model.prototype.modelLoad = function(event) {
		var swiper = new Swiper('.swiper-container', {
			pagination : '.swiper-pagination',
			paginationClickable : true,
			autoplay : 2500,
		});
		
		var productInfo = [ {
			id : 1,
			pro_image_url : './image/w1.jpg',
			pro_name : '老布特 木糖醇果仁酥条花生',
			pro_price : '23',
			pro_unit : '袋'
		}, {
			id : 2,
			pro_image_url : './image/w2.jpg',
			pro_name : '加州原野 坚果炒货 美国开心果',
			pro_price : '32',
			pro_unit : '袋'
		} ];
		var p ={};
		p.state = 0;
		var r = asCore.setGetFalse(inFace.advertlist, p);
		if(r.code == 200){//获取轮播图成功
//		<div xid="div9" class="swiper-slide">
			var divd="";
//     <img src="$UI/wd/main/img/carouselBox61.jpg" alt="" xid="image1" height="133px;" style="width:100%;"></img></div> 
				for (var int = 0; int < 3; int++) {
					"<div xid=" +justep.UUID.createUUID() +"class='swiper-slide'>"+
						
					"<div>"
					//"<img src=$UI/wd/main/img/carouselBox61.jpg alt="""+"";
				}
		};
		//获取的是参加活动的商品列表
		this.comp("productInfo").loadData(productInfo);
		var params = {};
		var res = asCore.setGetFalse(inFace.promotion_list, params);
		if (res.code === 200) {
			for (var int = 0; int < res.data.length; int++) {
				var params=[];
				params.push(res.data[int].product_detail);
				if(int == 0){
					this.comp("goodsData").loadData(params, false);
				}else{
					this.comp("goodsData").loadData(params, true);
				}
			}
		} else {
			justep.Util.hint(res.message);
		};
	};

	// 图片路径转换
	Model.prototype.getImageUrl = function(url) {
		return require.toUrl(url);
	};

	Model.prototype.classBtnClick = function(event) {
		justep.Shell.showPage("productClass");
	};

	Model.prototype.productClick = function(event) {
		if (localStorage.getItem("pageFlag") == 2) {
		//	this.comp("windowContainer4").load("$UI/wd/secondShopMain/secondShopMain.w");
			this.comp("windowContainer4").load("$UI/wd/secondShopMain/secondShop.w");
		} else {
			this.comp("windowContainer4").load("$UI/wd/PlaceTheOrder/testT.w");
		}

	};
	//购物车
	Model.prototype.cartClick = function(event){
		justep.Shell.showPage("cart");
	};

	Model.prototype.messageClick = function(event){
		this.comp("windowContainer1").load("$UI/wd/cart/cart.w");
	};

	Model.prototype.salesActiveClick = function(event){
		justep.Shell.showPage("huoDong");
	};
	return Model;
});