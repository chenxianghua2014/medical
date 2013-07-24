<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>
<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>农村基本医疗卫生关键技术研究与示范协同研究工作平台</title>

<style type="text/css">
/* common styling */
/* set up the overall width of the menu div, the font and the margins */
*
{
 margin:0;
 padding:0;

}

body{
}
.quanju{
 width:1200px;
 height:1000px;
 margin-left:100px;
border:2px solid #000;
overflow:hidden;
}

.title_nav{
 width:1200px;
 height:134px;
 background:url(fimages/img04.jpg);
 text-align:center;
 
}

.title_nav h1 {
        margin:0 auto;
	line-height: normal;
	text-transform: lowercase;
	font-family:"楷体";
	font-weight: bold;
	font-size:45px;
	color: #FFFFFF;
        vertical-align:middle;
        line-height:120px;

}

.menu {
position:relative;
font-family: arial, sans-serif; 
width:1200px;
height:35px;
background:#000; 
margin:0; 
margin:0px 0;
z-index:100;

}
/* remove the bullets and set the margin and padding to zero for the unordered list */
.menu ul {
padding:0; 
margin:0;
list-style-type: none;

}
/* float the list so that the items are in a line and their position relative so that the drop down list will appear in the right place underneath each list item */
.menu ul li {
float:left; 
position:relative;
}
/* style the links to be 104px wide by 30px high with a top and right border 1px solid white. Set the background color and the font size. */
.menu ul li a{
font-family:verdana,arial,tahoma;
font-size:13px;
display:block; 
text-align:center; 
text-decoration:none; 
width:104px; 
height:35px; 
color:#fff; 
border:1px solid #fff;
border-width:1px 1px 0 0;
background:#000; 
line-height:30px; 

}

 .menu ul li a:visited{
font-family:verdana,arial,tahoma;
font-size:11px;
display:block; 
text-align:center; 
text-decoration:none; 
width:104px; 
height:35px; 
color:#fff; 
border:1px solid #fff;
border-width:1px 1px 0 0;
background:#000; 
line-height:30px; 

}
/* make the dropdown ul invisible */
.menu ul li ul {
display: none;

}
/* specific to non IE browsers */
/* set the background and foreground color of the main menu li on hover */
.menu ul li:hover a {
color:#35f; 
background:#fff;
border:1px solid #35f;
}
/* make the sub menu ul visible and position it beneath the main menu list item */
.menu ul li:hover ul {
display:block; 
position:absolute; 
top:36px; 
left:0; 
width:105px;
}
/* style the background and foreground color of the submenu links */
.menu ul li:hover ul li a {
display:block; 
background:#FFFAF0; 
color:#000;
width:130px;
border:none;
}
/* style the background and forground colors of the links on hover */
.menu ul li:hover ul li a:hover {
background:#FFE7BA; 
color:#000;
width:130px;
}


.main
{
width:1200px;

}



#demo{overflow:auto; }
#demo1 h2{
font-size:20px;

}
#yingyong_demo{overflow:auto; }
#demo li{text-align: left;line-height:1.5em; padding-left:0;background: #FFFFFF no-repeat 0 50%;display: block;margin-bottom: 1px; }
#yingyong_demo li{text-align: left;line-height:1.5em; padding-left:0;background: #FFFFFF no-repeat 0 50%;display: block;margin-bottom: 1px; }
#demo{overflow:hidden; width: 300px;height: 500px; background:#FFFFFF; margin:auto;float: left;display: inline;border:1px solid #2d90cc;}
#yingyong_demo{overflow:hidden; width: 300px;height: 500px; background:#FFFFFF; margin:auto;float: left;display: inline;border:1px solid #2d90cc;}
.guanjianjishushow{
position:relative;
z-index:10;
}
.guanjianjishushow h1
{width:195px; background:url(info_show_js/images/header_bg2012.gif) no-repeat;
height:32px; background-position:0 -128px;
background-repeat:repeat;font-size:14px;
font-weight:bold;padding-left:15px;
padding-top:8px;
bottom:-8px;
color:#fff; line-height:20px;
}
.yingyongshifan  h1
{width:195px; background:url(info_show_js/images/header_bg2012.gif) no-repeat;
height:32px; background-position:0 -128px;
background-repeat:repeat;font-size:14px;
font-weight:bold;padding-left:15px;
padding-top:8px;
bottom:-8px;
color:#fff; line-height:20px;
}

