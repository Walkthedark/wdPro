define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var interFace = require("$UI/wdPro/common/interfaceAdress");
	var asCore = require("$UI/wdPro/common/asCore");
	var Model = function() {
		this.callParent();
		this.client_id = "";// 关联客户
		this.stage_id = "";// 跟单阶段
		this.goodsList = [];
		this.linkM = "";
	};
	// linkManPop这个是选择客户的

	// 跟单
	Model.prototype.div77Click = function(event) {
		// 获取值
		var params = {};
		var titleInpV = this.comp("input1").val();
		if (asCore.regular(titleInpV)) {
			justep.Util.hint("跟单标题不能为空");
			return;
		}
		;
		params.title = titleInpV;
		if (this.client_id == "") {
			justep.Util.hint("请选择关联客户");
			return;
		}
		;
		params.client_id = this.client_id;
		if (this.stage_id == "") {
			justep.Util.hint("请选择跟单阶段");
			return;
		}
		;
		params.stage_id = this.stage_id;
		var moneyInpV = this.comp("input2").val();
		params.money = moneyInpV;
		params.goods = this.goodsList;
		// var remarkInpV = this.comp("input3").val();
		// params.remark = remarkInpV;//跟单说明
		// 判断企业号是否为1063
		// <column name="WedBanquetCity" type="String" xid="xid5"
		// label="城市"></column>
		if (localStorage.getItem("company_id") == 1063) {
			var con = [];
			var par = {};
			var WedBanquetCity = this.comp("nameInp").val();
			par.WedBanquetCity = WedBanquetCity;
			par.id = justep.UUID.createUUID();
			// <column name="WedBanquetHotel" type="String" xid="xid7"
			// label="酒店"></column>
			var WedBanquetHotel = this.comp("input7").val();
			par.WedBanquetHotel = WedBanquetHotel;
			// <column name="WedBanquetDate" type="String" xid="xid8"
			// label="日期"></column>
			var WedBanquetDate = this.comp("input8").val();
			par.WedBanquetDate = WedBanquetDate;
			// <column name="WedBanquetMeal" type="String" xid="xid9"></column>
			var WedBanquetMeal = this.comp("input9").val();// 餐标
			par.WedBanquetMeal = WedBanquetMeal;
			// <column name="WedBanquetFrom" type="String" xid="xid10"
			// label="形式"></column>
			var WedBanquetFrom = this.comp("input12").val();
			par.WedBanquetFrom = WedBanquetFrom;
			// <column name="WedBanquetTaboo" type="String" xid="xid11"
			// label="禁忌"></column>
			var WedBanquetTaboo = this.comp("input13").val();
			par.WedBanquetTaboo = WedBanquetTaboo;

			// <column name="guestsNumber" type="String" xid="xid12"input11
			// label="来宾人数"></column>
			var guestsNumber = this.comp("input11").val();
			par.guestsNumber = guestsNumber;
			// <column name="guestsComposition" type="String" xid="xid13"
			// label="来宾成分"></column>
			var guestsComposition = this.comp("input10").val();
			par.guestsComposition = guestsComposition;
			// <column name="guestsAccounted" type="String" xid="xid14"
			// label="来宾占比"></column>
			var guestsAccounted = this.comp("input16").val();
			par.guestsAccounted = guestsAccounted;
			// <column name="decorateBudget" type="String" xid="xid15"
			// label="预算"></column>
			var decorateBudget = this.comp("input17").val();
			par.decorateBudget = decorateBudget;
			// <column name="decorateTheme" type="String" xid="xid16"></column>
			var decorateTheme = this.comp("input15").val();
			par.decorateTheme = decorateTheme;
			// <column name="decorateTonal" type="String" xid="xid17"
			// label="色调"></column>
			var decorateTonal = this.comp("input14").val();
			par.decorateTonal = decorateTonal;
			// <column name="decorateStyle" type="String" xid="xid18"
			// label="风格"></column>
			var decorateStyle = this.comp("input22").val();
			par.decorateStyle = decorateStyle;
			// <column name="licenseDate" type="String" xid="xid19"
			// label="领证日期"></column>
			var licenseDate = this.comp("input18").val();
			par.licenseDate = licenseDate;
			// <column name="theCourtship" type="String" xid="xid20"></column>
			var theCourtship = this.comp("input20").val();
			par.theCourtship = theCourtship;
			// <column name="loveTime" type="String" xid="xid21"
			// label="恋爱时间"></column>
			var loveTime = this.comp("input19").val();
			par.loveTime = loveTime;
			// <column name="isToMarry" type="String" xid="xid22"
			// label="求婚"></column>
			var isToMarry = this.comp("input27").val();
			par.isToMarry = isToMarry;
			// <column name="MarriageRoomDecorate" type="String" xid="xid23"
			// label="婚房布置"></column>
			var MarriageRoomDecorate = this.comp("input28").val();
			par.MarriageRoomDecorate = MarriageRoomDecorate;
			// <column name="WeddingCustom" type="String" xid="xid24"
			// label="迎亲习俗"></column>
			var WeddingCustom = this.comp("input26").val();
			par.WeddingCustom = WeddingCustom;
			// <column name="photography" type="String" xid="xid25"
			// label="摄影"></column>
			var photography = this.comp("input25").val();
			par.photography = photography;
			// <column name="camera" type="String" xid="xid26"
			// label="摄像"></column>
			var camera = this.comp("input35").val();
			par.camera = camera;
			// <column name="broadcast" type="String" xid="xid27"></column>
			var broadcast = this.comp("input29").val();
			par.broadcast = broadcast;
			// <column name="makeupArtist" type="String" xid="xid28"
			// label="化妆师"></column>
			var makeupArtist = this.comp("input34").val();
			par.makeupArtist = makeupArtist;
			// <column name="MC" type="String" xid="xid29"></column>
			var MC = this.comp("input33").val();
			par.MC = MC;
			// <column name="dessert" type="String" xid="xid30"
			// label="甜品"></column>
			var dessert = this.comp("input32").val();
			par.dessert = dessert;
			// <column name="acting" type="String" xid="xid31"
			// label="演艺"></column>
			var acting = this.comp("input36").val();
			par.acting = acting;
			// <column name="WeddingHousekeeper" type="String" xid="xid32"
			// label="婚礼管家"></column>
			var WeddingHousekeeper = this.comp("input31").val();
			par.WeddingHousekeeper = WeddingHousekeeper;
			var SecretaryThewedding = this.comp("input30").val();
			par.SecretaryThewedding = SecretaryThewedding;
			// <column name="TheCar" type="String" xid="xid33"
			// label="婚车"></column>
			var TheCar = this.comp("input24").val();
			par.TheCar = TheCar;
			// <column name="WeddingDress" type="String" xid="xid34"
			// label="婚纱"></column>
			var WeddingDress = this.comp("input37").val();
			par.WeddingDress = WeddingDress;
			// <column name="ASuit" type="String" xid="xid35"></column>
			var ASuit = this.comp("input23").val();
			par.ASuit = ASuit;
			// <column name="dress" type="String" xid="xid36"
			// label="礼服"></column>
			var dress = this.comp("input38").val();
			par.dress = dress;
			// <column name="WeddingPhotos" type="String" xid="xid37"
			// label="婚纱照"></column>
			var WeddingPhotos = this.comp("input43").val();
			par.WeddingPhotos = WeddingPhotos;
			// <column name="joyful" type="String" xid="xid38"
			// label="喜糖"></column>
			var joyful = this.comp("input44").val();
			par.joyful = joyful;
			// <column name="WithTheHand" type="String" xid="xid39"></column>
			var WithTheHand = this.comp("input42").val()
			par.WithTheHand = WithTheHand;
			// <column name="largeNumber" type="String" xid="xid40"
			// label="请柬"></column>
			var largeNumber = this.comp("input41").val()
			par.largeNumber = largeNumber;
			// <column name="emaillargeNumber" type="String" xid="xid41"
			// label="电子请柬"></column>
			var emaillargeNumber = this.comp("input51").val()
			par.emaillargeNumber = emaillargeNumber;
			// <column name="registrar" type="String" xid="xid42"
			// label="证婚人"></column>
			var registrar = this.comp("input45").val()
			par.registrar = registrar;
			// <column name="bestMan" type="String" xid="xid43"
			// label="伴郎"></column>
			var bestMan = this.comp("input50").val()
			par.bestMan = bestMan;
			// <column name="processOfMaterial" type="String" xid="xid44"
			// label="流程素材"></column>
			var processOfMaterial = this.comp("input49").val()
			par.processOfMaterial = processOfMaterial;
			// <column name="ProcessTheProps" type="String" xid="xid45"
			// label="流程道具"></column>
			var ProcessTheProps = this.comp("input48").val()
			par.ProcessTheProps = ProcessTheProps;
			// <column name="DrawLink" type="String" xid="xid46"></column>
			var DrawLink = this.comp("input52").val()
			par.DrawLink = DrawLink;
			// <column name="MorningShooting" type="String" xid="xid47"
			// label="拍摄"></column>
			var MorningShooting = this.comp("input47").val()
			par.MorningShooting = MorningShooting;
			// <column name="LocationFilming" type="String" xid="xid48"
			// label="外景拍摄"></column>
			var LocationFilming = this.comp("input46").val()
			par.LocationFilming = LocationFilming;
			// <column name="TakenBeforeMarriage" type="String"
			// xid="xid49"></column>
			var TakenBeforeMarriage = this.comp("input40").val()
			par.TakenBeforeMarriage = TakenBeforeMarriage;
			// <column name="VideoingRequirement" type="String"
			// xid="xid50"></column>
			var VideoingRequirement = this.comp("input53").val()
			par.VideoingRequirement = VideoingRequirement;
			// <column name="SetTheAddress" type="String" xid="xid51"
			// label="迎亲地址"></column></div></div>
			var SetTheAddress = this.comp("input39").val()
			par.SetTheAddress = SetTheAddress;
			con.push(par);
			params.remark = con;
		} else {
			params.remark = "跟单内容"
		}
		// 增加新的跟单内容
		params.staff_id = this.linkM;
		this.setAdd(params);
	};
	// 新增跟单
	Model.prototype.setAdd = function(params) {
		// add
		var res = asCore.setPostFalse(interFace.add, params);
		if (res.code === 200) {
			// 打开页面
			this.refashInp(event);
			var order_id = res.data;
			// 晴空数据
			justep.Shell.showPage("successSalesOrder", {
				order_id : order_id
			});
			// justep.Util.hint("新增跟单成功");
		} else {
			justep.Util.hint("新增跟单失败");
		}
	};
	// 晴空
	Model.prototype.refashInp = function(event) {
		this.comp("nameInp").val("");
		this.comp("input7").val("");
		this.comp("input8").val("");
		this.comp("input9").val("");// 餐标
		this.comp("input12").val("");
		this.comp("input13").val("");
		this.comp("input11").val("");
		this.comp("input10").val("");
		this.comp("input16").val("");
		this.comp("input17").val("");
		this.comp("input15").val("");
		this.comp("input14").val("");
		this.comp("input22").val("");
		this.comp("input18").val("");
		this.comp("input20").val("");
		this.comp("input19").val("");
		this.comp("input27").val("");
		this.comp("input28").val("");
		this.comp("input26").val("");
		this.comp("input25").val("");
		this.comp("input35").val("");
		this.comp("input29").val("");
		this.comp("input34").val("");
		this.comp("input33").val("");
		this.comp("input32").val("");
		this.comp("input36").val("");
		this.comp("input31").val("");
		this.comp("input30").val("");
		this.comp("input24").val("");
		this.comp("input37").val("");
		this.comp("input23").val("");
		this.comp("input38").val("");
		this.comp("input43").val("");
		this.comp("input44").val("");
		this.comp("input42").val("")
		this.comp("input41").val("")
		this.comp("input51").val("")
		this.comp("input45").val("")
		this.comp("input50").val("")
		this.comp("input49").val("")
		this.comp("input48").val("")
		this.comp("input52").val("")
		this.comp("input47").val("")
		this.comp("input46").val("")
		this.comp("input40").val("")
		this.comp("input53").val("")
		this.comp("input39").val("")
	};
	// 打开关联客户
	Model.prototype.button1Click = function(event) {
		this.comp("choosePopWinDialog").open();
	};
	// 打开关联客户
	Model.prototype.setManPop = function(params) {
		this.client_id = params.ID;
		this.comp("input4").val(params.Name);
	};
	Model.prototype.button3Click = function(event) {
		this.comp("TagWinDialog").open();
	};
	// 跟单阶段
	Model.prototype.setTag = function(params) {
		this.stage_id = params.ID;
		this.comp("input21").val(params.Name);
	};
	// 打开商品选择
	Model.prototype.goodsChooseBtnClick = function(event) {
		this.comp("goodsWinDialog").open();
	};
	// 获取关联产品
	Model.prototype.setGoodsValue = function(params) {
		var goodsData = this.comp("goodsData");
		goodsData.loadData(params.Name, false);
		this.goodsList = params.ID;
	};
	// 删除行数据
	Model.prototype.button4Click = function(event) {
		var row = event.bindingContext.$object;
		var goods_id = row.val("goods_id");
		var goodsData = this.comp("goodsData");
		goodsData.deleteData(row);
		var index = this.goodsList.indexOf(goods_id);
		this.goodsList.splice(index, 1);
	};
	// 打开联系人
	Model.prototype.button2Click = function(event) {
		this.comp("linkWinDialog").open({
			data : {
				id : this.client_id
			}
		});
	};
	// 获取
	Model.prototype.setLinkM = function(params) {
		this.linkM = params.ID;
		this.comp("input6").val(params.Name);
	};
	return Model;
});