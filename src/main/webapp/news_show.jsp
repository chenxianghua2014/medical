<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="com.mysql.jdbc.Driver" %>

<%@ page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'news_show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
    <style type="text/css">
*{
  margin:0;
  padding:0;
}
    
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

.menu {
font-family: arial, sans-serif; 
width:1200px;
height:35px;
background:#000; 
margin:0; 
margin:0px 0;
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
z-index:100;

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
   
 #only{margin-top:20px}

.zhandianditu{width:1000px;height:40px;line-height:40px;margin:0 auto;margin-top:20px;}
.zhandianditu p{color:#303030}
.zhandianditu p a{color:#303030}
.liebiao{width:1000px;height:1170px;margin:0 auto;}
.liebiaoleft{width:740px;height:1170px;float:left;border:1px solid #c5c5c5;}
.liebiaoleftyiceng1{width:700px;height:115px;margin-left:20px;border-bottom:1px dashed #c6c6c6;}
.liebiaoleftyiceng1 h3{font-size:16px;color:#333; width:700px; height:20px;}
.liebiaoleftyiceng1 h3 a{ float:left; clear:both;text-decoration:none;color:#333}
.liebiaoleftyiceng1 h3 a:hover{text-decoration:underline;}
.liebiaoleftyiceng1 h3 span{font-size:12px;font-weight:lighter;color:#333; float:right; margin-right:5px;}
.liebiaoleftyiceng2{width:700px;height:60px;margin-top:15px }
.liebiaoleftyiceng2 .p1{margin-left:105px;line-height:20px;color:#666}
.liebiaoleftyiceng2 .p2{line-height:20px;color:#666}
/*.liebiaoleftyiceng2img{width:85px;height:55px;background: url(/images/Index1Imgs/pic_13.jpg) no-repeat;display:block;float:left;clear:both}*/
.liebiaoleftyiceng2img{width:85px;height:55px;display:block;float:left;clear:both}
.xiamianxiangqing{ float:right; margin-right:5px;}
.xiamianxiangqing a{
 text-decoration:none;
 font-size:12px;

}
.shangxiaye{width:740px;height:40px;}


.leibiao{height:44px;padding-top:24px;text-align:right;padding-right:29px;}
.leibiao a{text-decoration:none; }
.leibaio a:hover{text-decoration:underline; }
	 .pageS1{border:1px solid #ccc; padding:5px 5px 0px 5px;height:19px; margin:2px; }
	 .pageS2{border:1px solid #ccc; padding:3px 2px 0px 2px ;height:21px; width:36px;}
	 .pageS0{border:0;padding:3px 5px 3px 5px; font-weight:bold;}    
	 .text{width:36px;height:19px;border:1px solid #ccc;}
	 .submit{width:45px;height:5;}   
	 
    </style>
  </head>
  
  <body>
  
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
<li><a class="hide" href="#">项目管理</a></li>
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
  
  <div style="clear:both">
  
  </div>
 <div class="zhandianditu">
    <p>
        <span id="NavigationWUC1_lbMap">首页&nbsp;&nbsp;&lt;&lt;&nbsp;&nbsp;最新资讯</span>
    </p>
</div>

        <!--列表部分-->
        <div class="liebiao">
            <!--列表左侧-->
            <div class="liebiaoleft">
                <div class="liebiaoleftyiceng">
                    <table id="dlNewsList" cellspacing="0" style="border-collapse:collapse;">
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
String pagenumber = request.getParameter("page");
Integer i = Integer.parseInt(pagenumber);
Integer maxnum = 0;
Integer maxres = 0;
i = (i-1)*7;

 String sql_1="select COUNT(*)  from Tnews";
 ResultSet rs_1 = statement.executeQuery(sql_1);
 ResultSetMetaData rmeta_1 = rs_1.getMetaData();
 
 if(rs_1.next()){
  maxnum = rs_1.getInt(1);
  maxres = maxnum;
  if(maxnum%7 == 0)
   maxnum = maxnum/7;
else maxnum = maxnum/7 +1;
 }
 rs_1.close();
 
 String sql= "select * from Tnews order by CCREATEDATETIME desc limit "+i.intValue()+",7";
ResultSet rs = statement.executeQuery(sql);

//获得数据结果集合

ResultSetMetaData rmeta = rs.getMetaData();

//确定数据集的列数，亦字段数

int numColumns=rmeta.getColumnCount();

// 输出每一个数据值
while(rs.next()) {%>
	
	
	<tr>
		<td>
                        <div class="liebiaoleftyiceng1" id="only">
                            <h3>
                                <a href='/newsinfo/leads/TitleLead.aspx?t_id=<%=rs.getString(1)%>' title='2013年度项目启动会暨2012年度项目经验交流会预通知' target="_blank"
                                    style=" white-space: nowrap; text-overflow: ellipsis; overflow: hidden; width:550px;">
                                <%=rs.getString(4)%></a>

                                <span>发表于:<%=rs.getString(2)%></span></h3>
                            <div class="liebiaoleftyiceng2"  style=" overflow: hidden;">
                                <p class="p2"><%=rs.getString(4)%></p>
                            </div>
                            <span class="xiamianxiangqing"><a href="/newsinfo/leads/TitleLead.aspx?t_id=1973" target="_blank" >查看详情&gt;&gt;</a></span>
                        </div>
                    </td>
	</tr>
<% 
}

rs.close();
statement.close();

connection.close();

%> 	

</table>
                </div>
                <!--列表页码-->

                <div class="leibiao">
                
                        <div style="display:none;">
                            <span id="labPage">1</span>
                        </div> 
                   <%  
                   Integer pagenum = Integer.parseInt(request.getParameter("page"));
                   Integer maxnumber = maxnum;
                   if(pagenum <= maxnumber)
                   {
                   %> 
                   <span id="lblPages">
                   <% if(pagenum != 1){%>
                   <a href='news_show.jsp?page=1' class='pageS1'>&lt;&lt;</a>
                   <%}%>
                   
                   <%if((pagenum -1) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-1%>' class='pageS1'>&lt;</a>
                   <%}
                   %>
                   <%if((pagenum -3) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-3 %>' class='pageS1' ><%=pagenum-3 %></a>
                   <%}
                   %>
                    <%if((pagenum -2) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-2 %>' class='pageS1' ><%=pagenum-2 %></a>
                   <%}
                   %>
                    <%if((pagenum -1) > 0 ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum-1 %>' class='pageS1' ><%=pagenum-1%></a>
                   <%}
                   %>
                   <span class='pageS0' ><%=pagenum%></span>
                    <%if((pagenum +1) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+1%>' class='pageS1' ><%=pagenum+1%></a>
                   <%}
                   %>
                    <%if((pagenum +2) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+2%>' class='pageS1' ><%=pagenum+2%></a>
                   <%}
                   %>
                    <%if((pagenum +3) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+3%>' class='pageS1' ><%=pagenum+3%></a>
                   <%}
                   %>
                    <%if((pagenum +3) <= maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=pagenum+1%>' class='pageS1'>&gt;</a>
                   <%}
                   %>
                    <%if(pagenum  != maxnumber ) 
                   {
                   %>
                   <a href='news_show.jsp?page=<%=maxnumber %>' class='pageS1'>&gt;&gt;</a>
                   <%}
                   %>
                       转到第 <input type='text' class='text' id='txtInput'/>页 
                       <input type='button'  value='跳转' class='pageS2' 
                       onclick=" var strUrl='news_show.jsp?page=#pagenum#' ; 
                       var tzNumValue = document.getElementById('txtInput');
                       if (isNaN(tzNumValue.value)) { alert('请输入数字');tzNumValue.value='';return; } 
                        else if (tzNumValue.value < 1||tzNumValue.value><%=maxnumber %>) 
                        {  alert('请输入正确的页码');tzNumValue.value='';return; }
                         window.location.href = strUrl.replace('#pagenum#',tzNumValue.value);"/>
                         </span>
                   <% 
                   }    
                   %>
            
        
                     
                 
                </div>
            </div>  
</div>
  </body>
</html>
