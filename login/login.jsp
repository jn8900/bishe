<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<title>��¼ҳ�洦��</title>
</head>

<body>
<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="loginbean" scope="page" class="mydb.mydb"/>
<%! int count=0;%>          

<%
//�ύ����������
String name=new String(request.getParameter("name").getBytes("ISO8859_1"));
String usercount;            //usercount ������¼ʹ��������ʱ������
String mima=request.getParameter("password");
//Ϊ��ʱ
if (name.length()==0||mima.length()==0)
{%>
<script language='javascript'> 
   alert("����д����")
   window.history.back()
   </script>
   
<%}
else
{
//ûע��
String sql="select * from user where name='"+name+"'";
ResultSet rs=loginbean.executeQuery(sql); 
if(!rs.next())
{
%>
<script language='javascript'>
alert("����ע��")
window.history.back()

</script ><%}
else
//�����
{
String mima1=rs.getString("password");
if (!mima1.equals(mima))
{%>
<script language='javascript'> 
   alert("�������")
window.history.back()
</script>

<%
}
else
{
//�ɹ���¼����������һ
  count++;
  usercount = String.valueOf(count);//����ת�����ַ�
   request.getSession(true);//������ڵĻ����ظûỰ
  session.putValue("usercount",usercount);
   
//�����û���Ϣ
 request.getSession(true);     //��session�Ự��
 session.putValue("name",name);//����������session���Ա���ת��ҳʱ���ܱ��������Ϣ��
	int priority = Integer.parseInt(rs.getString("priority"));
	
	if(priority==1){
		response.sendRedirect("../index2.jsp");
	}
	else
		response.sendRedirect("../index/index1.jsp");
 rs.close(); 
//ת����ҳ

}
}

}
%>
</body>

</html>