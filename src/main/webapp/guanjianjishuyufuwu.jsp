<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'guanjianjishuyufuwu.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link rel="stylesheet" type="text/css" href="guanjianjishuyufuwu/Css/style.css">
   <style type="text/css">
   .title_nav{
 width:1450px;
 height:134px;
text-align:center;
display:table-cell;
vertical-align:middle;
 background:url(fimages/img04.jpg);
 
}

.title_nav h1 {
	
	margin:0 auto;
	line-height: normal;
	text-transform: lowercase;
	font-weight: normal;
	color: #FFFFFF;
}
   
   </style>
  </head>
  
  <body>
  <div class="header">
  <div class="title_nav">
<h1> 关键技术与数据服务</h1>
   </div>
   
   
<div class="menu"><!--menu开始  <!-->
<ul>
<li><a class="hide" href="#">首页</a>
<!--[if lte IE 6]>
<a href="../menu/index.html">DEMOS
<table><tr><td>
<![endif]-->

<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>
<li><a class="hide" href="#">关键技术研究</a>
<!--[if lte IE 6]>
<a href="index.html">MENUS
<table><tr><td>
<![endif]-->
    <ul>
    <li><a href="#" title="changjianbing">常见病</a></li>
    <li><a href="#" title="jizhengjiuzhi">急诊救治</a></li>
    <li><a href="#" title="maixingbingkongzhi">慢性病控制</a></li>
    <li><a href="#" title="xinnaoxieguanfangzhi">心脑血管防治</a></li>
    <li><a href="#" title="zhongniufangzhi">肿瘤防治</a></li>
    <li><a href="#" title="shuziyiliaoyiqi">数字医疗仪器</a></li>
    <li><a href="#" title="yiliaoweishengfuwu">医疗卫生服务</a></li>
     <li><a href="#" title="yiliaoweishengfuwu">综合示范</a></li>
    </ul>
<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>
<li><a class="hide" href="#">数据服务</a>
<!--[if lte IE 6]>
<a href="../layouts/index.html">LAYOUTS
<table><tr><td>
<![endif]-->
    <ul>
    <li><a href="disp/welcome.jsp" title="shifan1">营养健康调研统计</a></li>
    <li><a href="#" title="shifan2">应用示范2</a></li>
    <li><a href="#" title="shifan3">应用示范3</a></li>
    <li><a href="#" title="shifan4">应用示范4</a></li>
    <li><a href="#" title="shifan5">应用示范5</a></li>
    <li><a href="#" title="shifan3">应用示范6</a></li>
    <li><a href="#" title="shifan4">应用示范7</a></li>
    <li><a href="#" title="shifan5">应用示范8</a></li>
    </ul>
<!--[if lte IE 6]>
</td></tr></table>
</a>
<![endif]-->
</li>




</ul>
<!-- clear the floats if required -->
<div class="clear"> </div>
</div><!--men结束  <!-->



  </div>
  
  <div class="content">
  
  <div class="m_left">
  <div class="left_category">
        <h1>关键技术分类</h1>
        <!--商品分类-->      
		<div class="left_cat_list">
		
<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">常见病关键技术</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">糖尿病</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">房颤</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>




<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">肿瘤防治关键技术</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">食管癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">宫颈癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">乳腺癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
       <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">肺   癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
   
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>


<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">关键技术3</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>


<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">关键技术4</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>



<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="../disp/hello1.jsp" target="_blank" title="常用药品">关键技术5</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>



<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">关键技术6</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>



<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">关键技术7</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>




<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">关键技术8</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>



</div>
</div><!-- left_cato jie su-->
 
 <div class="left_category" style="margin-top:32px">
        <h1>疾病总发病率</h1>
        <!--商品分类-->      
		<div class="left_cat_list">
		
<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">慢性非传染病</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">糖尿病</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">房颤</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>




<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">传染病</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">食管癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">宫颈癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">乳腺癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
       <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">肺   癌</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
   
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>


<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">其他</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>


