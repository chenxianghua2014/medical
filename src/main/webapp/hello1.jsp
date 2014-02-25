
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Medical Statistical Information</title>
<link href="../css/style.css" rel="stylesheet" type="text/css" media="screen" />
<style type="text/css">
<!--
*{margin:0;padding:0;border:0;}
body {
 font-family: arial, 宋体, serif;
 font-size:14px; 
}
#nav {
 width:180px;
 line-height: 26px; 
 list-style-type: none;
 text-align:left;
    /*定义整个ul菜单的行高和背景色*/
}
/*==================一级目录===================*/
#nav a {
 width: 172px; 
 display: block;
 padding-left:20px;
 /*Width(一定要)，否则下面的Li会变形*/
}
#nav li {
 background:#049FF1; /*一级目录的背景色*/
 border-bottom:#FFF 1px solid; /*下面的一条白边*/
 float:left;
 /*float：left,本不应该设置，但由于在Firefox不能正常显示
 继承Nav的width,限制宽度，li自动向下延伸*/
}
#nav li a:hover{
 background:#065FB9; /*一级目录onMouseOver显示的背景色*/
}
#nav a:link  {
 color:#FFF; text-decoration:none;
}
#nav a:visited  {
 color:#FFF;text-decoration:none;
}
#nav a:hover  {
 color:#FFF;text-decoration:none;font-weight:bold;
}
/*==================二级目录===================*/
#nav li ul {
 list-style:none;
 text-align:left;
}
#nav li ul li{ 
 background: #fffef9; /*二级目录的背景色*/
}
#nav li ul a{
         padding-left:20px;
         width:172px;
 /* padding-left二级目录中文字向右移动，但Width必须重新设置=(总宽度-padding-left)*/
}
/*下面是二级目录的链接样式*/
#nav li ul a:link  {
 color:#666; text-decoration:none;
}
#nav li ul a:visited  {
 color:#666;text-decoration:none;
}
#nav li ul a:hover {
 color:#F3F3F3;
 text-decoration:none;
 font-weight:normal;
 background:#065FB9;
 /* 二级onmouseover的字体颜色、背景色*/
}
/*==============================*/
#nav li:hover ul {
 left: auto;
}
#nav li.sfhover ul {
 left: auto;
}
#content {
 clear: left; 
}
#nav ul.collapsed {
 display: none;
}
-->
#PARENT{
 width:200px;
 padding-left:10px;
}
</style>
</head>
<body>
			<div id="logo">
				<h1 align="center">
					<a href="#" ><b>农村重点人群营养健康数据处理与分析</b></a>
				</h1>
			</div>
           			<hr />
			<!-- end #logo -->
			<div id="header">
				<div id="menu">
					<ul>
						<li class="current_page_item">
							<a href="index.jsp" class="first">首页</a>
						</li>
						<li>
							<a href="">平台介绍</a>
						</li>
						<li>
							<a href="#">近期动态</a>
						</li>
						<li>
							<a href="#">资源下载</a>
						</li>
						<li>
							<a href="#">联系我们</a>
						</li>
					</ul>
				</div>
				<!-- end #menu -->
				<div id="search">
					<form method="get" action="">
						<fieldset>
							<input type="text" name="s" id="search-text" size="15" />
							<input type="submit" id="search-submit" value="GO" />
						</fieldset>
					</form>
				</div>
				<!-- end #search -->
			</div>
<div id="layout01">
<div id="PARENT">
<h5>信息查询导航</h5>
<ul id="nav">
<li><a href="#Menu=ChildMenu0"  onclick="DoMenu('ChildMenu0')">相关介绍</a>
 <ul id="ChildMenu0" class="collapsed">
 <li><a href="#">食物营养与健康</a></li>
 <li><a href="#">食物成分对照表</a></li>
 <li><a href="#">营养摄入量国标</a></li>
 </ul>
</li>
<li><a href="#Menu=ChildMenu1"  onclick="DoMenu('ChildMenu1')">疾病总发病率</a>
 <ul id="ChildMenu1" class="collapsed">
 <li><a href="#">慢性非传染病</a></li>
 <li><a href="#">传染病</a></li>
 <li><a href="#">其他</a></li>
 </ul>
