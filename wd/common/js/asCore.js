define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	require("$UI/wd/common/js/jq.popForm-1.0");
	require("$UI/wd/common/js/jq.popForm-1.0.min");
	require("$UI/wd/common/js/w2ui-1.5.rc1.min");
	require("$UI/wd/common/js/other");
	var IF = require("$UI/wd/common/js/interface");
	// 开发核心js
	var asCore = {};

	// '配置的URL请求'
	asCore.ServerURL = function() {
		return localStorage.getItem("ServerURL");
	};

	// +"配置服务名"
	asCore.ServerName = function() {
		return localStorage.getItem("ServerName");
	};
	asCore.ServerDB = function() {
		return localStorage.getItem("ServerDB");
	};

	// 获取服务器信息成功
	var loginSucc = function(initStr) {
		$INITSTR = initStr;
		var tmpInit = JSON.parse(justep.Base64.decode($INITSTR));
		if (tmpInit) {
			$T = {
				ver : tmpInit.vv,
				title : tmpInit.tt,
				cpflag : tmpInit.cy,
				debug : tmpInit.dg,
				// dataUrl : tmpInit.ds,
				dataUrl : asCore.ServerURL(),
				sName : tmpInit.sN,
				db : tmpInit.db,
				transFlag : tmpInit.tf,
				runFlag : tmpInit.rf,
				runkey : tmpInit.runkey,
				runInt : tmpInit.runInt,
				user : undefined,
				ch : tmpInit.ch,
				m5 : tmpInit.m5,
				imgf : tmpInit.imgf,
				dataUrl1 : function() {
					if (this.transFlag == 1) {
						return this.dataUrl;
					} else {
						var mTmp = asCore.ServerURL; // 配置的URL
						return mTmp + this.dataUrl;
					}
				}
			}
			if ($T.sName == "" & $T.db == "") {
				alert("未指定数据源");
				return;
			}
			$H.loadJS("h5Lib/sys/functionLib.min.js?v=" + $T.ver); // 动态加载
			var curKey = '';// 缓存中获取上次登录的tokenid
			if ($F.sL($T.runkey) > 0) {
				curKey = $T.runkey;
			}
			if ($F.sL(curKey) > 0) {
				// 校验
				$F.post('genObjN', {
					async : true,
					data : {
						name : 'login.validUserToken',
						token : curKey
					},
					f : function(msg) {
						// 进入登录页面

						justep.Shell.showPage("login");
					},
					s : function(d) {
						if (d.code > 0) {
							// 直接进入首页
							// mainScreen(d.value,curKey);

							justep.Shell.showPage("main");
						} else {
							// 进入登录页

							justep.Shell.showPage("login");
						}
					}
				})
			} else {
				// 进入登录页

				justep.Shell.showPage("login");
			}
			require("$UI/wd/common/js/functionLib.min");
		} else {

			alert("请求失败：" + d.message);
		}
	}

	// 获取服务器信息
	asCore.myGetServer = function() {
		var url = asCore.ServerURL() + "/" + asCore.ServerName() + "/loginMB";
		var param1 = JSON.stringify({
			ds : asCore.ServerDB(), // 配置的数据源
			flag : '0' // 配置的运行标志
		});

		// 第一步,获取服务器信息
		var d = asCore.myAjax(url, param1);
		if (d) {
			if (d.code > 0) {
				// 成功，d.value 为成功后的信息
				loginSucc(d.value); // 成功后调用-成功后转入首页
			} else {
				// 失败
				// 直接进入配置界面
			}
		} else {
			// 异常错误处理
		}
	};

	// 登录
	asCore.myLogin = function(userName, pwd, accId) {
		// 登录请求
		var param1 = JSON.stringify({
			dbPool : $T.db, // 配置的数据源
			cpid : accId,
			loginId : userName,
			pwd : pwd,
			type : 0, // 配置的类型
			remoteKey : 'remoteKey', // 每个手机唯一的KEY
			imgKey : '',
			validNum : ''
		});

		// var d =
		// asCore.myAjax("http://61.129.51.183:7070/ZDynServer/userLogin",
		// param1)
		var d = asCore.myAjax(asCore.ServerURL() + "/ZDynServer/userLogin", param1)
		if (d) {
			if (d.code > 0) {
				// 登录成功，d.value 为成功后的tokenId
				// d.value 为登录成功后的当前用户信息需缓存
				$T.event = new CustEvent("appEvent");
				$T.runkey = d.value.lastKey;
				$T.user = d.value;
				$T.companyId = $T.user.companyId;
				$T.runInt = $T.user.loginNum;
				if ($T.sName == "" & $T.db == "") {
					alert("未指定数据源");
					return;
				}
				setTimeout(InterFunc, 1000);// 成功后转入首页
				justep.Shell.showPage("homeMane");// 成功后转入首页
				justep.Util.hint("登录成功")
				// 登录成功后定时运行
			} else {
				// 登录失败 失败码为d.code 对应如下
				// -1 其它错误 -2 用户帐号表错误 -10 帐号为空 -3 重复登录 -5 密码错误 -6
				// 登录表结构错误 ,dbPoolError,connectError,statmentError
			}
		} else {
			// 异常错误处理
		}
	};

	// 定时执行方法
	var InterFunc = function() {
		// console.log("addId:"+ $F.getNewId());
		if ($T.runkey) {
			// .postCur($T.dataUrl+"/"+serverName,opts);
			//			
			asCore.myAjax(asCore.ServerURL() + IF.chkUser, {
				token : $T.runkey
			});
			// $F.post("ZDynServer/chkUser", {
			// async : true,
			// data : {
			// token : $T.runkey
			// },
			// f : function(err) {
			// $F.err(" Check User Failed:" + err.toString());
			// setTimeout(InterFunc, 5000);
			// },
			// s : function(d) {
			// if (d.code > 0) {
			// $F.log("check", " Check User:" + d.code + " now:" + $.now());
			// setTimeout(InterFunc, 300000);
			// } else {
			// $IECache.set("logKey", "");
			// alert("登录有校性检查失败，请重新登录")
			// window.location.reload();
			// }
			// }
			// })
		}
	}

	// 调用接口
	asCore.myAjax = function(url, param1) {
		var re = '';
		justep.Baas.sendRequest({
			"url" : "/YUI/YUI",
			"action" : "myAjax",
			"async" : false,
			"params" : {
				url : url,
				param1 : param1
			},
			"success" : function(re2) {
				re = re2;
			},
			"error" : function(re2) {
				re = re2;
			}
		});

		// 正式部署时使用ajax方法调用接口----正式时放开
		// re = asCore.byAjax(url, param1);
		return re;
	}
	asCore.byAjax = function(url, param1) {
		// 正式部署时使用ajax方法调用接口----正式时放开
		var re = "";
		$.ajax({
			type : 'POST',
			url : url,
			data : param1,
			dataType : 'json',
			contentType : 'application/json;charset=UTF-8',
			cache : false,
			async : false
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
			re = errorThrown;
		}).done(function(d) {
			if (d) {
				if (d.code > 0) {
					re = d; // 成功后调用
				} else {
					throw new Error("连接服务器失败")
				}
			} else {
				throw new Error("连接服务器失败")
			}
		}).always(function() {
		});
		return re;
	};
	//select连接数据库
	asCore.getDirectlyDBSql = function(sqlBase,page,totalPage,sqlValue) {
		var res ;
		var levelsqls = []; // 声名一个数组
		levelsqls.push($F.doSysDo2_Sql(sqlBase, page, totalPage, sqlValue));
		var params = {};
		params.token = $T.runkey;
		params.dbPool = "";
		params.type = 0;
		params.sqls = levelsqls;
		console.log(levelsqls);
		res = asCore.myAjax(asCore.ServerURL() + IF.sysDo2, params);//本地测试
		//asCore.DirectlyDBSqlList(url, params);
		if(res.code == 1){
			res = asCore.formatting(res);
			
		}
		return res;
	};
	//查询sql返回来的数据格式化
	asCore.formatting=function(res) {
		var re={};
		var p=[];
		for (var int = 0; int < res.value[0].fields.length; int++) {
			var pa={};
			for (var y = 0; y < res.value[0].fields[int].length; y++) {
				pa[res.value[0].columns[y]] =res.value[0].fields[int][y];
			}
			p.push(pa);
		}
		re.code =1;
		re.value = p;
		return re;
	};
	// 查询的
	asCore.getDirectlyDBSqlUpAndIst = function() {
		// sqlBase, page, totalPage,sqlValue
		// var levelsqls=[]; //声名一个数组
		// levelsqls.push($F.doSysDo2_Sql('DKList.Config.ShUserList',0,0,{}));
		// //向数组添加一个Select ，参数1 为SQL Key 参数 2为 页号，参数3 为最大记录数，参数4为SQL 参数值
		var levelsqls = []; // 声名一个数组
		levelsqls.push($F.doSysDo1_Sql('DKList.Config.ShUserList', {}));
		var params = {};
		params.token = $T.runkey;
		params.dbPool = "";
		params.sqls = levelsqls;
		asCore.myAjax(asCore.ServerURL() + IF.sysDo1, params);//本地测试
		//asCore.DirectlyDBSqlUpAndIst(url, params)
	};
	// 异步调用接口
	asCore.myAjaxY = function(url, param1, calBack) {
		justep.Baas.sendRequest({
			"url" : "/YUI/YUI",
			"action" : "myAjax",
			"async" : true,
			"params" : {
				url : url,
				param1 : param1
			},
			"success" : function(re) {
				if (calBack) {
					calBack(re);
				}
			},
			"error" : function(re) {
				if (calBack) {
					calBack(re);
				}
			}
		});
	}
	// 一次转发ajax,查询语句
	asCore.DirectlyDBSqlList = function(url, params) {
		$.ajax({
			type : 'POST',
			url : url,
			data : JSON.stringify(params),
			dataType : 'json',
			contentType : 'application/json;charset=UTF-8',
			cache : false,
			async : false
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
		}).done(function(d) {
			if (d) {
				if (d.code > 0) {

				} else {
					// 失败
					// 直接进入配置界面
				}
			} else {
				// 异常错误处理
			}
		}).always(function() {
		});

	};
	// 一次请求直接连数据库，插入或者修改
	asCore.DirectlyDBSqlUpAndIst = function(url, params) {
		$.ajax({
			type : 'POST',
			url : url,
			data : JSON.stringify(params),
			dataType : 'json',
			contentType : 'application/json;charset=UTF-8',
			cache : false,
			async : false
		}).fail(function(jqXHR, textStatus, errorThrown) {
			// 异常错误处理
		}).done(function(d) {
			if (d) {
				if (d.code > 0) {

				} else {
					// 失败
					// 直接进入配置界面
				}
			} else {
				// 异常错误处理
			}
		}).always(function() {
		});
	}

	return asCore;
});