<div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"  style="position:relative;">
<h3><a href="#" target="_blank" title="常用药品">慢性病</a></h3>
<!--三级分类-->
<div class="h3_cat">
<div class="shadow_border" style="position:absolute; top:0px; left:0;">
<div style="width:1px; height:29px; position:absolute; background:#fffcf1; top:0px;"></div>
  <div class="leftmain">
  <div class="leftmain_left">
  <!--挡住下拉菜单层-->
<div style="position:absolute;z-index:-1;left:1px;top:0px;width:100%;display:none; *display:block;">
 <iframe style="background:#F0F9FB;width:870px;height:800px;+height:700px;filter:alpha(opacity=0);-moz-opacity:0"></iframe>
</div>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>

    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl>
    
    <dl>
      <dt style="height:20px;overflow:hidden;"><a href="#"  title="呼吸系统">高血压</a></dt>               
      <dd><em><a href='#'  title="咳嗽化痰">入组条件</a></em>
<em><a href='#'  title="哮喘用药">适用对象</a></em>
<em><a href='#'  title="气管炎">筛查方法</a></em>
<em><a href='#'  title="肺癌">诊断与流程</a></em>
<em><a href='#'  title="呼吸道感染">危险分层</a></em>
<em><a href='#'  title="抗结核">治疗</a></em>
<em><a href='#'  title="抗结核">疗效评价</a></em>
</dd>
    </dl> 
   
  </div>

</div>
</div>
</div>
<!--三级分类-->
</div>



</div>
</div><!-- left_cato jie su-->
  
  
  
  
  
  
  </div> <!-- m_left jie su-->
  
  
  <div class="con_middle">
  
  <div class="linkscat">
  
  <div class="hd">
						<h3>食物营养摄入量</h3>
						
</div>

<div class="bd">
		<dl >
		
		
			<dt><a href="channel/channel_33.html" target="_blank" title="视频">食物营养摄入量国标</a></dt>
		
			<dd ><a href="http://cps.youku.com/redirect.html?id=00000292" target="_blank" title="优 酷 网">国标1</a></dd>
		
			<dd ><a href="http://www.tudou.com/?union_id=100362_100001_01_01" target="_blank" title="土 豆 网">国标2</a></dd>
		
			<dd ><a href="http://www.letv.com/?firefox" target="_blank" title="乐视高清">国标3</a></dd>
		
			<dd ><a href="http://www.iqiyi.com/" target="_blank" title="爱 奇 艺">国标4</a></dd>
		
			<dd ><a href="http://video.sina.com.cn/" target="_blank" title="新浪视频">国标5</a></dd>
		
		
			<dd class="more"><a href="channel/channel_33.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
	
		<dl  class="line" >
		
		
			<dt><a href="channel/channel_43.html" target="_blank" title="新闻">三种食物营养素对能量的贡献比例</a></dt>
		
			<dd ><a href="http://news.sina.com.cn" target="_blank" title="新浪新闻">比例</a></dd>
		
			<dd ><a href="http://news.qq.com" target="_blank" title="腾讯新闻">比例</a></dd>
		
			<dd ><a href="http://news.163.com/" target="_blank" title="网易新闻">比例</a></dd>
		
			<dd ><a href="http://www.huanqiu.com/" target="_blank" title="环 球 网">比例</a></dd>
			<dd class="more"><a href="channel/channel_43.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
	
		<dl  class="line" >
		
		
			<dt><a href="channel/channel_44.html" target="_blank" title="邮箱">蛋白质1</a></dt>
		
			<dd ><a href="http://mail.163.com" target="_blank" title="163邮箱">蛋白质2</a></dd>
		
			<dd ><a href="http://www.126.com" target="_blank" title="126邮箱">蛋白质3</a></dd>
		
			<dd ><a href="http://mail.sina.com.cn" target="_blank" title="新浪邮箱">蛋白质4</a></dd>
		
			<dd ><a href="http://www.gmail.com" target="_blank" title="GMail">蛋白质5</a></dd>
		
			<dd class="more"><a href="channel/channel_44.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
	
		<dl  class="line" >
		
		
			<dt><a href="channel/channel_100.html" target="_blank" title="游戏">脂肪</a></dt>
		
			<dd ><a href="http://youxi.baidu.com/yxpm/pm.jsp?pid=11016500091_877110" target="_blank" title="百度游戏">儿童</a></dd>
		
			<dd ><a href="http://www.17173.com/" target="_blank" title="17173">成人</a></dd>
		
			<dd ><a href="http://www.4399.net/" target="_blank" title="4399">老人</a></dd>
		
			<dd ><a href="http://web.4399.com/?cid=3117" target="_blank" title="网页游戏">动物脂</a></dd>
		
			<dd ><a href="http://www.7k7k.com" target="_blank" title="7K7K">食用油</a></dd>
		
			<dd ><a href="http://www.521g.com/" target="_blank" title="热门页游">海产品</a></dd>
		
			<dd class="more"><a href="channel/channel_100.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
		</div>
		
		
  <div class="hd" style="margin-top:30px">
						<h3>微量元素的摄入量</h3>
						
