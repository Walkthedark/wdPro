$H={
    loadCSS : function(url, id,parent) {
        if (id !== undefined && $('head').find("#" + id).length > 0)
            return;
        var css = document.createElement("link");
        css.href = url;
        if (id !== undefined)
            css.id = id;
        css.rel = "stylesheet";
        css.type = "text/css";
        if (parent){
            $(parent).append(css);
        }else{
            $('head').append(css);
        }
    },
    loadJS : function(url, id,parent) {
        if (id !== undefined && $('head').find("#" + id).length > 0)
            return;
        var js = document.createElement("script");
        js.id = id;
        js.type = "text/javascript";
        js.src = url;
        if (parent){
            $(parent).append(js);
        }else{
            $('head').append(js);
        }
    },
    loadHtml:function(url,cacheFlag){
        if (cacheFlag==undefined) cacheFlag=false;
        var Rt='';
        $.ajax({
            type : 'GET',
            url : url,
            dataType : 'text',
            contentType : 'application/json;charset=UTF-8',
            cache : false || cacheFlag,
            async : false,
        }).fail(function(jqXHR, textStatus, errorThrown){
            console.error(jqXHR,textStatus);
            alert("请求HTML失败 URL:"+url+ "err:"+textStatus.toString());
        }).done(function(d){
            Rt=d;
        })
        return Rt;
    }
}