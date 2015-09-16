<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path = request.getContextPath(); %>
    <%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../js/jquery-2.1.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	 $("#btn").click(function(){
		alert("开始");
		$.ajax({
			type:"POST",
			url:"Text_findByName!findByName.do?customer_name=zi",
			dataType:"json",
			success:function(data) {
							var row;
								$("#customer").html(row);
		
								
							 $.each(data,function(entryIndex,entry) {//遍历JSON
													
												row += "<tr><td>"
														+entry.customer_name
														+ "</td><td>"
														+ entry.customer_code
														+ "</td><td>"
														+ entry.market_area
														+ "</td><td>"
														+ entry.bussiness_assistant
														+ "</td><td>"
														+ entry.bussiness_manager
														+ "</td><td>"
														+ entry.status
														+ "</td></tr><br>";
											});
							 $("#customer").html(row);
						}
		});
	 });
	});
	
	
	


    </script>
	

</head>
<body>
<a class="btn btn-primary"
				href="<%= request.getContextPath() %>/Logout_Logout!Logout.do">退出</a>
<form action="<%=path%>/Text_findByName!findByName.do" Method="post">
客户名称：<input type="text" name="customer_name" class="form-control" placeholder="客户名称">
客户简称：<input type="text" name="customer_code" class="form-control" placeholder="客户简称">
类型：<input type="text" name="type" class="form-control" placeholder="类型">
状态：<input type="text" name="status" class="form-control" placeholder="待确认">
集团公司：<input type="text" name="group_company" class="form-control" placeholder="集团公司">
总公司：<input type="text" name="corporation" class="form-control" placeholder="总公司">
 <button type="submit">查看</button>
</form>


<td><button id="btn" onclock="btn()">确认</button></td>	


<div id="customer">


</div>




</body>
</html>