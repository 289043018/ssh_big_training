<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%String path = request.getContextPath(); %>
    <%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>查看用户详细信息</title>
<script src="../js/jquery-2.1.4.min.js"></script>

<script type="text/javascript">

 $(document).ready(function(){
/* 	alert("开始ajax"),
	alert($("input[name='show_id']").val()), */
	alert("正在加载数据，请稍后...."),
		$.ajax({
			   type: "POST",
			   url: "Text_showdetail!showdetail.do?cust_id="+$("input[name='show_id']").val(),
			   dataType:"json",
			   success:function(data) {
				  /*  加载客户信息 */
					$("input[name='customer_name']").val(data.customer_name);
					$("input[name='customer_code']").val(data.customer_code);
					$("input[name='type']").val(data.type);
					$("input[name='group_company']").val(data.group_company);
					$("input[name='corporation']").val(data.corporation);
					
					
					/* 加载地址信息 */
					$("input[name='country']").val(data.country);
					$("input[name='port_of_destination']").val(data.port_of_destination);
					$("input[name='address1']").val(data.address1);
					$("input[name='address2']").val(data.address2);
					$("input[name='postcode']").val(data.postcode);
					$("input[name='shipping_mark']").val(data.shipping_mark);
					$("input[name='status']").val(data.status);
					
					
					
					/* 加载付款信息 */
					$("input[name='invoice_group']").val(data.invoice_group);
					$("input[name='markup_name']").val(data.markup_name);
					$("input[name='currency']").val(data.currency);
					$("input[name='payment_term']").val(data.payment_term);
					$("input[name='price_term1']").val(data.price_term1);
					$("input[name='price_term2']").val(data.price_term2);
					$("input[name='price_term3']").val(data.price_term3);
					$("input[name='discount_name']").val(data.discount_name);
					
					
					
					/* 加载组织信息 */
					$("input[name='market_area']").val(data.market_area);
					$("input[name='bussiness_manager']").val(data.bussiness_manager);
					$("input[name='bussiness_assistant']").val(data.bussiness_assistant);
					
					/* 加载联系人信息 */
					$("input[name='mailfrom']").val(data.mailfrom);
					$("input[name='prepr_mailto']").val(data.prepr_mailto);
					$("input[name='po_mailto']").val(data.po_mailto);
					$("input[name='ocpi_mailto']").val(data.ocpi_mailto);
					$("input[name='inv_pklist_mailto']").val(data.inv_pklist_mailto);

				}
			});
			alert("数据加载完毕！")

	
 }); 
</script>

</head>
<body>
<input id="cust_id" type=hidden value="${cust_id}" name="show_id"/> 
<!-- type=hidden  -->

<div class="customer" >

</div>
<form action="<%=path %>/Text_create_customer!create_customer.do" Method="POST">
	
	<!-- <button type="submit" id="xinjian">新建</button><button type="reset">重置</button> -->
	*客户名称：<input type="text" name="customer_name" class="form-control"
			placeholder="客户名称" class="required" readonly="readonly" > 
			*客户简称： <input type="text" readonly="readonly" name="customer_code" class="form-control" placeholder="客户简称" class="required" maxlength="10">
			
		*类型： <input type="text" readonly="readonly" name="type" class="form-control" placeholder="类型" class="required" maxlength="10">  
		
		<!-- 	状态：<input type="text" name="status" class="form-control" placeholder="待确认" disabled>  -->
			集团公司：<input type="text" readonly="readonly" name="group_company" class="form-control" placeholder="集团公司" maxlength="10"> 
			总公司：<input type="text" readonly="readonly" name="corporation" class="form-control" placeholder="总公司" maxlength="10">
			
			
			<br><br><br><br><br><br>
			 地址信息：<br>
		*国家：<input type="text" name="country" readonly="readonly"    />
		
		*目的巷：<input type="text" readonly="readonly" name="port_of_destination" class="required"> 
		*地址1：<input readonly="readonly" type="text" name="address1" class="required"> 
			地址2：<input type="text" readonly="readonly" name="address2"> 
			邮编：<input type="text" readonly="readonly" name="postcode">
		*唛头：<input type="text" readonly="readonly" name="shipping_mark" class="required"> 
		状态：<input type="text" readonly="readonly" name="status" value="待确认" readonly="readonly">
		
		
		 <br>
		<br>
		<br> 
		
		付款信息：<br>
所属发票组： <input type="text" readonly="readonly" name="invoice_group"> 
* 通用加价条款：<input type="text" readonly="readonly" name="markup_name" class="required"> 
 * 结算货币：<input type="text" readonly="readonly" name="currency" class="required" maxlength="3"> 
  *一般折扣：<input type="text" readonly="readonly" name="discount_name" class="required"> 
   * 付款方法：<input type="text" readonly="readonly" name="payment_term" class="required"> 
    价格条款1：<input type="text" readonly="readonly" name="price_term1"> 
     价格条款2：<input type="text" readonly="readonly" name="price_term2"> 
		价格条款3：<input type="text" readonly="readonly" name="price_term3"> 
		 <br>
		<br>
		<br> 
		
		
		组织信息：<br>
		 * 所属TEAM： <input type="text" name="market_area" readonly="readonly" class="required">  
		 			
		 
		  * 业务经理： <input type="text" readonly="readonly" name="bussiness_manager" class="required"> 
		  * 业务助理： <input type="text" readonly="readonly" name="bussiness_assistant" class="required"> 
		  <br>
		<br>
		<br>
		 联系人信息：<br>
		 发件人邮箱： <input type="text" readonly="readonly" name="mailfrom"> 
		 Pre PO 收件人：<input type="text" readonly="readonly" name="prepr_mailto"> 
		  PO 收件人：<input type="text" readonly="readonly" name="po_mailto"> 
		   OC/PI收件人：<input type="text" readonly="readonly" name="ocpi_mailto"> 
		INV/Packing list 收件：<input type="text" readonly="readonly" name="inv_pklist_mailto"> 

	</form>
</body>
</html>