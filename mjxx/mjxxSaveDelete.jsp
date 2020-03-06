<%@ page contentType="text/html;charset=gb2312"%>
<%@ page language="java" import="java.sql.*"%>
<jsp:useBean id="deletebean" scope="page" class="mydb.mydb"/>

<%
//接受id参数并转换为整型
 int product_id=Integer.parseInt(request.getParameter("product_id"));

//将该记录删除 
 String sql = "delete from mjxxlist where product_id ="+product_id;
deletebean.executeUpdate(sql);

 
%>
//提示删除成功

<script language='javascript'>
    alert("你成功删除了这个商品")
    location='mjxxdelete.jsp';
</script>
