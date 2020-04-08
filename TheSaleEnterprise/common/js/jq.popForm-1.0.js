/**
 * Created by Administrator on 2017/6/10.
 */
(function($) {
    var jqform = function(t, args) {
        var a = this;
        a.ObjDom=$(t);
        a.options = $.extend({
            width:'300px',
            height:'100px',
            top:undefined,
            left:undefined,
            backcolor: '#FFFFFF',
            noTitle:false,
            caption:'',
            modelShow:false,
            // minbtn:true,   //最小化按钮
            maxbtn:true,   //最大化按钮
            closebtn:true, // 关闭按钮
            escapable: true, //esc 关闭
            removable : true,  //关闭后是否移除content内容
            onClose: undefined,    //关闭后事件
            onCloseBefore: undefined,    //关闭前事件
            onOpen: undefined,            //窗口打开并显示后
            canMove:true,               //是否能移动
            canSize:true,               //是否能改变大小
            onSize:false,                //改变大小后事件
            closebar:false,             //是否有确认、取消安钮
            closeOk:true,
            closeCancel:true, 
            parentDom:undefined,
            otherClose:false  //点击任意地方关闭

        }, args);
        //console.log(a.options);
        var maincss={
            "background-color": a.options.backcolor,
            width:a.options.width,
            height:a.options.height,
        }


        a.winRoot=$("<div class='popWinDig'/>").css(maincss);
        if (a.options.parentDom==undefined){
            a.winRoot.appendTo('body')
        }else{
            a.winRoot.appendTo(a.options.parentDom);
        }

        a.winRoot.css({
            "z-index":1001
        })
        if (!a.options.top){
            var h = a.winRoot.outerHeight(), top = ($(window).height() - h) / 2;
            if (top<0) top=0;
            a.options.top=top+"px"
        }
        a.winRoot.css('top',a.options.top);
        if (!a.options.left){
            var w = a.winRoot.outerWidth(), left = ($(window).width() - w) / 2;
            if (left<0) left=0;
            a.options.left=left+"px"
        }
        a.winRoot.css('left',a.options.left);
        if (!a.options.noTitle){
            a.winRoot.hover(function(){
                a.winTitle.addClass('activeselect');
            },function(){
                a.winTitle.removeClass('activeselect');
            })
            a.winTitle=$("<div class='popWinTitle unselectable' >").appendTo(a.winRoot);
            $("<label class='caption unselectable' >"+a.options.caption+" </label>").appendTo(a.winTitle);
            var btnBar=$("<div class='btnBar'>").appendTo(a.winTitle);
            $("<a class='opico closebtn fa fa-window-close' title='关闭' style='float: right'/>").appendTo(btnBar).off('click').on('click',function(){
                a.destroy();
            });
            $("<a class='opico maxbtn fa fa-window-maximize'  title='最大化' style='float: right' />").appendTo(btnBar).off('click').on('click',function(){
                $(this).css({display:'none'});
                a.winRoot.css({width:'100%',height:'100%',top:'0px',left:'0px'});
                $('.restorebtn',a.winTitle).css({display:''});
                $(window).trigger("resize");
                if ($.isFunction(a.options.onSize)){
                    a.options.onSize();
                }
            });
            $("<a class='opico restorebtn fa fa-window-restore' style='display: none;float: right' title='恢复窗口大小'   />").appendTo(btnBar).off('click').on('click',function(){
                $(this).css({display:'none'});
                var  maincss={width:a.options.width,height:a.options.height};
                if (a.options.top)
                    maincss['top']=a.options.top;
                if (a.options.left){
                    maincss['left']=a.options.left;
                }
                a.winRoot.css(maincss);
                $('.maxbtn',a.winTitle).css({display:''});
                // if (a.options.minbtn)
                //     $('.maxbtn',a.winTitle).css({display:''});
            });
            if (!a.options.closebtn)
                $('.closebtn',a.winTitle).css({display: 'none'});
            if (!a.options.maxbtn){
                $('.maxbtn',a.winTitle).css({display: 'none'});
                $('.restorebtn',a.winTitle).css({display: 'none'});
            }else{
                $('.maxbtn',a.winTitle).css({display: ''});
                $('.restorebtn',a.winTitle).css({display: 'none'});
            }
        }
        if (a.options.closebar){
            a.content=$("<div class='contentUseBar'/>").appendTo(a.winRoot);
            a.btBar=$("<div class='BtBar'/>").appendTo(a.winRoot);
            if (a.options.closeCancel)
                $("<button class='fa fa-remove unselectable  btBarCancel' style='float: right;margin-right: 10px;width: 80px;height: 25px;' >取消</button> ").off('click').on("click",function(){
                    if ($.isFunction(a.options.cancelClick)){
                        if (a.options.cancelClick(a.content)){
                            a.destroy();
                        }
                    }else{
                        a.destroy();
                    }
                }).appendTo(a.btBar);
            if (a.options.closeOk)
                $("<button class='fa fa-check unselectable  btBarOk' style='float: right;margin-right: 1px;width: 80px;height: 25px;' >确定</button> ").off('click').on("click",function(){
                    if ($.isFunction(a.options.okClick)){
                        if (a.options.okClick(a.content)){
                            a.destroy();
                        }
                    }else{
                        a.destroy();
                    }
                }).appendTo(a.btBar);
        }else{
            a.content=$("<div class='content'/>").appendTo(a.winRoot);
        }


        // if (a.options.caption && a.options.caption.length>30){
        //     $("<label class='caption unselectable' title='"+a.options.caption+"' >"+a.options.caption+" </label>").appendTo(a.winTitle);
        // }else{

        // }

        // $("<a class='opico min fa fa-window-minimize'  title='最小化' />").appendTo(btnBar).off('click').on('click',function(){
        //     $(this).css({display:'none'});
        //     $('.maxbtn',a.winTitle).css({display:'none'});
        //     a.winRoot.css({width:'100px',height:'30px',top:'0px',left:'0px'});
        //     $('.restorebtn',a.winTitle).css({display:''});
        // });

        // if (!a.options.minbtn)
        //     $('.min',a.winTitle).css({display: 'none'});

        if (a.options.otherClose){
            a.winRoot.off('click').on('click',function(e){
               // console.log('root bound click')
                e.stopImmediatePropagation();
            })
            setTimeout(function(){
                if (a.options.modelShow && a.maskObj){
                }else{
                    $(document).one('click',function(){
                        a.destroy();
                    });
                }

            },100);
        }
        $(t).appendTo(a.content);
        // a.options.left=a.winRoot.offsetLeft;
        // a.options.top=a.winRoot.offsetTop;
        if (a.options.canMove){
            a.winRoot.draggable({
                handle:".popWinTitle",
                start: function() {
                },
                drag: function() {
                },
                stop: function() {
                   // console.log(a.winRoot);
                    a.options.left=a.winRoot.css("left");
                    a.options.top=a.winRoot.css("top");
                }})
        }
        if (a.options.canSize){
            a.winRoot.resizable({
                stop: function( event, ui ) {
                    a.options.width=ui.size.width+'px';
                    a.options.height=ui.size.height+'px';
                    if (a.options.maxbtn){
                        if (!a.options.noTitle) {
                            var tmp = $('.restorebtn', a.winTitle);
                            if (tmp.css('display') != 'none') {
                                tmp.css({display: 'none'});
                                $('.maxbtn', a.winTitle).css({display: ''});
                            }
                        }
                    }
                    if ($.isFunction(a.options.onSize)){
                        a.options.onSize(event,ui);
                    }
                    // if (ui.size){
                    //     var curDom=$(this);
                    //     var domData=curDom.data('d');
                    //     if (domData){
                    //         if (domData.pro){
                    //             domData.pro.width=ui.size.width+'px';
                    //             domData.pro.height=ui.size.height+'px';
                    //         }
                    //     }
                    // }
                }
            })
        }
        a.ObjDom.css("display",'');
        $(t).data("jqform",this);
        if (a.options.modelShow){
            var opts = {
                background : "#aaaaaa",
                opacity: ".3",
                //boxShadow : "0 0 0 8px rgba(128, 128, 128, 0.5)",
                fade : 200,
                cursor: 'auto',
                clickToHide : false,	// 点击背景关闭
                fixed: false,			// 始终固定在屏幕中间（当DOM对象尺寸改变时）
                zIndex : 1001
            }
            var w = a.winRoot.outerWidth(),
            h = a.winRoot.outerHeight(),
            left = ($(window).width() - w) / 2,
            top = ($(window).height() - h) / 2;
            a.maskObj = $("<div  class='ui-screenMasker'></div>").css({
                position : "fixed",
                top : 0,
                left : 0,
                height : "100%",
                width : "100%",
                backgroundColor : opts.background,
                opacity : opts.opacity,
                filter : "alpha(opacity=30)",
                "-moz-opacity" : ".3",
                cursor: opts.cursor,
                zIndex : opts.zIndex
            }).appendTo($("body")).after(a.winRoot);
            a.winRoot.css({
                "z-index" : opts.zIndex
            });
            a.maskObj.on('click',function(e){
                e.stopImmediatePropagation();
                if (a.options.otherClose){
                    a.destroy();
                }
            })
        }
        if ($.isFunction(a.options.onOpen)){
            a.options.onOpen();
        }
        return this;
    };
    jqform.prototype={
        destroy:function(flag){
            if (this.ObjDom==undefined) return;
            if (flag!=1){
                if (this.options && this.options.onCloseBefore && $.isFunction(this.options.onCloseBefore)){
                    if (this.options.onCloseBefore()===false){
                        return ;
                    }
                }
            }
            var hideFlag={hide:0};
            if (this.options && this.options.onClose && $.isFunction(this.options.onClose)){
                this.options.onClose(hideFlag);
            }
            this.ObjDom.data("jqform","");
            if (hideFlag.hide==1){
                this.ObjDom.css("display","none");
                this.ObjDom.appendTo('body');
            }else{
                this.ObjDom.remove().html('').empty();
            }
            this.ObjDom=undefined
            if (this.maskObj){
                this.maskObj.remove();
                delete this.maskObj;
            }
            if (!this.options.noTitle) {
                if (this.winTitle) {
                    this.winTitle.remove();
                    delete this.winTitle;
                }
            }
            delete this.options;
            if (this.content){
                this.content.remove();
                delete  this.content
            }
            if (this.winRoot) {
                this.winRoot.remove();
                delete this.winRoot;
            }
        },
        disable:function(){

        },
        setCloseBtn:function(){

        },
        // setMinBtn:function(){
        //
        // },
        setMaxBtn:function(){

        },
        setCatpion:function(caption){
            if (!this.options.noTitle)
                $(".caption",this.winTitle).html(caption);
            return this;
        }
    }
    $.fn.jqform = function(options) {
    return $(this).each(function(i, v) {
        $(v).data("jqform") || new jqform(v, options);
    }).data("jqform");
};
})(jQuery);