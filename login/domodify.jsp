<html>


<body>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="modifybean" scope="page" class="mydb.mydb"/>


<%
String name,mima,wenti,daan,sex,email,birthday,tel,qq,addr,yanzheng,sql,u_name;
//request.getParameter("id");//Ϊ�ַ�����
int id=Integer.parseInt(request.getParameter("id"));//�ַ���ת��Ϊ����

//�ύ�޸���Ϣ

name=new String(request.getParameter("name").getBytes("ISO8859_1"));//ʹ��getBytes("ISO8859_1")��֤�����ַ���Ҳ������ȷ�ύ
u_name=new String(request.getParameter("u_name").getBytes("ISO8859_1"));
mima=request.getParameter("mima");
wenti=new String(request.getParameter("wenti").getBytes("ISO8859_1"));
daan=new String(request.getParameter("daan").getBytes("ISO8859_1"));
sex=new String(request.getParameter("sex").getBytes("ISO8859_1"));
birthday=new String(request.getParameter("birthday").getBytes("ISO8859_1"));
tel=new String(request.getParameter("tel").getBytes("ISO8859_1"));
qq=new String(request.getParameter("qq").getBytes("ISO8859_1"));
addr=new String(request.getParameter("addr").getBytes("ISO8859_1"));
yanzheng=mima;

//��name���浽session������
request.getSession(true);
session.putValue("name",name);

//���޸���Ϣ���и�����֤
if (mima==null  || yanzheng.equals("")|| wenti.equals("") || daan.equals("") || name.equals("") )
{%>
<script language='javascript'> 
alert('����д����') 
//window.location=history.go(-1)
   
</script>
<%}
else
if(!mima.equals(yanzheng))
	{
%>
	<script language='javascript'> 
  alert('��������֤���벻��') 
  //window.location=history.go(-1)
   
</script>

	 
    <%}
else 
//�޸����ݿ�    
   {     
 sql="update user set name='"+name+"',password='"+mima+"',question='"+wenti+"',answer='"+daan+"',birthday='"+birthday+"',tel='"+tel+"',qq='"+qq+"',address='"+addr+"',sex='"+sex+"',u_name='"+u_name+"' where id ="+id;  //ע����ֵ�͸�ֵ����  
 
 modifybean.executeUpdate(sql);
 
 response.sendRedirect("modifysuccess.html");
 }
 
%>

</body>

</html>