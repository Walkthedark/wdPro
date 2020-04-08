
//登录请求
$F.post('userLogin',{
    async:true,
    data:{
        dbPool:$T.db, //配置的数据源
        cpid:accId,
        loginId:userName,
        pwd:pwd,
        type:0, //配置的类型
        remoteKey:'remoteKey', //每个手机唯一的KEY
        imgKey:'',
        validNum:''
    },
    f:function(msg){
        $F.info('登录异常错误:'+msg.toString());
        $("[name=username]").focus();
    },
    s:function(d){
        if (d){
            if (d.code>0){
                //登录成功，d.value 为成功后的tokenId
                //d.value 为登录成功后的当前用户信息需缓存
                $T.event=new CustEvent("appEvent");
                $T.runkey = curKey;
                $T.user =d.value;
                $T.companyId=$T.user.companyId;
                $T.runInt = $T.user.loginNum;
                if ($T.sName=="" & $T.db==""){
                    alert("未指定数据源");
                    return;
                }
                setTimeout(InterFunc, 1000);

                //成功后转入首页
            }else{
                //登录失败 失败码为d.code 对应如下
                // -1 其它错误 -2 用户帐号表错误  -10 帐号为空 -3 重复登录  -5 密码错误  -6 登录表结构错误  ,dbPoolError,connectError,statmentError
            }
        }else{
            //异常错误处理
        }
    }

});