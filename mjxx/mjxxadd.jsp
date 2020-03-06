<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>添加募捐信息</title>
<style type="text/css">
				body { background: url(images/1.png);
				background-repeat: no-repeat;
				text-align: center;
			}
	#apDiv7 {
	position: absolute;
	width: 387px;
	height: 50px;
	z-index: 1;
	left: 267px;
	font-family: "华文新魏";
	font-size: 48px;
	top: 21px;
	color: #ca0000;
	text-align: center;
}

#apDiv1 {
	position: absolute;
	width: 64px;
	height: 42px;
	z-index: 2;
	left: 254px;
	top: 96px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv2 {
	position: absolute;
	width: 141px;
	height: 42px;
	z-index: 2;
	left: 319px;
	top: 96px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv3 {
	position: absolute;
	width: 161px;
	height: 42px;
	z-index: 2;
	left: 461px;
	top: 96px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv4 {
	position: absolute;
	width: 141px;
	height: 42px;
	z-index: 2;
	left: 623px;
	top: 96px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv5 {
	position: absolute;
	width: 178px;
	height: 42px;
	z-index: 2;
	left: 765px;
	top: 96px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv6 {
	position: absolute;
	width: 61px;
	height: 42px;
	z-index: 2;
	left: 1036px;
	top: 96px;
	background-image: url(images/a1.png);
	font-family: "华文新魏";
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv8 {
	position: absolute;
	width: 78px;
	height: 64px;
	z-index: 3;
	left: 903px;
	top: 20px;
	background-image: url(images/a2.png);
}

#apDiv11 {
	position: absolute;
	width: 167px;
	height: 42px;
	z-index: 2;
	left: 88px;
	top: 146px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	font-family: "华文新魏";
	line-height: 40px;
}
	
#apDiv14 {
	position: absolute;
	width: 167px;
	height: 42px;
	z-index: 2;
	left: 89px;
	top: 199px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	font-family: "华文新魏";
	line-height: 40px;
}

#apDiv16 {
	position: absolute;
	width: 33px;
	height: 46px;
	z-index: 6;
	left: 65px;
	top: 190px;
	background-image: url(images/a3.png);
}
#apDiv17 {
	position: absolute;
	width: 34px;
	height: 46px;
	z-index: 7;
	left: 67px;
	top: 280px;
	background-image: url(images/a3.png);
}
#apDiv18 {
	position: absolute;
	width: 275px;
	height: 54px;
	z-index: 8;
	background-image: url(img/6.png);
	left: 748px;
	top: 370px;
}
#apDiv19 {
	position: absolute;
	width: 163px;
	height: 41px;
	z-index: 9;
	left: 78px;
	top: 45px;
	background-image: url(img/2.png);
}
#apDiv20 {
	position: absolute;
	width: 34px;
	height: 46px;
	z-index: 8;
	background-image: url(img/5.png);
	left: 286px;
	top: 350px;
}
#apDiv21 {
	position: absolute;
	width: 202px;
	height: 34px;
	z-index: 9;
	font-family: "华文新魏";
	font-size: 24px;
	color: #C30;
	left: 321px;
	top: 360px;
}

#apDiv9 {
	position: absolute;
	width: 91px;
	height: 42px;
	z-index: 2;
	left: 944px;
	top: 96px;
	background-image:url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	line-height: 40px;
}
#apDiv21 {
	position: absolute;
	width: 167px;
	height: 42px;
	z-index: 2;
	left: 90px;
	top: 251px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	font-family: "华文新魏";
	line-height: 40px;
}
#apDiv22 {
	position: absolute;
	width: 167px;
	height: 42px;
	z-index: 2;
	left: 89px;
	top: 302px;
	background-image: url(images/a1.png);
	font-size: 22px;
	color: #FFF;
	text-align: center;
	font-family: "华文新魏";
	line-height: 40px;
}
a:link{
	text-decoration: none;
	color: #FFF;
	font-family: "华文新魏";
	font-size: 22px;
}
a:visited{
	color:#FFF;
	text-decoration: none;
	font-family: "华文新魏";
	font-size:22px;
} 
a:hover {
	text-decoration:none;
	color:#F63; 
	font-size:22px; 
	font-family: "华文新魏";
 }
 a:active{
	text-decoration:none;
	color:#FFF; 
	font-size:22px; 
	font-family: "华文新魏";
	}
		.three{
	width: 561px;
	margin: 100px 500px;
	position: absolute;
	left: -136px;
	top: 91px;
			}
			
			div{list-style: none;}
			