</div>
  
  <div class="bd">
		<dl >
		
		
			<dt><a href="channel/channel_33.html" target="_blank" title="视频">铁的贡献</a></dt>
		
			<dd ><a href="http://cps.youku.com/redirect.html?id=00000292" target="_blank" title="优 酷 网">动物铁</a></dd>
		
			<dd ><a href="http://www.tudou.com/?union_id=100362_100001_01_01" target="_blank" title="土 豆 网">蛋类铁</a></dd>
		
			<dd ><a href="http://www.letv.com/?firefox" target="_blank" title="乐视高清">植物铁</a></dd>
		
			<dd ><a href="http://www.iqiyi.com/" target="_blank" title="爱 奇 艺">其它</a></dd>
		
			<dd class="more"><a href="channel/channel_33.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
	
		<dl  class="line" >
		
		
			<dt><a href="channel/channel_43.html" target="_blank" title="新闻">钙的贡献</a></dt>
		
			<dd ><a href="http://news.sina.com.cn" target="_blank" title="新浪新闻">奶类</a></dd>
		
			<dd ><a href="http://news.qq.com" target="_blank" title="腾讯新闻">蔬菜</a></dd>
		
			<dd ><a href="http://news.163.com/" target="_blank" title="网易新闻">粗杂粮类</a></dd>
		
			<dd ><a href="http://www.huanqiu.com/" target="_blank" title="环 球 网">大豆类</a></dd>
		
			<dd class="more"><a href="channel/channel_43.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
	
		<dl  class="line" >
		
		
			<dt><a href="channel/channel_44.html" target="_blank" title="邮箱">盐的贡献</a></dt>
		
			<dd ><a href="http://mail.163.com" target="_blank" title="163邮箱">盐1的贡献</a></dd>
		
			<dd ><a href="http://www.126.com" target="_blank" title="126邮箱">盐2的贡献</a></dd>
		
			<dd ><a href="http://mail.sina.com.cn" target="_blank" title="新浪邮箱">盐3的贡献</a></dd>
		
			<dd ><a href="http://www.gmail.com" target="_blank" title="GMail">盐4的贡献</a></dd>
		
		
			<dd class="more"><a href="channel/channel_44.html" target="_blank" title="更多 &gt;&gt;">更多 &gt;&gt;</a></dd>
		
		
		</dl>
	
	
		</div>
  
  
  
  
  
  
  
  
  
  
  
  </div>
  </div>
  <div class="con_right">
 <div class="cxph">
	<h2>人群的发病率</h2>
    <div class="cxph_list">
    
    <ul style="list-style-type:none;">
    <li>不同地区</li>
    <li>不同年龄段（5岁距）</li>
    <li>不同性别</li>
    <li>不同收入</li>
    <li>其它</li>
    </ul>
    </div>
</div>
  
  <div class="cxph" style="margin-top:20px">
	<h2>食物与营养健康</h2>
    <div class="cxph_list">
    
    <ul style="list-style-type:none;">
    <li>动物性食品</li>
    <li>蔬菜及植物性食品</li>
    <li>加工食品</li>
    <li>不安全食品</li>
    <li>其它</li>
  
   
    </ul>
    </div>
</div>
  
  
  
  </div>
  
  </div>
  <div class="footer">
  
  
  </div>
  
  
  
  
  
  
  
  
  
  
  </body>
</html>
