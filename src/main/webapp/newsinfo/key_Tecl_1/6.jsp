<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
System.out.println("the path is "+path);
System.out.println("the base path is "+basePath);
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>胆结石诊治流程图</title>
<script type="text/javascript" src="<%=path %>/jslib/jquery.js"></script>


<style type="text/css">

#toggle-view {
	list-style:none;	
	font-family:arial;
	font-size:16px;
	margin:0;
	padding:0;
	width:800px;
}

	#toggle-view li {
		margin:10px;
		border-bottom:1px solid #ccc;
		position:relative;
		cursor:pointer;
	}
	
	#toggle-view h3 {
		margin:0;
		font-size:18px;
	}

	#toggle-view span {
		position:absolute;
		right:5px; top:0;
		color:#ccc;
		font-size:16px;
	}
	
	#toggle-view p {
		margin:5px 0;
		display:none;
	}	

</style>

<script type="text/javascript">

$(document).ready(function () {
	
	$('#toggle-view li').click(function () {

		var text = $(this).children('p');

		if (text.is(':hidden')) {
			text.slideDown('200');
			$(this).children('span').html('-');		
		} else {
			text.slideUp('200');
			$(this).children('span').html('+');		
		}
		
	});

});

</script>

</head>
<body>

<div align="center">
<ul id="toggle-view">
	<li>
		<h3>1.  接     诊</h3>
		<span>+</span>
		
		<p>以诚挚、耐心的态度对待患者，给患者好的第一印象，迅速、合理的将患者安置于病床上，完成基本的生命体征检测。</p>
		
	</li>
	<li>
		<h3>2. 询问病史及体格检查</h3>
		<span>+</span>
		
		<p>采集病史应全面，包括症状、既往史、和疾病的发生、发展过程，接触史、感染疾病史；既往住院治疗史；其他疾病病史。体格检查应仔细，包括心肺腹，四肢及神经系统。</p>
		
	</li>
	<li>
		<h3>3.确定胆道结石的诊断及分类</h3>
		<span>+</span>
		
		<p>胆道结石是胆道系统中最常见的疾病，包括胆囊结石、胆总管结石和肝内胆管结石。胆囊结石在早期通常没有明显症状，大多数是在常规体检中发现。有时可以伴有轻微不适被误认为是胃病而没有及时就诊。胆总管結石位于胆总管开口或胆总管开口壶腹区，则会引致梗阻性黄疸。肝内胆管结石临床症状较轻，以反复腹痛，发冷发热为主，偶有黄疸出现。</p>
		
	</li>
	<li>
		<h3>4.  入    院    检    查</h3>
		<span>+</span>
		
		<p>血尿便常规， 生化全项、凝血、D二聚体，C-反应蛋白，心电图、胸部正侧位片，腹部超声，CT,MRI,MRCP。</p>
		
	</li>
	<li>
		<h3>5.   治  疗  原  则</h3>
		<span>+</span>
		
		<p>①有症状的胆囊结石患者，建议手术治疗。</p>
		<p>②肝外胆管结石的治疗肝外胆管结石现仍以手术治疗为主。手术治疗的原则是：</p>
		<p>①术中尽可能取尽结石；②解除胆道狭窄和梗阻，去除感染病灶；</p>
		<p>③术后保持胆汁引流通畅，预防胆石再发。</p>
		<p>常用手术方法有以下几种：1、胆总管切开取石加T管引流术2、胆肠吻合术3、Oddi括约肌成形术4、微创保胆取石术。
		③肝内胆管结石保肝，抗炎治疗。
</p>
		
	</li>
	<li>
		<h3>6. 完善病历书写、向家属交代病情、教育、加强护理</h3>
		<span>+</span>
		
		<p>建议手术治疗，交待可能出现的术中及术后并发症包括：出血、感染、引流管脱落、结石残留等。告知患者合理的饮食。</p>
		
	</li>
	<li>
		<h3>7. 请 上 级 医 师 查 房 指 导 治 疗</h3>
		<span>+</span>
		
		<p>进一步明确诊断，指导治疗，必要时三步会诊。</p>
		
	</li>
	<li>
		<h3>8. 住院期间的检测指标及治疗效果评价</h3>
		<span>+</span>
		
		<p>肝功能，血常规，离子正常，切口愈合，T管造影通畅无残留结石。</p>
		
	</li>
	<li>
		<h3>9.确   定   出   院   标   准</h3>
		<span>+</span>
		
		<p>切口愈合，T管造影通畅无残留结石。</p>
		
	</li>
	<li>
		<h3>10.   出     院     医      嘱</h3>
		<span>+</span>
		
		<p>要加强锻炼，增强体质。戒抽烟饮酒，规律饮食，应禁食高脂肪食物，忌食菠菜，豌豆，扁豆及其他豆类还有菜花，龙须菜。定期复查B超，必要时可以吃一些利胆剂。</p>
		
	</li>
</ul>
<div>
</body>
</html>
