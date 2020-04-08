define(function(require) {
	var $ = require("jquery");
	var justep = require("$UI/system/lib/justep");
	var asCore = {};
	asCore.RequestAddres = "http://61.129.51.183:9986";
	// 距离偏差
	asCore.sbjlpc = 0;
	asCore.sendPostGisRequest = function(URL, localFile, XMQKID, callBack) {
		var formData = new FormData();
		formData.append("file", localFile);
		formData.append("XMQKID", XMQKID);
		var xmlhttp = new XMLHttpRequest();
		var callhandle = function(e) {
			debugger
			if (xmlhttp.readyState == 4) {
				if (xmlhttp.status == 200) {
					debugger
					if (callBack) {
						callBack("SUCCESS", null);
					}
				} else {
					if (callBack) {
						callBack("FAILURE", null);
					}
				}
			}
		};
		xmlhttp.onreadystatechange = callhandle;
		xmlhttp.open("post", asCore.RequestAddres + URL);
		xmlhttp.send(formData);
	};
	// 登录
	asCore.sendGetGisRequest = function(sendURL, callBack) {
		var url = asCore.RequestAddres + sendURL;
		$.ajax({
			url : url,
			async : true,
			type : "GET",
			data : {
				"userid" : "A"
			},
			success : function(data) {
				callBack(data);
			},
			error : function(data) {
				callBack(data);
			},
			dataType : "json"
		});

	};
	// post
	asCore.sendPostGisRequestXZDK = function(URL, GDXMID, CHXMID, callBack) {
		var formData = new FormData();
		formData.append("GDXMID", GDXMID);
		formData.append("CHXMID", CHXMID);
		formData.append("EditFeature", 1);
		formData.append("userid", userid);
		var xmlhttp = new XMLHttpRequest();
		var callhandle = function() {
			if (xmlhttp.readyState == 4) {
				if (xmlhttp.status == 200) {
					if (callBack) {
						callBack("SUCCESS", null);
					}
				} else {
					if (callBack) {
						callBack("FAILURE", null);
					}
				}
			}
		};
		xmlhttp.onreadystatechange = callhandle;
		xmlhttp.open("post", asCore.RequestAddres + URL);
		xmlhttp.send(formData);
	};
	// 上班打卡
	asCore.sendPostGoToWork = function(sbdd, sbzp, sbsm, sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			sbdd : sbdd,
			sbzp : sbzp,
			sbsm : sbsm,
			sbjlpc : asCore.sbjlpc,
			userid : userid
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data)
			},
			error : function(data) {
				callback(data)
			},
			dataType : "json"
		});

	}
	// 下班打卡
	asCore.sendPostAfterWork = function(sendUrl, xbdd, xbzp, xbsm, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			xbdd : xbdd,
			xbzp : xbzp,
			xbsm : xbsm,
			jlpc : asCore.sbjlpc,
			userid : userid
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data)
			},
			error : function(data) {
				callback(data)
			},
			dataType : "json"
		});

	}
	// 4、 待办流程 process
	asCore.sendProcess = function(sendUrl, data, callback) {
		// asCore.sendGetGisRequest();
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : false,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});

	}
	// 5、工作流详情 http://61.129.51.183:9986/index/mobile/noformalbacklogdetail
	asCore.sendWorkPossDetail = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});

	}
	// 6、工作日报 地址：http://61.129.51.183:9986/index/mobile/gzrb
	asCore.getWorkReport = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		})
	}
	// 7.提交工作日报
	asCore.sendPostSubmitWorkReport = function(rq, lx, nr, zp, sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		debugger
		/*
		 * var data = { rq : rq, lx : lx, nr : nr, zp : zp }
		 */
		var data = "?" + "rq=" + rq + "&lx=" + lx + "&nr=" + nr + "&zp=" + zp + "&userid=" + userid;
		var url = asCore.RequestAddres + sendUrl;
		var xmlHttp = new XMLHttpRequest();
		xmlHttp.onreadystatechange = function(data) {
			if (xmlHttp.status == 200 && xmlHttp.readyState == 4) {
				callback(xmlHttp.responseText);
			}
		}
		xmlHttp.open("POST", url + data, true);
		xmlHttp.send();
		/*
		 * $.ajax({ url : url, ansyc : true, type : "POST", data : data, sussess :
		 * function(data){ callback(data); }, error : function(data){
		 * callback(data); }, dataType : "json" })
		 */
	};
	// 8、点赞
	asCore.sendPostDZ = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	}

	// 9、日报评论
	asCore.sendPostRBPL = function(sendUrl, id, content, callback) {
		var url = asCore.RequestAddres + sendUrl;
		debugger
		var data = {
			id : id,
			content : content,
			userid : userid
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		})
	};
	// 10. 经销商列表
	asCore.sendJXSLB = function(sendUrl, keyword, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			keyword : keyword,
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	}
	// 11. 经销商拜访记录列表 http://61.129.51.183:9986/index/mobile/jxsbfjl
	asCore.sendPostJXSBFJLLB = function(sendUrl, jxs_id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : jxs_id,
			userid : userid
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	}
	// 12. 经销商拜访记录详情 http://61.129.51.183:9986/index/mobile/jxsbfjlxq
	asCore.sendJxsbfjlxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : false,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 12. 经销商拜访签到
	asCore.sendPostJXSQD = function(sendUrl, jxs_id, qddz, qdzp, callback) {
		debugger
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : jxs_id,
			qddz : qddz,
			qdzp : qdzp,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 13. 经销商拜访小结
	asCore.sendPostBFXJ = function(sendUrl, jxs_id, bcbfxj, bcbfxjzp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : jxs_id,
			bcbfxj : bcbfxj,
			bcbfxjzp : bcbfxjzp,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 14. 经销商下次拜访计划
	asCore.sendPostXCBFJH = function(sendUrl, jxs_id, xcbfrq, xcbfmb, sczp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : jxs_id,
			xcbfrq : xcbfrq,
			xcbfmb : xcbfmb,
			sczp : sczp,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 15. 经销商拜访签退
	asCore.sendPostJXSBFQT = function(sendUrl, jxs_id, qtdz, qtzp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : jxs_id,
			qtdz : qtdz,
			qtzp : qtzp,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 16. 网点拜访列表
	asCore.sendPostWDBFLB = function(sendUrl, type, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			type : type,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 18. 网点拜访记录详情
	asCore.sendWdVisitDetail = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 19 网点拜访签到
	asCore.sendWdbfqd = function(sendUrl, wdid, qddz, qdzp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : wdid,
			qddz : qddz,
			qdzp : qdzp,
			userid : userid
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 20. 本公司导购
	asCore.sendBgsdg = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 21. 导购员在岗检查
	asCore.sendDgyzgjc = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 22. 导购员在岗检查-提交
	asCore.sendDgyzgjctj = function(sendUrl, dg_id, dz, sfzg, jcms, sczp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			dg_id : dg_id,
			dz : dz,
			sfzg : sfzg,
			jcms : jcms,
			sczp : sczp
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 23. 经销商导购
	asCore.sendJxsdg = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 24. 物料检查
	asCore.sendWljc = function(sendUrl, wdid, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		data.id = wdid;
		data.bf_id = id;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 25. 添加物料检 查
	asCore.sendTjwljc = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 26. 修改物料检查
	asCore.sendXgwljc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		debugger
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 27. 删除物料检查
	asCore.sendScwljc = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		debugger
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 28. 货架陈列
	asCore.sendHjcl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 29. 添加货架陈列 http://61.129.51.183:9986/index/mobile/tjhjcl
	asCore.sendTjhjcl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 30. 货架陈列明细 地址：http://61.129.51.183:9986/index/mobile/hjclde
	asCore.sendHjclde = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 31. 修改货架陈列 地址：http://61.129.51.183:9986/index/mobile/xghjcl
	asCore.sendXghjcl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 32. 删除货架陈列 地址：http://61.129.51.183:9986/index/mobile/schjcl
	asCore.sendSchjcl = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 33. 产品检查 地址：http://61.129.51.183:9986/index/mobile/cpjc
	asCore.sendCpjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 34. 库存检查 ：http://61.129.51.183:9986/index/mobile/kcjc
	asCore.sendKcjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 35. 添加库存检查 ：http://61.129.51.183:9986/index/mobile/tjkcjc
	asCore.sendTjkcjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 36. 库存检查明细 地址：http://61.129.51.183:9986/index/mobile/kcjcmx
	asCore.kcjcmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 37. 修改库存检查 地址：http://61.129.51.183:9986/index/mobile/xgkcjc
	asCore.sendXgkcjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	}
	// 38. 删除库存检查 ：http://61.129.51.183:9986/index/mobile/sckcjc
	asCore.sendSckcjc = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 39. 销量汇报列表页 地址：http://61.129.51.183:9986/index/mobile/xlhb
	asCore.xlhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 40. 提交销量汇报 地址：http://61.129.51.183:9986/index/mobile/tjxlhb
	asCore.tjxlhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 41. 订单汇报 地址：http://61.129.51.183:9986/index/mobile/ddhb
	asCore.ddhb = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			bf_id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 42. 新增订单 地址：http://61.129.51.183:9986/index/mobile/xzdd
	asCore.xzdd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 43. 添加订单明细 地址：http://61.129.51.183:9986/index/mobile/tjddmx
	asCore.tjddmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 44.删除订单 地址：http://61.129.51.183:9986/index/mobile/scdd
	asCore.scdd = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			oid : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 45. 修改订单 地址：http://61.129.51.183:9986/index/mobile/xgdd
	asCore.xgdd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 46.修改订单明细 地址：http:// 61.129.51.183:9986/index/mobile/xgddmx
	asCore.xgddmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 47.添加竞品汇报 地址：http://61.129.51.183:9986/index/mobile/tjjphb
	asCore.tjjphb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 48.竞品汇报列表 地址：http://61.129.51.183:9986/index/mobile/jphb
	asCore.jphb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 49.添加网点拜访小结 地址：http://61.129.51.183:9986/index/mobile/wdbfxj
	asCore.wdbfxj = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 50.离店签退 地址：http://61.129.51.183:9986/index/mobile/ldqt
	asCore.ldqt = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 51.市场活动拜访-本期活动列表 地址：http://61.129.51.183:9986/index/mobile/schdbf_wdlb
	asCore.schdbf_wdlb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 52.市场活动拜访-活动列表 地址：http://61.129.51.183:9986/index/mobile/schdbf_bqhd
	asCore.schdbf_bqhd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 53.添加市场活动拜访 地址：http://61.129.51.183:9986/index/mobile/xzsjhdbf
	asCore.xzsjhdbf = function(sendUrl, dwdz, Sfjyhx, hdms, hdzp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			dwdz : dwdz,
			Sfjyhx : Sfjyhx,
			hdms : hdms,
			hdzp : hdzp
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 54.签到汇报 地址：http://61.129.51.183:9986/index/mobile/qdhb
	asCore.qdhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 55.下属签到汇报 地址：http://61.129.51.183:9986/index/mobile/xsqdhb
	asCore.xsqdhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 56.签到汇报详情 地址：http://61.129.51.183:9986/index/mobile/qdhbxq
	asCore.qdhbxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 57.请假申请列表 地址：http://61.129.51.183:9986/index/mobile/qjsq
	asCore.qjsq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 58.添加请假申请 地址：http://61.129.51.183:9986/index/mobile/tjqjsq
	asCore.tjqjsq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 59.请假申请详情 地址：http://61.129.51.183:9986/index/mobile/qjsqxq
	asCore.qjsqxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 60.出差申请列表 地址：http://61.129.51.183:9986/index/mobile/ccsq
	asCore.ccsq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 61.添加出差申请 地址：http://61.129.51.183:9986/index/mobile/tjccsq
	asCore.tjccsq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 62.添加出差申请明细 地址：http://61.129.51.183:9986/index/mobile/tjccsqmx
	asCore.tjccsqmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 63.出差申请详情 地址：http://61.129.51.183:9986/index/mobile/ccsqxq
	asCore.ccsqxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 64.加班申请列表 地址：http://61.129.51.183:9986/index/mobile/jbsq
	asCore.jbsq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 65.添加加班申请 地址：http://61.129.51.183:9986/index/mobile/tjjbsq
	asCore.tjjbsq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 66. 加班申请详情 地址：http://61.129.51.183:9986/index/mobile/jbsqxq
	asCore.jbsqxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 67.销售订单列表 地址：http://61.129.51.183:9986/index/mobile/xsdd
	asCore.xsdd = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 68.添加销售订单 地址：http://61.129.51.183:9986/index/mobile/tjxsdd
	asCore.tjxsdd = function(sendUrl, cusName, Shr, Dh, Shdz, Jyfhrq, Zysx, Sczp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			cusName : cusName,
			Shr : Shr,
			Dh : Dh,
			Shdz : Shdz,
			Jyfhrq : Jyfhrq,
			Zysx : Zysx,
			Sczp : Sczp
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 69.添加销售订单明细 地址：http://61.129.51.183:9986/index/mobile/tjxsddmx
	asCore.tjxsddmx = function(sendUrl, Kind, product, xsry, Sn, Ygj, Xgj, dhsl, Dzsl, yje, ysje, beizhu, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			Kind : Kind,
			product : product,
			xsry : xsry,
			Sn : Sn,
			Ygj : Ygj,
			Xgj : Xgj,
			dhsl : dhsl,
			Dzsl : Dzsl,
			yje : yje,
			ysje : ysje,
			beizhu : beizhu
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 70. 销售订单详情 地址：http://61.129.51.183:9986/index/mobile/xsddxq
	asCore.xsddxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 71.网点订单列表 地址：http://61.129.51.183:9986/index/mobile/wddd
	asCore.wddd = function(sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 72.添加网点订单 地址：http://61.129.51.183:9986/index/mobile/tjwddd
	asCore.tjwddd = function(sendUrl, wd, jxs, lxr, dh, dz, pslx, bz, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			wd : wd,
			jxs : jxs,
			lxr : lxr,
			dh : dh,
			dz : dz,
			pslx : pslx,
			bz : bz
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 73.添加网点订单明细 地址：http://61.129.51.183:9986/index/mobile/tjwdddmx
	asCore.tjwdddmx = function(sendUrl, cp, ghj, ddsl_x, ddsl_g, cxhd, cpbz, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			cp : cp,
			ghj : ghj,
			ddsl_x : ddsl_x,
			ddsl_g : ddsl_g,
			cxhd : cxhd,
			cpbz : cpbz
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 74.网点订单详情 地址：http://61.129.51.183:9986/index/mobile/wdddxq
	asCore.wdddxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 75.万用申请单列表 地址：http://61.129.51.183:9986/index/mobile/wysqd
	asCore.wysqd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 76.添加万用申请单 地址：http://61.129.51.183:9986/index/mobile/tjwysqd
	asCore.tjwddd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 77.万用申请单详情 地址：http://61.129.51.183:9986/index/mobile/wysqdxq
	asCore.wysqdxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 78.日常费用报销列表 地址：http://61.129.51.183:9986/index/mobile/rcfybx
	asCore.rcfybx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 79.添加日常费用报销 地址：http://61.129.51.183:9986/index/mobile/tjrcfybx
	asCore.tjrcfybx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 80.添加日常费用报销明细 地址：http://61.129.51.183:9986/index/mobile/tjrcfybxmx
	asCore.tjrcfybxmx = function(sendUrl, feis, start, end, chufa, jxs, mudi, remark, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			feis : feis,
			start : start,
			end : end,
			chufa : chufa,
			jxs : jxs,
			mudi : mudi,
			remark : remark
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 81.日常费用报销详情 地址：http://61.129.51.183:9986/index/mobile/rcfybxxq
	asCore.rcfybxxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 82.退货管理列表 地址：http://61.129.51.183:9986/index/mobile/thgl
	asCore.thgl = function(sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 83.添加退货 地址：http://61.129.51.183:9986/index/mobile/tjth
	asCore.tjth = function(sendUrl, jxs, thyy, sczp, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			jxs : jxs,
			thyy : thyy,
			sczp : sczp
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 84.添加退货明细 地址：http://61.129.51.183:9986/index/mobile/tjthmx
	asCore.tjthmx = function(sendUrl, Jx, cp, bm, dj, thsl, thje, pcsm, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			Jx : Jx,
			cp : cp,
			bm : bm,
			dj : dj,
			thsl : thsl,
			thje : thje,
			pcsm : pcsm
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 85.退货详情 地址：http://61.129.51.183:9986/index/mobile/thxq
	asCore.thxq = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 86.市场活动申请列表 地址：http://61.129.51.183:9986/index/mobile/schdsq
	asCore.schdsq = function(sendUrl, Type_id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			Type_id : Type_id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 87.活动执行检查列表 地址：http://61.129.51.183:9986/index/mobile/hdzxjclb
	asCore.hdzxjclb = function(sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 88.网点活动明细 地址：http://61.129.51.183:9986/index/mobile/wdhdmx
	asCore.wdhdmx = function(sendUrl, net_id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			net_id : net_id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 89.活动执行审核网点列表 地址：http://61.129.51.183:9986/index/mobile/hdzxsh
	asCore.hdzxsh = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 90.活动执行审核网点明细 地址：http://61.129.51.183:9986/index/mobile/hdzxshmx
	asCore.hdzxshmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 91.活动执行审核网点列表明细汇报列表
	// 地址：http://61.129.51.183:9986/index/mobile/hdzxshmxhblb
	asCore.hdzxshmxhblb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 92.市场活动审核通过 地址：http://61.129.51.183:9986/index/mobile/schdshtg
	asCore.schdshtg = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 93.市场活动重新整改 地址：http://61.129.51.183:9986/index/mobile/schdcxzg
	asCore.schdcxzg = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 94.活动执行反馈网点列表 地址：http://61.129.51.183:9986/index/mobile/schdfk
	asCore.schdfk = function(sendUrl, type_id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
				fb : type_id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 95.活动执行反馈网点列表明细 地址：http://61.129.51.183:9986/index/mobile/schdfkmx
	asCore.schdfkmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 96. 活动执行反馈网点列表明细汇报列表
	// 地址：http://61.129.51.183:9986/index/mobile/schdfkmxhblb
	asCore.schdfkmxhblb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 98.经销商市场费用对账单 地址：http://61.129.51.183:9986/index/mobile/jxsscfydzd
	asCore.jxsscfydzd = function(sendUrl, Page, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			Page : Page
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 99.经销商市场费用对账单明细 地址：http://61.129.51.183:9986/index/mobile/jxsscfydzdmx
	asCore.jxsscfydzdmx = function(sendUrl, id, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			id : id
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 100.Ti费用核销查询 地址：http://61.129.51.183:9986/index/mobile/tifyhxcx
	asCore.tifyhxcx = function(sendUrl, Page, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {
			Page : Page
		};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 101.销售进度—本月 地址：http://61.129.51.183:9986/index/mobile/xsjd
	asCore.xsjd = function(sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 102.销售进度—本季 地址：http://61.129.51.183:9986/index/mobile/xsjdbj
	asCore.xsjdbj = function(sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 103.销售进度—本年 地址：http://61.129.51.183:9986/index/mobile/xsjdbn
	asCore.xsjdbn = function(sendUrl, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 104.所属经销商订单查询 地址：http://61.129.51.183:9986/index/mobile/ssjxsddcx
	asCore.ssjxsddcx = function(sendUrl, status, callback) {
		var url = asCore.RequestAddres + sendUrl;
		var data = {};
		if (status) {
			data.status = status;
		}
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 105.所属经销商订单详情 地址：http://61.129.51.183:9986/index/mobile/ssjxsddxq

	// ？？？？？？？？缺失审批记录？？？？？？？？
	asCore.ssjxsddxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 106. 所属经销商对账单 地址：http://61.129.51.183:9986/index/mobile/ssjxsdzd
	asCore.ssjxsdzd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 107. 费用对账单汇总 地址：http://61.129.51.183:9986/index/mobile/ssjxsfydzdhz
	asCore.ssjxsfydzdhz = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 108. 费用对账单明细 地址：http://61.129.51.183:9986/index/mobile/ssjxsfydzdmx
	asCore.ssjxsfydzdmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 109. 贷款对账单 地址：http://61.129.51.183:9986/index/mobile/dkdzd
	asCore.dkdzd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 110. 客户通讯录列表 地址：http://61.129.51.183:9986/index/mobile/khtxl
	asCore.khtxl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 111. 客户通讯录详情 地址：http://61.129.51.183:9986/index/mobile/khtxlxq
	asCore.khtxlxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 112. 经销商资料管理 地址：http://61.129.51.183:9986/index/mobile/jxszlgl
	asCore.jxszlgl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 113. 经销商资料详情 地址：http://61.129.51.183:9986/index/mobile/jxszlxq
	asCore.jxszlxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 114. 经销商数据采集 地址：http://61.129.51.183:9986/index/mobile/jxssjcj
	asCore.jxssjcj = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data)
			},
			error : function(data) {
				callback(data)
			},
			dataType : "json"
		});
	}
	// 115. 系统资料管理 地址：http://61.129.51.183:9986/index/mobile/xtzlgl
	asCore.xtzlgl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 116. 填写系统资料 地址：http://61.129.51.183:9986/index/mobile/txxtzl
	asCore.txxtzl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data)
			},
			error : function(data) {
				callback(data)
			},
			dataType : "json"
		});
	};
	// 117. 网点资料管理 地址：http://61.129.51.183:9986/index/mobile/wdzlgl
	asCore.wdzlgl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 118. 填写网点资料 地址：http://61.129.51.183:9986/index/mobile/txwdzl
	asCore.txwdzl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	var userid = "A";
	// 119. 下属考勤查询-月报表 地址：http://61.129.51.183:9986/index/mobile/xskqcxybb
	asCore.xskqcxybb = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 120. 下属考勤查询-日报表 地址：http://61.129.51.183:9986/index/mobile/xskqcxrbb
	asCore.xskqcxrbb = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 121. 下属工作日报 地址：http://61.129.51.183:9986/index/mobile/xsgzrb
	asCore.xsgzrb = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 122. 下属工作日报-点赞 地址：http://61.129.51.183:9986/index/mobile/dz
	asCore.dz = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 123. 下属工作日报-评论 地址：http://61.129.51.183:9986/index/mobile/pl
	asCore.pl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 124. 下属经销商拜访 地址：http://61.129.51.183:9986/index/mobile/xsjxsbf
	asCore.xsjxsbf = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 125. 下属经销商拜访列表 地址：http://61.129.51.183:9986/index/mobile/xsjxsbflb
	asCore.xsjxsbflb = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 126. 下属网点拜访报表-月报表 地址：http://61.129.51.183:9986/index/mobile/xswdbfbb
	asCore.xswdbfbb = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 127. 下属网点拜访报表-日报表 地址：http://61.129.51.183:9986/index/mobile/xswdbfbbrbb
	asCore.xswdbfbbrbb = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 128. 下属网点拜访报表详情 地址：http://61.129.51.183:9986/index/mobile/xswdbfbbxq
	asCore.xswdbfbbxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 129. 下属拜访轨迹 地址：http://61.129.51.183:9986/index/mobile/xsbfgj
	asCore.xsbfgj = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 130. 下属拜访轨迹详情 地址：http://61.129.51.183:9986/index/mobile/xsbfgjxq
	asCore.xsbfgjxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 131. 日程安排查询 地址：http://61.129.51.183:9986/index/mobile/rcap
	asCore.rcap = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 132. 添加日程安排 地址：http://61.129.51.183:9986/index/mobile/tjrcap
	asCore.tjrcap = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 133. 考勤查询 地址：http://61.129.51.183:9986/index/mobile/kqcx
	asCore.kqcx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 134. 考勤详情 地址：http://61.129.51.183:9986/index/mobile/kqcxxq
	asCore.kqcxxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 135. 企业通讯录 地址：http://61.129.51.183:9986/index/mobile/qytxl
	asCore.qytxl = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 136. 企业通讯录详情 地址：http://61.129.51.183:9986/index/mobile/qytxlxq
	asCore.qytxlxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 137. 客户拜访龙虎榜 地址：http://61.129.51.183:9986/index/mobile/khbflhb
	asCore.khbflhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 138. 销售进度龙虎榜 地址：http://61.129.51.183:9986/index/mobile/xsjdlhb
	asCore.xsjdlhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 139. 所属区域拜访 地址：http://61.129.51.183:9986/index/mobile/xsqybf
	asCore.xsqybf = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 140. 消息 地址：http://61.129.51.183:9986/index/mobile/message
	asCore.message = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 141. 消息详情 地址：http://61.129.51.183:9986/index/mobile/messagedetail
	asCore.messagedetail = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 142. 经销商产品价格 地址：http://61.129.51.183:9986/index/mobile/jxsprice
	asCore.jxsprice = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 143. 二级渠道类型 地址：http://61.129.51.183:9986/index/mobile/getchannel2
	asCore.getchannel2 = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 144. 客户类型 地址：http://61.129.51.183:9986/index/mobile/getcustype
	asCore.getcustype = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 145. 系统资料详情 地址：http://61.129.51.183:9986/index/mobile/systemzlxq
	asCore.systemzlxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 146. 网点资料详情 地址：http://61.129.51.183:9986/index/mobile/netzlxq
	asCore.netzlxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 147. 网点条码-已进场 地址：http://61.129.51.183:9986/index/mobile/wdyjc
	asCore.wdyjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 148. 网点条码-待审核 地址：http://61.129.51.183:9986/index/mobile/wdsqz
	asCore.wdsqz = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 149. 添加进场条码 地址：http://61.129.51.183:9986/index/mobile/addtm
	asCore.addtm = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 150. 产品列表 地址：http://61.129.51.183:9986/index/mobile/getpro
	asCore.getpro = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 151. 网点数据采集 地址：http://61.129.51.183:9986/index/mobile/netsjcj
	asCore.netsjcj = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 152. 系统数据采集 地址：http://61.129.51.183:9986/index/mobile/syssjcj
	asCore.syssjcj = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 153. 经销商拜访点赞 地址：http://61.129.51.183:9986/index/mobile/jxsbfdz
	asCore.jxsbfdz = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 154. 经销商拜访评论 地址：http://61.129.51.183:9986/index/mobile/jxsbfpl
	asCore.jxsbfpl = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 155. 经销商拜访评论查看 地址：http://61.129.51.183:9986/index/mobile/jxsbfplck
	asCore.jxsbfplck = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 156. 网点等级 地址：http://61.129.51.183:9986/index/mobile/netlevel
	asCore.netlevel = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 157. 修改网点 地址：http://61.129.51.183:9986/index/mobile/xiugainet
	asCore.xiugainet = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 158. 复制经销商地址 地址：http://61.129.51.183:9986/index/mobile/getjxsaddr
	asCore.getjxsaddr = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 159. 竞品品类 地址：http://61.129.51.183:9986/index/mobile/procategory
	asCore.procategory = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 160. 下拉框竞品 地址：http://61.129.51.183:9986/index/mobile/backcompitor
	asCore.backcompitor = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 161. 增加网点竞品 地址：http://61.129.51.183:9986/index/mobile/newcategory
	asCore.newcategory = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 162. 网点竞品 地址：http://61.129.51.183:9986/index/mobile/net_competitor
	asCore.net_competitor = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 163. 全部已读 地址：http://61.129.51.183:9986/index/mobile/allyidu
	asCore.allyidu = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 164. 区域类型 地址：http://61.129.51.183:9986/index/mobile/areatypes
	asCore.areatypes = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 165. 根据财年获得考核期 地址：http://61.129.51.183:9986/index/mobile/cainiantokaoheqi
	asCore.cainiantokaoheqi = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 166. 客户发货龙虎榜 地址：http://61.129.51.183:9986/index/mobile/fhlhb
	asCore.fhlhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 167. 客户费用龙虎榜 地址：http://61.129.51.183:9986/index/mobile/khfylhb
	asCore.khfylhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 168. 分区列表 地址：http://61.129.51.183:9986/index/mobile/getallfenqu
	asCore.getallfenqu = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 169. 分区进度 地址：http://61.129.51.183:9986/index/mobile/fenqujindu
	asCore.fenqujindu = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};

	// 170. 仓库列表 地址：http://61.129.51.183:9986/index/mobile/cangkulist
	asCore.cangkulist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 171. 物料类型 地址：http://61.129.51.183:9986/index/mobile/ mattype
	asCore.mattype = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 172. 库存查询 地址：http://61.129.51.183:9986/index/mobile/kccx
	asCore.kccx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 173. 消息提醒设置页面 地址：http://61.129.51.183:9986/index/mobile/xxtixing
	asCore.xxtixing = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 174. 消息提醒设置 地址：http://61.129.51.183:9986/index/mobile/xxset
	asCore.xxset = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 7-2. 工作日报类型 地址：http://61.129.51.183:9986/index/mobile/gzrblx
	asCore.gzrblx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 175. 修改物料检查页面 地址：http://61.129.51.183:9986/index/mobile/wljcmx
	asCore.wljcmx = function(sendUrl, data, callback) {
		data.userid = userid;
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 176. 货架陈列类型 地址：http://61.129.51.183:9986/index/mobile/hjcllx
	asCore.hjcllx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 177. 临期类型 地址：http://61.129.51.183:9986/index/mobile/kctype
	asCore.kctype = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 178. 竞品汇报明细 地址：http://61.129.51.183:9986/index/mobile/jphbmx
	asCore.jphbmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 179. 修改竞品汇报 地址：http://61.129.51.183:9986/index/mobile/xgjphb
	asCore.xgjphb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 180. 网点拜访小结内容 地址：http://61.129.51.183:9986/index/mobile/wdbfnr
	asCore.wdbfnr = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 181. 离店签退内容 地址：http://61.129.51.183:9986/index/mobile/ldqtnr
	asCore.ldqtnr = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 182. 进场条码添加页面产品列表 地址：http://61.129.51.183:9986/index/mobile/nocodelist
	asCore.nocodelist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 183. 添加进场条码 地址：http://61.129.51.183:9986/index/mobile/addbarcode
	asCore.addbarcode = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.uesrid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 184. 产品检查明细内容 地址：http://61.129.51.183:9986/index/mobile/cpjcmx
	asCore.cpjcmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 185. 产品检查明细修改 地址：http://61.129.51.183:9986/index/mobile/xgcpjc
	asCore.xgcpjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.uesrid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 186. 销量汇报明细内容 地址：http://61.129.51.183:9986/index/mobile/xlhbmx
	asCore.xlhbmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 187. 订单新增默认数据 地址：http://61.129.51.183:9986/index/mobile/orderdefault
	asCore.orderdefault = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 188. 促销活动列表 地址：http://61.129.51.183:9986/index/mobile/youhuilist
	asCore.youhuilist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 189. 添加明细产品列表带默认价格 地址：http://61.129.51.183:9986/index/mobile/orderprolist
	asCore.orderprolist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 190. 订单详情 地址：http://61.129.51.183:9986/index/mobile/ordermx
	asCore.ordermx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 191. 订单明细详情 地址：http://61.129.51.183:9986/index/mobile/ddmxdetail
	asCore.ddmxdetail = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 192. 删除订单明细 地址：http://61.129.51.183:9986/index/mobile/delorderdetail
	asCore.delorderdetail = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 193. 市场活动拜访-历史活动地址：http://61.129.51.183:9986/index/mobile/lishihuodong
	asCore.lishihuodong = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 194. 添加签到汇报 地址：http://61.129.51.183:9986/index/mobile/addqdhb
	asCore.addqdhb = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 195. 所属市场活动拜访 地址：http://61.129.51.183:9986/index/mobile/suoshuhuibao
	asCore.suoshuhuibao = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 196. 所属市场活动拜访详情 地址：http://61.129.51.183:9986/index/mobile/suoshuhuibaoxq
	asCore.suoshuhuibaoxq = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 197. 所属市场活动拜访活动核检列表 地址：http://61.129.51.183:9986/index/mobile/hdhjlist
	asCore.hdhjlist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 198. 添加拜访活动核检 地址：http://61.129.51.183:9986/index/mobile/addhj
	asCore.addhj = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 199. 请假类型 地址：http://61.129.51.183:9986/index/mobile/qjlx
	asCore.qjlx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 200. 交通工具 地址：http://61.129.51.183:9986/index/mobile/jtgj
	asCore.jtgj = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 201. 出差类型 地址：http://61.129.51.183:9986/index/mobile/chuchaileixing
	asCore.chuchaileixing = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 202. 陪同人员列表 地址：http://61.129.51.183:9986/index/mobile/peitongrenlist
	asCore.peitongrenlist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 203. 提交出差申请，将进入工作流地址：http://61.129.51.183:9986/index/mobile/tijiaochuchai
	asCore.tijiaochuchai = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 204. 删除出差明细 地址：http://61.129.51.183:9986/index/mobile/delccmx
	asCore.delccmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 205. 经销商下拉列表 地址：http://61.129.51.183:9986/index/mobile/ddjxslist
	asCore.ddjxslist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 206. 删除出差申请 地址：http://61.129.51.183:9986/index/mobile/delccapply
	asCore.delccapply = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 207. 签到汇报类型 地址：http://61.129.51.183:9986/index/mobile/qdhblx
	asCore.qdhblx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 208.销售订单产品销售物料列表带基础数据返回地址：http://61.129.51.183:9986/index/mobile/orderprodetail
	asCore.orderprodetail = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 209. 销售人员信息 地址：http://61.129.51.183:9986/index/mobile/sealsman
	asCore.sealsman = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 210. 删除销售订单 地址：http://61.129.51.183:9986/index/mobile/xsddsc
	asCore.xsddsc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 211. 删除销售订单明细 地址：http://61.129.51.183:9986/index/mobile/xsddmxdel
	asCore.xsddmxdel = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 212. 网点下拉列表 地址：http://61.129.51.183:9986/index/mobile/ddnetlist
	asCore.ddnetlist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 213.网点订单产品销售物料列表带基础数据返回地址：http://61.129.51.183:9986/index/mobile/netorderprodetail
	asCore.netorderprodetail = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 214. 万用申请类型 地址：http://61.129.51.183:9986/index/mobile/wylx
	asCore.wylx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 215. 部门列表带模糊查询 地址：http://61.129.51.183:9986/index/mobile/bmlist
	asCore.bmlist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 216. 支付方式 地址：http://61.129.51.183:9986/index/mobile/paylist
	asCore.paylist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 217. 人员列表带模糊查询 地址：http://61.129.51.183:9986/index/mobile/emlist
	asCore.emlist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 218. 考核期 地址：http://61.129.51.183:9986/index/mobile/kaohelist
	asCore.kaohelist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 219.万用申请及日常费用报销可用费用科目地址：http://61.129.51.183:9986/index/mobile/richangkemuliset
	asCore.richangkemuliset = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "GET",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 220. 添加万用申请明细 地址：http://61.129.51.183:9986/index/mobile/tjwysqmx
	asCore.tjwysqmx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 221. 删除万用申请费用明细 地址：http://61.129.51.183:9986/index/mobile/wymxsc
	asCore.wymxsc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 222. 删除万用申请 地址：http://61.129.51.183:9986/index/mobile/wysqsc
	asCore.wysqsc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 223. 提交万用申请单（提交工作流）地址：http://61.129.51.183:9986/index/mobile/wysqdinflow
	asCore.wysqdinflow = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 224. 删除日常报销明细 地址：http://61.129.51.183:9986/index/mobile/rcfybxmxsc
	asCore.rcfybxmxsc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 225. 删除日常报销 地址：http://61.129.51.183:9986/index/mobile/rcfybxsc
	asCore.rcfybxsc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 226.提交日常费用报表（进入工作流）地址：http://61.129.51.183:9986/index/mobile/rcfybxinflow
	asCore.rcfybxinflow = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 227. 添加万用申请单(完整) 地址：http://61.129.51.183:9986/index/mobile/fullwysqd
	asCore.fullwysqd = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 228. 添加日常费用报销(完整版)地址：http://61.129.51.183:9986/index/mobile/fullrcfybx
	asCore.fullrcfybx = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 229. 商品分类 地址：http://61.129.51.183:9986/shop/category/all
	asCore.all = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 229. 流程图 地址：http://61.129.51.183:9986/index/mobile/workflowchart
	asCore.workflowchart = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 230. 活动检查列表 地址：http://61.129.51.183:9986/index/mobile/schdjclist
	asCore.schdjclist = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 231. 活动检查添加 地址：http://61.129.51.183:9986/index/mobile/newschdjc
	asCore.newschdjc = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 232.	活动检查签到类型列表 地址：http://61.129.51.183:9986/index/mobile/newschdjctype
	asCore.newschdjctype = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 233. 提交活动检查 地址：http://61.129.51.183:9986/index/mobile/schdjctijiao
	asCore.schdjctijiao = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	// 234. 市场活动审核页面 地址：http://61.129.51.183:9986/index/mobile/schdshpage
	asCore.schdshpage = function(sendUrl, data, callback) {
		var url = asCore.RequestAddres + sendUrl;
		data.userid = userid;
		$.ajax({
			url : url,
			ansyc : true,
			type : "POST",
			data : data,
			success : function(data) {
				callback(data);
			},
			error : function(data) {
				callback(data);
			},
			dataType : "json"
		});
	};
	asCore.isNull = function(data) {
		var val;
		if (data == "null" || data == null || data == undefined) {
			val = "";
		} else {
			val = data;
		}
		return val;
	}
	asCore.accSub = function(arg1, arg2) {
		var r1, r2, m, n;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch (e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch (e) {
			r2 = 0;
		}
		m = Math.pow(10, Math.max(r1, r2)); // last modify by deeka //动态控制精度长度
		n = (r1 >= r2) ? r1 : r2;
		return ((arg1 * m - arg2 * m) / m).toFixed(n);
	}
	asCore.accAdd = function(arg1, arg2) {
		var r1, r2, m, c;
		try {
			r1 = arg1.toString().split(".")[1].length;
		} catch (e) {
			r1 = 0;
		}
		try {
			r2 = arg2.toString().split(".")[1].length;
		} catch (e) {
			r2 = 0;
		}
		c = Math.abs(r1 - r2);
		m = Math.pow(10, Math.max(r1, r2));
		if (c > 0) {
			var cm = Math.pow(10, c);
			if (r1 > r2) {
				arg1 = Number(arg1.toString().replace(".", ""));
				arg2 = Number(arg2.toString().replace(".", "")) * cm;
			} else {
				arg1 = Number(arg1.toString().replace(".", "")) * cm;
				arg2 = Number(arg2.toString().replace(".", ""));
			}
		} else {
			arg1 = Number(arg1.toString().replace(".", ""));
			arg2 = Number(arg2.toString().replace(".", ""));
		}
		return (arg1 + arg2) / m;
	}
	asCore.accDiv = function(arg1, arg2) {
		var t1 = 0, t2 = 0, r1, r2;
		try {
			t1 = arg1.toString().split(".")[1].length;
		} catch (e) {
		}
		try {
			t2 = arg2.toString().split(".")[1].length;
		} catch (e) {
		}
		with (Math) {
			r1 = Number(arg1.toString().replace(".", ""));
			r2 = Number(arg2.toString().replace(".", ""));
			return (r1 / r2) * pow(10, t2 - t1);
		}
	}
	asCore.accMul = function(arg1, arg2) {
		var m = 0, s1 = arg1.toString(), s2 = arg2.toString();
		try {
			m += s1.split(".")[1].length;
		} catch (e) {
		}
		try {
			m += s2.split(".")[1].length;
		} catch (e) {
		}
		return Number(s1.replace(".", "")) * Number(s2.replace(".", "")) / Math.pow(10, m);
	}
	window.asCore = asCore;
	return asCore;
});