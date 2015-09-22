<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%String path = request.getContextPath(); %>
    <%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户创建页面</title>
<link rel="stylesheet"
	href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css"> 
 <link rel="stylesheet" href="<%=path %>/css/style1.css">
 <script src="<%=path %>/js/jquery-2.1.4.min.js"></script>
 <script src="<%=path %>/js/bootstrap.min.js"></script> 
 <script type="text/javascript">  
 $(document).ready(function(){  
    $("#xinjian").click(function(check){
    	$("form :input.required").each(function(){
    	    if($(this).val()==""){
    	    	alert($(this).prop("name")+"带*号的输入框不能为空！");
    	    	check.preventDefault();//此处阻止提交表单  
    	    };
    	});
    });  
});
</script>
</head>
<body>


<div class="container">
		<div class="head">
			<a class="btn btn-primary"
				href="<%=request.getContextPath()%>/Logout_Logout!Logout.do">退出</a>
		</div>
		<div class="body">
			<div class="menu">
				<ul id="mytab" class="nav nav-tabs nav-stacked" role="tablist">
					<li role="presentation"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">客户管理<span
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
					<li role="presentation"><a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">用户管理<span
							class="glyphicon glyphicon-chevron-right"></span></a>
							<div id="collapseTwo" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">
								<div><a class="button" href="<%=path%>/jsp/createUser.jsp">新建用户</a></div>
								
								</div>
						</div>
								</li>
				</ul>
			</div>
			<div class="kehuguanli">
				<div class="panel panel-info loginform">
                <div class="panel-heading">
                 		   销售管理系统
                </div>
                 
                <div class="panel-body">
                 
                 
                <form action="<%=path %>/Text_createUser!createUser.do" Method="POST">
                 <label style="width: 70px">新建用户：</label> <br>
				<div class="col-sm-offset-2">
				<div>
									<label style="width: 160px" >*账号：</label> 
										 <input type="text"  name="user_name" class="required">
								</div>	
				<div>
									<label style="width: 160px" >*密码：</label> 
										 <input type="text"  name="user_pwd" class="required">
								</div>	
				<div>
									<label style="width: 160px" >*中文名：</label> 
										 <input type="text"  name="ch_name" class="required">
								</div>
								<div>
									<label style="width: 160px" >*工号：</label> 
										 <input type="text"  name="staff_id" class="required">
								</div>
								<div>
									<label style="width: 160px" >英文名：</label> 
										 <input type="text"  name="en_name" >
								</div>
										
				
					<div>
									<label style="width: 160px" >职位：</label> 
										 <select name="role" >
		 				<option value="财务人员">财务人员</option>
		 				<option value="业务经理">业务经理</option>
		 				<option value="业务员">业务员</option>
		 				</select> 
								</div>	
					<div>
									<label style="width: 160px" >联系电话：</label> 
										 <input type="text"  name="phone" >
								</div>	
					<div>
									<label style="width: 160px" >邮箱地址： </label> 
										  <input type="text" name="email" >
								</div>	
								<div class="col-md-2 col-md-offset-6">
								<button class="btn btn-primary" type="submit" id="xinjian">新建</button>
								</div>
				
				
				</div>
                
                
                
                
                </form>


                </div>
                
            </div>
			</div>
	</div>
	</div>



</body>
</html>