.two ul{
	position: absolute;
	height: 25%;
	width: 200px;
	height: 100px;
	margin: 0 30px;
	left: -20px;
	top: 151px;
			}
.two ul li{
	line-height: 42px;
	float: center;
	text-align: center;
	list-style:none;
	margin:10px 0;
}
.two ul li a{
	display: block;
	background: url(images/a1.png);
	font-weight: bold;
}
.two ul li a:hover{
	background: url(images/a1.png);
	color: #F63;
}
</style>
</head>

<jsp:useBean id="bean" scope="page" class="mydb.mydb"/>
<body>
<div id="apDiv7">爱心公益网后台</div>
    
<div id="apDiv8"></div>
<div id="apDiv1"><a href="../index2.jsp">首页</a></div>
<div id="apDiv2"><a href="../user2/yhgl.html">用户信息管理</a></div>
<div id="apDiv3"><a href="../user1/yhgl.html">管理员信息管理</a></div>
<div id="apDiv4"><a href="../mjxx/mjxx.html">募捐信息管理</a></div>
<div id="apDiv9"><a href="../notice/noticegl.html">留言管理</a></div>
<div id="apDiv5"><a href="../yghdxx/yghdxx.html">义工活动信息管理</a></div>
<div id="apDiv6"><a href="../index.html">注销</div>

	    </div>
		<div class="two">
		<ul>
				<li><a  href="../mjxx/mjxxchakan.jsp">查看所有募捐信息</a></li>
				<li><a href="../mjxx/mjxxadd.jsp">添加募捐信息</a></li>
				<li><a href="../mjxx/mjxxedit.jsp">更改募捐信息</a></li>
				<li><a href="../mjxx/mjxxdelete.jsp">删除募捐信息</a></li>
</ul></div>
		<form  method="post" action="mjxxSaveAdd.jsp">
  		<div align="center" class="three">
			<p>添加服装信息</p>
  		<table border="1"align="center">
		<tr>
  			<td align="center" width="100">品名：</td>
  			<td><input name="product_name" type="text" product_id="product_name"></td>
		</tr>
		<tr>
			<td align="center" width="100">介绍：</td>
			<td><input name="product_bb" type="text" product_id="product_bb"></td>
		</tr>
		<tr>
			<td align="center" width="100">品牌：</td>
			<td><input name="product_sn" type="text" product_id="product_sn"></td>
		</tr>
		<tr>
			<td align="center" width="100">价格：</td>
			<td><input name="product_price" type="number" product_id="product_price"></td>
		</tr>
		<tr>
			<td align="center" width="100">优惠价：</td>
			<td><input name="product_discount" type="number" product_id="product_discount"></td>
		</tr>
		<tr>
			<td align="center" width="100">类别：</td>
			<td><select size="1" name="product_type">
      <option value="包">包</option>
      <option value="鞋子">鞋子</option>
	  <option value="衬衣">衬衣</option>
        <option value="外套">外套</option>
	  <option value="毛衣">毛衣</option>
	  <option value="裙子">裙子</option>
      </select></td>
		</tr>
		<tr>
 			<td colspan="2"align="center"><input type="submit" value="确定添加">
			<input type="reset" value="重置"></td>
		</tr>
	</table>
	</div>
</form>
</div>
</div>
</body>
</html>
