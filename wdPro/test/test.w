<?xml version="1.0" encoding="utf-8"?>

<div xmlns="http://www.w3.org/1999/xhtml" xid="window" class="window" component="$UI/system/components/justep/window/window"
  design="device:m;">  
  <div component="$UI/system/components/justep/model/model" xid="model"/>  
  <script src="http://res.wx.qq.com/open/js/jweixin-1.3.0.js"/>  
  <div component="$UI/system/components/justep/contents/contents" class="x-contents x-full"
    active="0" xid="contents1"> 
    <div class="x-contents-content" xid="content1"> 
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row1"> 
        <div class="x-col" xid="col1"/>  
        <div class="x-col" xid="col2" style="text-align:center;"> 
          <a component="$UI/system/components/justep/button/button" class="btn btn-default"
            label="打开外部联系人" xid="button1" onClick="button1Click"> 
            <i xid="i1"/>  
            <span xid="span1">打开外部联系人</span> 
          </a> 
        </div>  
        <div class="x-col" xid="col3"/> 
      </div>  
      <div component="$UI/system/components/justep/row/row" class="x-row" xid="row2"> 
        <div class="x-col" xid="col4"/>  
        <div class="x-col" xid="col5"> 
          <div xid="div7" class="list-group-item" style="border-left-style:none;padding:5px 5px 5px 5px;border-top-style:none;"> 
            <a component="$UI/system/components/justep/button/button" class="btn btn-link btn-sm"
              label="添加关联附件" xid="button2" icon="dataControl dataControl-plus"> 
              <i xid="i2" class="dataControl dataControl-plus"/>  
              <span xid="span2" style="color:#2D2D2D;font-weight:bold;">添加关联附件</span>
            </a> 
              
          <input type="file" accept="image/*,text/plain,application/*" onchange="justep.Bind.contextFor(this).$model.delData(event)" class="original-upload" /></div>
        </div>  
        <div class="x-col" xid="col6"/> 
      </div> 
    <div component="$UI/system/components/justep/row/row" class="x-row" xid="row3">
   <div class="x-col" xid="col7"></div>	
   <div class="x-col" xid="col8"><div xid="div3">
   	<a href="javascript:;" class="file">选择文件
    <input type="file" name="upDataImage" id="upDataImageAndFile" onchange="justep.Bind.contextFor(this).$model.delData(event)"/></a>
   </div></div>
   <div class="x-col" xid="col9"></div></div></div> 
  </div>  
  <resource xid="resource2"> 
    <!--  <require xid="require1" url="https://res.wx.qq.com/open/js/jweixin-1.4.0.js"/> --> 
  </resource> 
</div>
