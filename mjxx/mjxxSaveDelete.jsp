<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="deletebean" scope="page" class="mydb.mydb"/>

<%
//����id������ת��Ϊ����
 int product_id=Integer.parseInt(request.getParameter("product_id"));

//���ü�¼ɾ�� 
 String sql = "delete from mjxxlist where product_id ="+product_id;
deletebean.executeUpdate(sql);

 
%>
//��ʾɾ���ɹ�

<script language='javascript'>
    alert("��ɹ�ɾ���������Ʒ")
    location='mjxxdelete.jsp';
</script>
