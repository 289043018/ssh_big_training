<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path = request.getContextPath(); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
success!

<%-- <a href="<%=path%>/jsp/showCustomer.jsp">打开查看用户页面</a> --%>


<a href="<%=path%>/Text_find!find.do">按ID查看客户</a>
<a href="<%=path%>/Text_create!create.do">创建用户</a>
 <a href="<%=path%>/jsp/showCustomer.jsp">按名字查找用户</a> 
</body>
</html>