//第一步,获取服务器信息
$.ajax({
    type : 'POST',
    url : '配置的URL请求'+"配置服务名"+"/loginMB",
    data : JSON.stringify({
        ds:'db', //配置的数据源
        flag:'xx',//配置的运行标志
    }),
    dataType : 'json',
    contentType : 'application/json;charset=UTF-8',
    cache : false ,
    async : false || opts.async
}).fail(function(jqXHR, textStatus, errorThrown){
    //异常错误处理
}).done(function(d){
    if (d){
        if (d.code>0){
            //成功，d.value 为成功后的信息
            loginSucc(d.value); //成功后调用
            //成功后转入首页
        }else{
            //失败
            // 直接进入配置界面
        }
    }else{
        //异常错误处理
    }
}).always(function(){
});

var loginSucc=function(initStr){
    var tmpInit=JSON.parse(Base64.decode($INITSTR));
    if (tmpInit){
        $T={
            ver:tmpInit.vv,
            title:tmpInit.tt,
            cpflag:tmpInit.cy,
            debug:tmpInit.dg,
            dataUrl:tmpInit.ds,
            sName:tmpInit.sN,
            db:tmpInit.db,
            transFlag:tmpInit.tf,
            runFlag:tmpInit.rf,
            runkey:tmpInit.runkey,
            runInt:tmpInit.runInt,
            user:undefined,
            ch:tmpInit.ch,
            m5:tmpInit.m5,
            imgf:tmpInit.imgf,
            dataUrl1:function(){
                if (this.transFlag==1){
                    return this.dataUrl;
                }else{
                    var mTmp='http://xxxx'; //配置的URL
                    return mTmp+this.dataUrl;
                }
            }
        }
        if ($T.sName=="" & $T.db==""){
            alert("未指定数据源");
            return;
        }
        $H.loadJS("h5Lib/sys/functionLib.min.js?v="+$T.ver); //动态加载
        var curKey ='';//缓存中获取上次登录的tokenid
        if ($F.sL($T.runkey)>0){
            curKey=$T.runkey;
        }
        if ($F.sL(curKey)>0) {
            //校验
            $F.post('genObjN', {
                async: true,
                data: {
                    name: 'login.validUserToken',
                    token: curKey
                },
                f: function (msg) {
                    //进入登录页面
                },
                s: function (d) {
                    if (d.code > 0) {
                        //直接进入首页
                        //mainScreen(d.value,curKey);
                    } else {
                        //进入登录页
                    }
                }
            })
        } else {
            //进入登录页
        }
    }else{
        alert("请求失败："+d.message);
    }
}