</li>
<li><a href="#Menu=ChildMenu2" onclick="DoMenu('ChildMenu2')">不同人群的发病率</a>
 <ul id="ChildMenu2" class="collapsed">
 <li><a href="#">不同地区</a></li>
 <li><a href="sample3.jsp">不同年龄段（5岁距）</a></li>
 <li><a href="#">不同性别</a></li>
 <li><a href="#">不同收入</a></li>
 </ul>
</li>
<li><a href="#Menu=ChildMenu3" onclick="DoMenu('ChildMenu3')">食物与营养健康统计</a>
 <ul id="ChildMenu3" class="collapsed">
 <li><a href="#">动物性食品</a></li>
 <li><a href="#">蔬菜及植物性食品</a></li>
 <li><a href="#">加工食品</a></li>
  </ul>
</li>
<li><a href="#Menu=ChildMenu4" onclick="DoMenu('ChildMenu4')">食物营养摄入量</a>
 <ul id="ChildMenu4" class="collapsed">
 <li><a href="#">动物性食品</a></li>
 <li><a href="#">蔬菜及植物性食品</a></li>
 <li><a href="#">加工食品</a></li>
 </ul>
</li>
<li><a href="#Menu=ChildMenu5" onclick="DoMenu('ChildMenu5')">微量元素的摄入量</a>
 <ul id="ChildMenu5" class="collapsed">
 <li><a href="#">动物性食品</a></li>
 <li><a href="#">蔬菜及植物性食品</a></li>
 <li><a href="#">加工食品</a></li>
  </ul>
</li>
<li><a href="#Menu=ChildMenu6" onclick="DoMenu('ChildMenu6')">营养数据多因素分析</a>
 <ul id="ChildMenu6" class="collapsed">
 <li><a href="#">动物性食品</a></li>
 <li><a href="#">蔬菜及植物性食品</a></li>
 <li><a href="#">加工食品</a></li>
  </ul>
</li>
</ul>
</div>
<div id="Cshows" ><iframe id="iframe01" src="sample1.jsp" scrolling="no"></iframe></div>
</div>
<script type=text/javascript><!--
var LastLeftID = "";
function menuFix() {
 var obj = document.getElementById("nav").getElementsByTagName("li");
 
 for (var i=0; i<obj.length; i++) {
  obj[i].onmouseover=function() {
   this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  obj[i].onMouseDown=function() {
   this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  obj[i].onMouseUp=function() {
   this.className+=(this.className.length>0? " ": "") + "sfhover";
  }
  obj[i].onmouseout=function() {
   this.className=this.className.replace(new RegExp("( ?|^)sfhover\\b"), "");
  }
 }
}
function DoMenu(emid)
{
 var obj = document.getElementById(emid); 
 obj.className = (obj.className.toLowerCase() == "expanded"?"collapsed":"expanded");
 if((LastLeftID!="")&&(emid!=LastLeftID)) //关闭上一个Menu
 {
  document.getElementById(LastLeftID).className = "collapsed";
 }
 LastLeftID = emid;
}
function GetMenuID()
{
 var MenuID="";
 var _paramStr = new String(window.location.href);
 var _sharpPos = _paramStr.indexOf("#");
 
 if (_sharpPos >= 0 && _sharpPos < _paramStr.length - 1)
 {
  _paramStr = _paramStr.substring(_sharpPos + 1, _paramStr.length);
 }
 else
 {
  _paramStr = "";
 }
 
 if (_paramStr.length > 0)
 {
  var _paramArr = _paramStr.split("&");
  if (_paramArr.length>0)
  {
   var _paramKeyVal = _paramArr[0].split("=");
   if (_paramKeyVal.length>0)
   {
    MenuID = _paramKeyVal[1];
   }
  }
  /*
  if (_paramArr.length>0)
  {
   var _arr = new Array(_paramArr.length);
  }
  
  //取所有#后面的，菜单只需用到Menu
  //for (var i = 0; i < _paramArr.length; i++)
  {
   var _paramKeyVal = _paramArr[i].split('=');
   
   if (_paramKeyVal.length>0)
   {
    _arr[_paramKeyVal[0]] = _paramKeyVal[1];
   }  
  }
  */
 }
 
 if(MenuID!="")
 {
  DoMenu(MenuID)
 }
}
GetMenuID(); //*这两个function的顺序要注意一下，不然在Firefox里GetMenuID()不起效果
menuFix();
</script>

</body>
</html>