.xinweizhuanqu h4{ width:528px; background:url(info_show_js/images/sf_centerbg01.jpg) no-repeat; height:26px; line-height:26px; color:#fff; padding-left:15px; font-size:14px; border-bottom:2px solid #2491bd;}

 .l{width:540px;border:1px solid red;border-top:none;height:635px;}
/* 焦点图 */
.focus img{border:none;}
.focus{margin-left:50px;width:426px;height:240px;border:1px solid #EEE;position:relative;margin-top:6px;float:left}
.f426x240{width:426px;height:240px;overflow:hidden}
.f426x240 img{width:426px;height:240px}

.rslides{width:426px;position:relative;list-style:none;padding:0}
.rslides_nav{height:51px;width:31px;position:absolute;-webkit-tap-highlight-color:rgba(0,0,0,0);top:50%;left:0;opacity:0.5;text-indent:-9999px;overflow:hidden;text-decoration:none;background:url(info_show_js/images/i.png) no-repeat 0 -560px;margin-top:-28px}
.rslides_nav:active{opacity:1.0}
.rslides_nav.next{left:auto;background-position:-31px -560px;right:0}
.rslides_tabs{margin:12px auto;clear:both;text-align:center}
.rslides_tabs li{display:inline;float:none;_float:left;*float:left;margin-right:5px}
.rslides_tabs a{text-indent:-9999px;overflow:hidden;-webkit-border-radius:15px;-moz-border-radius:15px;border-radius:15px;background:rgba(0,0,0, .2);background:#DDD;display:inline-block;_display:block;*display:block;width:9px;height:9px}
.rslides_tabs .rslides_here a{background:rgba(0,0,0, .6);background:#390}


.news
{
clear:both;
padding-top:50px;
margin-left:10px;
width:520px;
}
.news h2 a
{
font-size:14px;
 color:#111111;
text-decoration:none
}
.news h2 span{
margin-left:320px; 
font-size:9px; 
color:#666666;
font-weight:lighter;
text-decoration:none
}
 
.news .jishuhang
{
color:#2Eb0FF;
font-family:"仿宋体";
}
.news .oushuhang
{
color:#1C86EE;
font-family:"仿宋体";
}
.news h2 a:hover,span a:hover{
text-decoration: underline;
}

.news table td  a 
{
	font-size:14px;
	text-decoration:none;
	
}
.news table
{
	
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: dotted;
	border-left-style: none;
	border-bottom-color: #a8a8a8;
}


/* Footer */

#footer {
	width: 920px;
	height: 49px;
	margin: 0 auto;
	padding-top: 25px;
}

#footer-bgcontent {
	margin: 0px;
	padding: 0px;
	height: 60px;
	background: #394144;
}

#footer p {
	margin: 0;
	text-align: center;
	line-height: normal;
	text-transform: uppercase;
	font-size: 13px;
	color: #FFFFFF;
}
</style>
<!--[if lte IE 6]>
<style type="text/css">
/* styling specific to Internet Explorer IE5.5 and IE6. Yet to see if IE7 handles li:hover */
/* Get rid of any default table style */
table {
border-collapse:collapse;
margin:0; 
padding:0;
}
/* ignore the link used by 'other browsers' */
.menu ul li a.hide, .menu ul li a:visited.hide {
display:none;
}
/* set the background and foreground color of the main menu link on hover */
.menu ul li a:hover {
color:#fff; 
background:#b3ab79;
}
/* make the sub menu ul visible and position it beneath the main menu list item */
.menu ul li a:hover ul {
display:block; 
position:absolute; 
top:32px; 
left:0; 
width:105px;
}
/* style the background and foreground color of the submenu links */
.menu ul li a:hover ul li a {
background:#faeec7; 
color:#000;
}
/* style the background and forground colors of the links on hover */
.menu ul li a:hover ul li a:hover {
background:#dfc184; 
color:#000;
}
</style>
<![endif]-->

<script type="text/javascript" src="js/jquery.js">
</script>
<script type="text/javascript" src="js/lrtk.js"></script>

<script type="text/javascript" src="<%=basePath%>/info_show_js/jquery.js" charset="utf-8"></script>
<script type="text/javascript" src="<%=basePath%>/info_show_js/lrtk.js" charset="utf-8"></script>

</head>
<body>

<div class="quanju"><!--全局div开始   <!-->

<div class="title_nav"><!--title_nva开始   <!-->
	<h1>
					农村基本医疗卫生关键技术研究与示范协同研究工作平台 
	</h1>
</div><!--title_nav结束  <!-->



<div class="menu"><!--menu开始  <!-->
<ul>
<li><a class="hide" href="#">首页</a></li>
<li><a class="hide" href="#">平台介绍</a>
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
<li><a class="hide" href="xiangmuguanli.jsp">项目管理</a></li>
<li><a class="hide" href="#">数据服务</a></li>
<li><a class="hide" style="width:120px" href="#">关键技术集成与应用示范</a>
<!--[if lte IE 6]>
<a href="../layouts/index.html">LAYOUTS
<table><tr><td>
<![endif]-->
    <ul>
    <li><a href="#" title="shifan1">应用示范1</a></li>
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
<li><a class="hide" href="#">示范县信息平台</a></li>
<li><a class="hide" href="#">资源下载</a></li>
<li><a class="hide" href="#">远程培训</a></li>
<li><a class="hide" href="#">联系我们</a></li>
</ul>
<!-- clear the floats if required -->
<div class="clear"> </div>
</div><!--men结束  <!-->
<div class="main" style="margin-top:20px;width:1200px;height:730px;"><!--men begin   <!-->

<div class="main_left" style="width:300px;height:700px;margin-left:15px;float:left;">

<div class="guanjianjishushow" style="width:300px;height:500px;">

<h1>关键技术展示</h1>


<div id="demo" style="width:300px;position:relative;overflow:scroll;overflow-y:hidden;overflow-x:hidden;margin-top:-8px;">
<div id="demo1">
    <h2>关键技术一:农村常见病规范化诊疗和临床路径</h2>
    <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_1/1.pps" style="text-decoration:none;">农村高血压规范诊疗关键技术</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_1/2.pps" style="text-decoration:none;">农村心房颤动规范诊疗关键技术</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_1/3.pps" style="text-decoration:none;">农村冠心病规范诊疗关键技术</A></FONT></P>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_1/4.pps" style="text-decoration:none;">农村支气管哮喘诊疗的关键技术</A></FONT></P>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_1/5.pps" style="text-decoration:none;">农村血脂异常规范诊疗关键技术</A></FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>

 </li>

    <h2>关键技术二:农村急诊救治关键技术集成与应用示范研究</h2>
    <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_2/1.pps" style="text-decoration:none;">农村急性ST段抬高型心肌梗死诊断与治疗关键技术</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_2/2.pps" style="text-decoration:none;">农村非ST段抬高急性冠脉综合征诊断与治疗关键技术</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_2/3.pps" style="text-decoration:none;">农村高血压危象诊断与治疗关键技术</A></FONT></P>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_2/4.pps" style="text-decoration:none;">农村急性缺血性脑卒中诊断与治疗关键技术</A></FONT></P>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_2/5.pps" style="text-decoration:none;">农村常见中毒救治关键技术</A></FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>

 </li>
     <h2>关键技术三:农村慢性病控制关键技术集成与应用示范研究</h2>
    <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/1.pdf" style="text-decoration:none;">肾脏病：慢性肾脏病、慢性肾衰竭</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/2.pps" style="text-decoration:none;">呼吸系统：慢性支气管炎、哮喘</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/2.pps" style="text-decoration:none;">消化系统：慢性胃炎、胃溃疡</A></FONT></P></li>

<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/2.pps" style="text-decoration:none;">血液系统：缺铁性贫血、营养不良性巨幼细胞性贫血</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/2.pps" style="text-decoration:none;">内分泌系统：糖尿病、甲亢、甲减</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/2.pps" style="text-decoration:none;">免疫系统：系统性红斑狼疮、系统性血管炎</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_3/2.pps" style="text-decoration:none;">感染性疾病：慢性乙型肝炎</A></FONT></P></li>
<P>&nbsp;</P>
<P>&nbsp;</P>
     <h2>关键技术四:农村心脑血管病防治关键技术集成与应用示范</h2>
    <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_4/1.pps" style="text-decoration:none;">农村脑血管病二级预防诊疗规范及诊疗路径</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_4/2.pps" style="text-decoration:none;">农村高血压防治诊疗规范及诊疗路径</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_4/3.pps" style="text-decoration:none;">农村血脂异常防治诊疗规范及诊疗路径</A></FONT></P></li>

<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_4/4.pps" style="text-decoration:none;">农村冠心病防治关键技术</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_4/5.pps" style="text-decoration:none;">农村心律失常防治关键技术</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_4/6.pdf" style="text-decoration:none;">农村心脑血管病防治-健康生活方式</A></FONT></P></li>
<P>&nbsp;</P>
<P>&nbsp;</P>
     <h2>关键技术五:农村肿瘤筛查与防治关键技术集成与应用示范研究</h2>
    <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_5/1.pps" style="text-decoration:none;">农村肿瘤早期筛查关键技术</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_5/2.pps" style="text-decoration:none;">农村肿瘤化学治疗及放化疗不良反应防治关键技术</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_5/3.pps" style="text-decoration:none;">农村恶性肿瘤晚期常见并发症治疗关键技术</A></FONT></P></li>

<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_5/4.pps" style="text-decoration:none;">农村居民防癌科普宣教及基层肿瘤专科人才培训关键技术</A></FONT></P></li>
<P>&nbsp;</P>
<P>&nbsp;</P>
      <h2>关键技术六:农村数字医疗仪器应用关键技术研究</h2>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_6/1.pps" style="text-decoration:none;">农村数字医疗仪器应用关键技术研究</A></FONT></P></li>

<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_6/2.pps" style="text-decoration:none;">农村数字医疗仪器质量标准检测体系关键技术</A></FONT></P></li>
<P>&nbsp;</P>
<P>&nbsp;</P>
      <h2>关键技术七:农村重点人群营养健康关键技术集成与应用示范研究</h2>
    <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/1.pps" style="text-decoration:none;">农村妇女营养不良性消瘦筛查规范及改善路径</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/2.pps" style="text-decoration:none;">农村孕妇叶酸营养水平快速检验技术及补充计划</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/3.pps" style="text-decoration:none;">农村老年人血脂异常患者健康干预模式</A></FONT></P></li>

<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/4.pps" style="text-decoration:none;">农村残疾人蛋白质-热能营养不良综合防治措施</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/5.pps" style="text-decoration:none;">农村精神病患者防治路径</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/6.pps" style="text-decoration:none;">农村儿童营养保健关键技术集成与应用</A></FONT></P>
 </li>
     <li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/7.pps" style="text-decoration:none;">西北地区农村留守儿童心理行为问题干预</A></FONT></P></li>

<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp;<A href="newsinfo/key_Tecl_7/8.pdf" style="text-decoration:none;">心理健康教育评估标准</A></FONT></P></li>
<li style="font-size:14px"><P><FONT color=#ff0000></FONT><FONT color=#000000>&nbsp;&nbsp<A href="newsinfo/key_Tecl_7/9.pps" style="text-decoration:none;">关键技术使用说明</A></FONT></P></li>

<P>&nbsp;</P>
<P>&nbsp;</P>
    </div>
<div id="demo2"> </div>
<script type="text/javascript">
 //无间断滚动代码，兼容IE、Firefox、Opera
 var speed=20;
 var FGDemo=document.getElementById('demo');
 var FGDemo1=document.getElementById('demo1');
 var FGDemo2=document.getElementById('demo2');
 FGDemo2.innerHTML=FGDemo1.innerHTML
 function Marquee1(){
 if(FGDemo2.offsetHeight-FGDemo.scrollTop<=0)
 FGDemo.scrollTop-=FGDemo1.offsetHeight
 else{
 FGDemo.scrollTop++
 }
 }
 var MyMar1=setInterval(Marquee1,speed)
 FGDemo.onmouseover=function() {clearInterval(MyMar1)}
 FGDemo.onmouseout=function() {MyMar1=setInterval(Marquee1,speed)}
</script> 
</div>
</div>
</div>
   
<div class="main_middle" style="width:550px;height:700px;margin-left:15px;float:left;">

<div class="xinweizhuanqu" style="width:540px;">

<h4>新闻专区</h4>

<div class="l" style="width:540px" >




<div class="focus">
    <ul class="rslides f426x240">
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="info_show_js/news_image/news_1.JPG"  /></a></li>
        <li><a href="http://www.lanrentuku.com/js/" target="_blank"><img src="info_show_js/news_image/news_2.JPG"/></a></li>
        <li><a href="http://www.lanrentuku.com/zt/book/" target="_blank"><img src="info_show_js/news_image/news_3.JPG"  /></a></li>
        <li><a href="http://www.lanrentuku.com/bg/" target="_blank"><img src="info_show_js/news_image/news_4.JPG"  /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="info_show_js/news_image/news_5.JPG" /></a></li>
        <li><a href="http://www.lanrentuku.com/js/" target="_blank"><img src="info_show_js/news_image/news_6.JPG" /></a></li>
        <li><a href="http://www.lanrentuku.com/zt/book/" target="_blank"><img src="info_show_js/news_image/news_7.JPG" /></a></li>
        <li><a href="http://www.lanrentuku.com/bg/" target="_blank"><img src="info_show_js/news_image/news_8.JPG" /></a></li>
        <li><a href="http://www.lanrentuku.com/" target="_blank"><img src="info_show_js/news_image/news_9.JPG"  /></a></li>
        <li><a href="http://www.lanrentuku.com/js/" target="_blank"><img src="info_show_js/news_image/news_10.JPG" /></a></li>
        <li><a href="http://www.lanrentuku.com/zt/book/" target="_blank"><img src="info_show_js/news_image/news_11.JPG" /></a></li>
        <li><a href="http://www.lanrentuku.com/bg/" target="_blank"><img src="info_show_js/news_image/news_12.jpg"/></a></li>
    </ul>
</div>


<div class="news">
<h2>
<a href="#">最新资讯</a>
<span><a href="news_show.jsp?page=1" style="font-size:12px; ">查看全部</a>
</span>
</h2>
<br/>

<%

//驱动程序名

String driverName="com.mysql.jdbc.Driver";

//数据库用户名

String userName="root";

//密码

String userPasswd="root";

//数据库名

String dbName="ss";

//表名

String tableName="tnews";

//联结字符串

String url="jdbc:mysql://localhost/"+dbName+"?user="+userName+"&password="+userPasswd;

Class.forName("com.mysql.jdbc.Driver").newInstance();

Connection connection=DriverManager.getConnection(url);

Statement statement = connection.createStatement();
String sql = "select * from Tnews order by CCREATEDATETIME desc limit 0,5";
//String sql = "select * from Tnews where rownum<=2";
//String sql="select * from Tnews order by CCREATEDATETIME desc limit 3 ";

ResultSet rs = statement.executeQuery(sql);

//获得数据结果集合

ResultSetMetaData rmeta = rs.getMetaData();
//确定数据集的列数，亦字段数

int numColumn = 1;

// 输出每一个数据值
while(rs.next()) {
if(numColumn %2 == 1){
%>

<table width="515" height="22" border="0" cellpadding="0" cellspacing="0" class="bk-1">

					<tr>
					  <td width="13" align="left" valign="middle"><img src="info_show_js/images/home_70.gif" width="3" height="5" /></td>
					  <td width="405" align="left" valign="middle" ><b><a href="newsdetail.jsp?id=<%= rs.getString(1) %>" class="jishuhang" target="_blank"   title=''><%= 
rs.getString(4)%></a></b></td>
					  <td width="97" align="left" valign="middle"><span class="STYLE2"><%= 
rs.getString(2).substring(0,10)%></span></td>
					</tr>
					<tr style="height:10px"></tr>

					</table>
<%
}
else {
%>
<table width="515" height="22" border="0" cellpadding="0" cellspacing="0" class="bk-1">

					<tr>
					  <td width="13" align="left" valign="middle"><img src="info_show_js/images/home_70.gif" width="3" height="5" /></td>
					  <td width="405" align="left" valign="middle" ><b><a href="newsdetail.jsp?id=<%= rs.getString(1) %>" class="oushuhang" target="_blank"   title=''><%= 
rs.getString(4)%></a></b></td>
					  <td width="97" align="left" valign="middle"><span class="STYLE2"><%= 
rs.getString(2).substring(0,10)%></span></td>
					</tr>
					<tr style="height:10px"></tr>

					</table>
<%
}

 %>

<% 
numColumn++;
}



rs.close();

statement.close();

connection.close();

%> 
 </div> 

</div>
</div>
</div>


<div class="main_right"style="width:300px;height:700px;margin-left:10px;float:left;">

<div class="yingyongshifan" style="width:300px;height:500px;">
<h1>应用示范</h1>


<div id="yingyong_demo" style="width:300px;position:relative;overflow:scroll;overflow-y:hidden;overflow-x:hidden;margin-top:-8px;">
<div id="yingyong_demo1">
    <h4>应用示范1</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="http://www.yzb.bupt.cn/"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>

 </li>
    <h4>应用示范2</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
     <h4>应用示范3</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
     <h4>应用示范4</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
     <h4>应用示范5</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
      <h4>应用示范6</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
      <h4>应用示范7</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
       <h4>应用示范8</h4>
    <li><P><FONT color=#ff0000>&nbsp;&nbsp;&nbsp;</FONT><FONT color=#000000>&nbsp;&nbsp;&nbsp;&nbsp; 应用示范描述<A href="#"></A>描述内容</FONT></P>
<P>&nbsp;</P>
<P>&nbsp;</P>
 </li>
    </div>
<div id="yingyong_demo2"> </div>
<script type="text/javascript">
 //无间断滚动代码，兼容IE、Firefox、Opera
  var speed_1=20;
 var FG_Demo=document.getElementById('yingyong_demo');
 var FG_Demo1=document.getElementById('yingyong_demo1');
 var FG_Demo2=document.getElementById('yingyong_demo2');
 FG_Demo2.innerHTML=FG_Demo1.innerHTML
 function Marquee_1(){
 if(FG_Demo2.offsetHeight-FG_Demo.scrollTop<=0)
 FG_Demo.scrollTop-=FG_Demo1.offsetHeight
 else{
 FG_Demo.scrollTop++
 }
 }
 var MyMar_1=setInterval(Marquee_1,speed_1)
 FG_Demo.onmouseover=function() {clearInterval(MyMar_1)}
 FG_Demo.onmouseout=function() {MyMar_1=setInterval(Marquee_1,speed_1)}
</script> 
</div>

</div>
</div>




</div><!--men end   <!-->
		<div id="footer-bgcontent" align="center">
			<div id="footer">
				<p>
					Copyright (c) 2012 教育部科技司、中国人民解放军总医院 . Design by 中国人民解放军总医院.
				</p>
			</div>
		</div>
</div> <!--全局div结束    !-->


 <script>

var sample  =   new  ScrollObj( " scroollBody " , " scroollBox " , 25 , 300 , 19 , 63 , 50 );

</script> 

</body>
</html>