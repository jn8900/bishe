<html>
<head>
<title>modify</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style type="text/css">
<!--
#Layer1 {
	position:absolute;
	width:286px;
	height:74px;
	z-index:1;
	left: 420px;
	top: 112px;
}
-->
#header{
	width:1000px;
	height:101px;
	margin:0 auto;
	background:url(images/phone.gif) no-repeat right 40px;
	position:relative;
	}
#header h1{
	width:421px;
	height:101px;
	background:url(images/logo1.jpg) no-repeat;
	text-indent:-9999px;
	}
#footer{
	background:#e1e1e1;
	border-top:#CCC solid 2px;
	text-align:center;
	font-size:12px;
	color:#666;
	line-height:30px;
	padding:15px;
	font-family:Arial;
	}

</style>
</head>
<body>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<!-- ImageReady Slices (modify) -->
<div id="header">
    	<h1>���Ĺ�����</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<table id="__01" bgcolor="#FFFFFF" align="center" width="900" height="888" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3"><img src="images/b1.jpg" width="900" height="261" alt="">
		  <div id="Layer1" style="top: 248px; left: 571px;"><img src="images/12.png" width="277" height="72"></div></td>
	</tr>
	<tr>
		<td><img src="images/132.jpg" width="190" height="580" alt=""></td>
		<td>
			<b><font color="#0000FF">��������������
			<jsp:useBean id="midifybean" scope="page" class="mydb.mydb"/>

<% 
	//��ȡ��¼ʱ���������
   String name=(String)session.getValue("name");

   //�����ݿ⽫�û�������ʾ����
  String sql="select * from user where name='" +name+"' ";   
  ResultSet rs=midifybean.executeQuery(sql);
   if (rs.next())
   { int id = rs.getInt("id");//��ȡid��Ϊ��������domodify.jsp

%> </font></b>
<p>��</p>
	   
  <form method="POST" action="domodify.jsp?id=<%=id%>">
    

  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bordercolor="#111111" width="500" id="AutoNumber1">
 	<tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">��¼��</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="name" value=<%=rs.getString("name")%>  size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">���롡</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="mima" value=<%=rs.getString("password")%> size="50"></td>
    </tr>

    <tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">���⡡</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="wenti" value=<%=rs.getString("question")%> size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">������</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="u_name" value=<%=rs.getString("u_name")%> size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">�𰸡�</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="daan" value=<%=rs.getString("answer")%> size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">�Ա�</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="sex" value="<%=rs.getString("sex")%>"  size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">����</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="birthday" value="<%=rs.getString("birthday")%>" size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">�绰</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="tel" value="<%=rs.getString("tel")%>" size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><b><font size="2">QQ</font></b></td>
      <td width="78%" align="center"><p align="left">
      <input type="text" name="qq" value="<%=rs.getString("qq")%>" size="50"></td>
    </tr>
	<tr>
      <td width="100%" align="center" bgcolor="#66FFCC"><strong><font size="2">��ַ</font></strong></td>
      <td width="78%" align="center"><p align="left">
	  <input type="text" name="addr" value="<%=rs.getString("address")%>" size="50"></td>
    </tr>
    <tr>
      <td width="100%" align="center" colspan="2"><p><a href="modifysuccess.html"><input type="submit" value="�޸�����" name="B1"></a>&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" value="����" name="B2">
      <a href="../index/index1.jsp"><font color="#0000ff">������ҳ</font></a><font color="#0000ff">
</font>
</td>
    </tr>
  </table>
  </center>
</form>
       
   <%  
    rs.close();}%></td>
		<td>
			<img src="images/134.jpg" width="190" height="580" alt=""></td>
	</tr>
	
</table>
<!-- End ImageReady Slices -->
<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>���Ĺ����� ��Ȩ����</p>
</div>
</body>
</html>