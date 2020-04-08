//登录成功后定时运行
var InterFunc=function(){
    //  console.log("addId:"+ $F.getNewId());
    if ($T.runkey){
        $F.post("chkUser",{
            async:true,
            data:{
                token:$T.runkey
            },
            f:function(err){
                $F.err(" Check User Failed:"+err.toString());
                setTimeout(InterFunc,5000);
            },
            s:function(d){
                if  (d.code>0){
                    $F.log("check"," Check User:"+d.code+" now:"+$.now());
                    setTimeout(InterFunc,300000);
                }else{
                    $IECache.set("logKey","");
                    alert("登录有校性检查失败，请重新登录")
                    window.location.reload();
                }
            }
        })
    }
}