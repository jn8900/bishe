<html>
<head>
<title>regconfirm</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<style>
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
<div id="header">
    	<h1>���Ĺ�����</h1>
</div>
<div style="height:10px; background-color:#C00; position:relative;"></div>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<!-- ImageReady Slices (regconfirm) -->
<table background="images/b3.jpg" id="__01" bgcolor="#FFFFFF" align="center" width="900" height="888" border="0" cellpadding="0" cellspacing="0">
	<tr>
		<td colspan="3">
			<img src="images/b2.jpg" width="900" height="261" alt=""></td>
	</tr>
	<tr>
		
		<td>
		<jsp:useBean id="registerbean" scope="page" class="mydb.mydb"/>

<%!
 boolean checkemail(String str)

 {
  int index;
  boolean check;
  if((index=str.indexOf("@")) != -1)
   check = true;
  else
   check = false;
  return(check);
 }
%>

<%
String name,mima,yanzheng,wenti,daan,sex,birthday,tel,qq,addr,u_name;


//�ύ�û�ע����Ϣ
name=new String(request.getParameter("name").getBytes("ISO8859_1"));
u_name=new String(request.getParameter("u_name").getBytes("ISO8859_1"));
mima=request.getParameter("password");
yanzheng=request.getParameter("yanzheng");
wenti=new String(request.getParameter("question").getBytes("ISO8859_1"));
daan=new String(request.getParameter("answer").getBytes("ISO8859_1"));
sex=new String(request.getParameter("sex").getBytes("ISO8859_1"));
birthday=new String(request.getParameter("birthday").getBytes("ISO8859_1"));
tel=request.getParameter("tel");
qq=request.getParameter("qq");
addr=new String(request.getParameter("address").getBytes("ISO8859_1"));

//���ǳƱ�����������regsuccess.jsp��ʹ��
request.getSession(true);
session.putValue("name",name);


//�ǳơ����롢��֤�����⡢��Ϊ��
if (mima==null || yanzheng.equals("") || wenti.equals("") || daan.equals("") || name.equals("") || u_name.equals(""))
{%>
<script language='javascript'> 
alert('����д����') 
window.history.back()   
</script>
<%}
else
//��������֤����
if(!mima.equals(yanzheng))
	{
%>
<script language='javascript'> 
  alert('��������֤����') 
window.history.back()   
</script>

	 
 <%} 
 else  
 //����   
 { 
    String sql="select * from user where name='"+name+"'";
    ResultSet rs=registerbean.executeQuery(sql);
  if (rs.next())
    {%>
    <script language='javascript'> 
     alert('�������뻻һ������') 
 window.history.back()  
    </script>
       <% rs.close();}
   else{ %>
   <form method=post action="regsuccess.jsp">
<input type="hidden" name="name" value="<%=name%>">
<input type="hidden" name="password" value="<%=mima%>">
<input type="hidden" name="yanzheng" value="<%=yanzheng%>">
<input type="hidden" name="question" value="<%=wenti%>">
<input type="hidden" name="answer" value="<%=daan%>">
<input type="hidden" name="sex" value="<%=sex%>">
<input type="hidden" name="birthday" value="<%=birthday%>">
<input type="hidden" name="tel" value="<%=tel%>">
<input type="hidden" name="qq" value="<%=qq%>">
<input type="hidden" name="address" value="<%=addr%>">
<input type="hidden" name="u_name" value="<%=u_name%>">
   <p align="center">hello,<%=name%>,�����������Ϣ����ȷ�ϣ� </p>
   <div align="center">
  <center>
  <table border="0" cellpadding="0" cellspacing="0" style="border-collapse: collapse" bgcolor="#66FFCC" width="71%" id="AutoNumber1">
    <tr>
      <td width="50%" align="center" ><b><font size="2">�ǳ�</font></b></td>
      <td width="50%" align="center" ><%=name%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">����</font></b></td>
      <td width="50%" align="center"><%=mima%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">����</font></b></td>
      <td width="50%" align="center"><%=u_name%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">����</font></b></td>
      <td width="50%" align="center"><%=wenti%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><b><font size="2">��</font></b></td>
      <td width="50%" align="center"><%=daan%></td>
    </tr>
    <tr>
      <td width="50%" align="center" ><font size="2"><b>�Ա�</b></font></td>
      <td width="50%" align="center"><%=sex%>��</td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">����</font></b></td>
      <td width="50%" align="center"><%=birthday%></td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">�绰</font></b></td>
      <td width="50%" align="center"><%=tel%></td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">QQ</font></b></td>
      <td width="50%" align="center"><%=qq%></td>
    </tr>
	<tr>
      <td width="50%" align="center" ><b><font size="2">��ͥסַ</font></b></td>
      <td width="50%" align="center"><%=addr%></td>
    </tr>
  </table>
  </center>
</div>
<p align="center">
<input type="submit" value="�ύע��">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input type="button" value="�����޸�" onClick="history.back()"></p>

</form>
 <%}}%>
		</td>
		
	</tr>
	<tr>
		<td colspan="3">
			<br></td>
	</tr>
</table>
<!-- End ImageReady Slices -->
<div id="footer">
	<p>CopyRight &copy; 2020 Charity Network</p>
    <p>���Ĺ����� ��Ȩ����</p>
</div>
</body>
</html>