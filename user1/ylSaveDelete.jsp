<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="deletebean" scope="page" class="mydb.mydb"/>

<%
//����id������ת��Ϊ����
 int id=Integer.parseInt(request.getParameter("id"));

//���ü�¼ɾ�� 
 String sql = "delete from user where id ="+id;
deletebean.executeUpdate(sql);

 
%>
//��ʾɾ���ɹ�

<script language='javascript'>
    alert("��ɹ�ɾ�����������Ա")
    location='yldelete.jsp';
</script>
