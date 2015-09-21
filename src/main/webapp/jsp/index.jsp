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
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
 <link rel="stylesheet" href="<%=path %>/css/style1.css">
 <script src="<%=path %>/js/jquery-2.1.4.min.js"></script>
 <script src="<%=path %>/js/bootstrap.min.js"></script> 
</head>
<body>


<div class="container">
		<div class="head">
			
		</div>
		<div class="body">
			<div class="menu">
				<ul id="mytab" class="nav nav-tabs nav-stacked" role="tablist">
					<li role="presentation"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">用户管理<span
							class="glyphicon glyphicon-chevron-right"></span></a>
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">
								<div><a class="button" href="<%=path%>/jsp/createCustomer.jsp">新建客户</a></div>
								<div><a class="button" href="<%=path%>/jsp/showCustomer.jsp">客户查询</a></div>
								</div>
						</div>
								</li>
					<li role="presentation"><a href="#">价格管理<span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
							<li role="presentation"><a href="#">折扣管理<span
							class="glyphicon glyphicon-chevron-right"></span></a></li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="panel panel-info loginform">
                <div class="panel-heading">
                 		   销售管理系统
                </div>
                 
                <div class="panel-body">
                  <%=session.getAttribute("ch_name") %><p>欢迎用户使用系统，请点击右边导航栏进入相应页面！</p>
                </div>
                
            </div>
			</div>
	</div>
	</div>



</body>
</html>