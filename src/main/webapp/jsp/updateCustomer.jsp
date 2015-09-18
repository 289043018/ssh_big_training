<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%String path = request.getContextPath(); %>
    <%@ page isELIgnored="false"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新用户详细信息</title>
<script src="../js/jquery-2.1.4.min.js"></script>

<script type="text/javascript">

 $(document).ready(function(){
/* 	alert("开始ajax"),
	alert($("input[name='show_id']").val()), */
	alert("正在加载数据，请稍后...."),
		$.ajax({
			   type: "POST",
			   url: "Text_showdetail!showdetail.do?cust_id="+$("input[name='cust_id']").val(),
			   dataType:"json",
			   success:function(data) {
				  /*  加载客户信息 */
					$("input[name='customer_name']").val(data.customer_name);
					$("select[name='customer_code']").val(data.customer_code);
					$("select[name='type']").val(data.type);
					$("input[name='group_company']").val(data.group_company);
					$("input[name='corporation']").val(data.corporation);
					
					
					/* 加载地址信息 */
					$("input[name='address_id']").val(data.address_id);
					$("select[name='country']").val(data.country);
					$("input[name='state']").val(data.state);
					$("input[name='city']").val(data.city);
					$("input[name='port_of_destination']").val(data.port_of_destination);
					$("input[name='address1']").val(data.address1);
					$("input[name='address2']").val(data.address2);
					$("input[name='postcode']").val(data.postcode);
					$("input[name='shipping_mark']").val(data.shipping_mark);
					$("input[name='status']").val(data.status);
					$("input[name='inactive_date']").val(data.inactive_date);
					
					
					/* 加载付款信息 */
					$("input[name='payment_id']").val(data.payment_id);
					$("input[name='invoice_group']").val(data.invoice_group);
					$("input[name='markup_name']").val(data.markup_name);
					$("input[name='currency']").val(data.currency);
					$("input[name='payment_term']").val(data.payment_term);
					$("input[name='price_term1']").val(data.price_term1);
					$("input[name='price_term2']").val(data.price_term2);
					$("input[name='price_term3']").val(data.price_term3);
					$("input[name='discount_name']").val(data.discount_name);
					
					
					
					/* 加载组织信息 */
					$("input[name='org_id']").val(data.org_id);
					$("select[name='market_area']").val(data.market_area);
					$("input[name='bussiness_manager']").val(data.bussiness_manager);
					$("input[name='bussiness_assistant']").val(data.bussiness_assistant);
					
					/* 加载联系人信息 */
					$("input[name='cont_id']").val(data.cont_id);
					$("input[name='mailfrom']").val(data.mailfrom);
					$("input[name='prepr_mailto']").val(data.prepr_mailto);
					$("input[name='po_mailto']").val(data.po_mailto);
					$("input[name='ocpi_mailto']").val(data.ocpi_mailto);
					$("input[name='inv_pklist_mailto']").val(data.inv_pklist_mailto);

				}
			});
			alert("数据加载完毕！")
		/* 	alert($("#form1").serialize());  */
	
 }); 
 
 


$(document).ready(function () {
	$("#save_cust").click(function(){
		alert($("#form_cust").serialize());
		
		$.ajax({
			 type: "POST",
			   url: "Text_updateCust!updateCust.do?"+$("#form_cust").serialize(),
			   dataType:"json",
			   success:function(){
				   alert("保存成功");
			   }
		});

	});
});

$(document).ready(function () {
	$("#save_address").click(function(){
		alert($("#form_address").serialize());
		
		$.ajax({
			 type: "POST",
			   url: "Text_updateAddress!updateAddress.do?"+$("#form_address").serialize(),
			   dataType:"json",
			   success:function(){
				   alert("保存成功");
			   }
		});

	});
});

$(document).ready(function () {
	$("#save_org").click(function(){
		alert($("#form_org").serialize());
		
		$.ajax({
			 type: "POST",
			   url: "Text_updateOrg!updateOrg.do?"+$("#form_org").serialize(),
			   dataType:"json",
			   success:function(){
				   alert("保存成功");
			   }
		});

	});
});
 
$(document).ready(function () {
	$("#save_payment").click(function(){
		alert($("#form_payment").serialize());
		
		$.ajax({
			 type: "POST",
			   url: "Text_updatePayment!updatePayment.do?"+$("#form_payment").serialize(),
			   dataType:"json",
			   success:function(){
				   alert("保存成功");
			   }
		});

	});
});
 
 
$(document).ready(function () {
	$("#save_cont").click(function(){
		alert($("#form_cont").serialize());
		
		$.ajax({
			 type: "POST",
			   url: "Text_updateCont!updateCont.do?"+$("#form_cont").serialize(),
			   dataType:"json",
			   success:function(){
				   alert("保存成功");
			   }
		});

	});
});
 
 
 
 
</script>

</head>
<body>

<!-- type=hidden  -->

	<form id="form_cust">
	
	<input id="cust_id" type=hidden value="${cust_id}" name="cust_id"/> 
	<!-- <button type="submit" id="xinjian">新建</button><button type="reset">重置</button> -->
	*客户名称：<input type="text" name="customer_name" class="form-control" placeholder="客户名称" class="required" > 
			*客户简称：<!-- <input type="text" name="customer_code" class="form-control" placeholder="客户简称" class="required" maxlength="10"> -->
			<select name="customer_code">
		 				<option value="ATW-J">ATW-J</option>
		 				<option value="ATW-M">ATW-M</option>
		 				<option value="ATW">ATW</option>
		 				<option value="GTW">GTW</option>
		 				<option value="GBH">GBH</option>
		 				
		 				</select> 
		*类型：<!-- <input type="text" name="type" class="form-control" placeholder="类型" class="required" maxlength="10">  -->
		<select name="type">
		 				<option value="GG20">GG20</option>
		 				<option value="STD">STD</option>
		 				</select> 
		<!-- 	状态：<input type="text" name="status" class="form-control" placeholder="待确认" disabled>  -->
			集团公司：<input type="text" name="group_company" class="form-control" placeholder="集团公司" maxlength="10"> 
			总公司：<input type="text" name="corporation" class="form-control" placeholder="总公司" maxlength="10">
			
			<button type="button"  id="save_cust">保存</button>
	时间:<input type="date" />
	</form>
	
			<br><br><br><br><br><br>
			
			
		<form id="form_address">
		地址信息：<br>
			 <input id="cust_id" type=hidden value="${cust_id}" name="cust_id"/>
			 <input id="address_id" type=hidden  name="address_id"/> 
		*国家： <select name="country">
			<option value="Afghanistan">Afghanistan</option>
			<option value="Albania">Albania</option>
			<option value="Argentina">Argentina</option>
			<option value="Australia">Australia</option>
			<option value="Austria">Austria</option>
			<option value="Bahrain">Bahrain</option>
			<option value="Belgium">Belgium</option>
			<option value="Brazil">Brazil</option>
			<option value="Bulgaria">Bulgaria</option>
			<option value="Chile">Chile</option>
			<option value="China">China</option>
			<option value="Colombia">Colombia</option>
			<option value="Croatia">Croatia</option>
			<option value="Cyprus">Cyprus</option>
			<option value="Czech Republic">Czech Republic</option>
			<option value="Denmark">Denmark</option>
			<option value="Ecuador">Ecuador</option>
			<option value="Egypt">Egypt</option>
			<option value="El Salvador">El Salvador</option>
			<option value="Estonia">Estonia</option>
			<option value="Faroe Islands">Faroe Islands</option>
			<option value="Fiji">Fiji</option>
			<option value="Finland">Finland</option>
			<option value="FYROM">FYROM</option>
			<option value="Germany">Germany</option>
			<option value="Ghana">Ghana</option>
			<option value="Greece">Greece</option>
			<option value="Guatemala">Guatemala</option>
			<option value="Guernsey">Guernsey</option>
			<option value="Honduras">Honduras</option>
			<option value="Hong Kong">Hong Kong</option>
			<option value="Hungary">Hungary</option>
			<option value="Iceland">Iceland</option>
			<option value="India">India</option>
			<option value="Indonesia">Indonesia</option>
			<option value="Ireland">Ireland</option>
			<option value="Italy">Italy</option>
			<option value="Jamaica">Jamaica</option>
			<option value="Jersey">Jersey</option>
			<option value="Kenya">Kenya</option>
			<option value="Kuwait">Kuwait</option>
			<option value="Latvia">Latvia</option>
			<option value="Lithuania">Lithuania</option>
			<option value="France">France</option>
			<option value="Luxembourg">Luxembourg</option>
			<option value="Malaysia">Malaysia</option>
			<option value="Malta">Malta</option>
			<option value="Mexico">Mexico</option>
			<option value="Netherlands">Netherlands</option>
			<option value="New Zealand">New Zealand</option>
			<option value="Nicaragua">Nicaragua</option>
			<option value="Norway">Norway</option>
			<option value="Paraguay">Paraguay</option>
			<option value="Peru">Peru</option>
			<option value="Poland">Poland</option>
			<option value="Portugal">Portugal</option>
			<option value="Romania">Romania</option>
			<option value="Serbia">Serbia</option>
			<option value="Singapore">Singapore</option>
			<option value="Slovenia">Slovenia</option>
			<option value="South Africa">South Africa</option>
			<option value="Spain">Spain</option>
			<option value="Sri Lanka">Sri Lanka</option>
			<option value="Sweden">Sweden</option>
			<option value="Switzerland">Switzerland</option>
			<option value="Turkey">Turkey</option>
			<option value="United Kingdom">United Kingdom</option>
			<option value="Uruguay">Uruguay</option>
			<option selected value="USA">USA</option>
		</select> 
		州/省:<input type="text" name="state" readonly="readonly"   />
		* 城市:<input type="text" name="city" readonly="readonly"  class="required"  />
		*目的巷：<input type="text" name="port_of_destination" class="required"> 
		*地址1：<input type="text" name="address1" class="required"> 
		地址2：<input type="text" name="address2"> 
		邮编：<input type="text" name="postcode">
		*唛头：<input type="text" name="shipping_mark" class="required"> 
		状态：<input type="text" name="status" value="待确认" readonly="readonly">
		失效日期：<input type="text" name="inactive_date" placeholder="yyyy-mm-dd">
		 <br>
			<button type="button" id="save_address" >保存</button>
		</form>
			
			
			
			 
		<br>
		<br> 
		
		
		
		<form id="form_payment">
		<input id="payment_id" type=hidden  name="payment_id"/> 
		付款信息：<br>
所属发票组： <input type="text" name="invoice_group"> 
* 通用加价条款：<input type="text" name="markup_name" class="required"> 
 * 结算货币：<input type="text" name="currency" class="required" maxlength="3"> 
  *一般折扣：<input type="text" name="discount_name" class="required"> 
   * 付款方法：<input type="text" name="payment_term" class="required"> 
    价格条款1：<input type="text" name="price_term1"> 
     价格条款2：<input type="text" name="price_term2"> 
		价格条款3：<input type="text" name="price_term3"> 
		
		<button type="button" id="save_payment" >保存</button>
		</form>
		
		 <br>
		<br>
		<br> 
		
		
		
		<form id="form_org">
	
		组织信息：<br>
		<input id="org_id" type=hidden  name="org_id"/> 
		 * 所属TEAM：<!-- <input type="text" name="market_area" class="required">  -->
		 			<select name="market_area">
		 				<option value="德国">德国</option>
		 				<option value="亚太">亚太</option>
		 				<option value="欧洲1">欧洲1</option>
		 				<option value="美国">美国</option>
		 				<option value="欧洲2">欧洲2</option>
		 				<option value="OEM">OEM</option>
		 				</select> 
		 
		  * 业务经理： <input type="text" name="bussiness_manager" class="required"> 
		  * 业务助理： <input type="text" name="bussiness_assistant" class="required"> 
		  
		  <button type="button" id="save_org" >保存</button>
		
		</form>
		  <br>
		<br>
		<br>
		
		
		<form id="form_cont">
		<input id="cont_id" type=hidden  name="cont_id"/> 
		 联系人信息：<br>
		 发件人邮箱： <input type="text" name="mailfrom"> 
		 Pre PO 收件人：<input type="text" name="prepr_mailto"> 
		  PO 收件人：<input type="text" name="po_mailto"> 
		   OC/PI收件人：<input type="text" name="ocpi_mailto"> 
		INV/Packing list 收件：<input type="text" name="inv_pklist_mailto"> 
		<button type="button" id="save_cont" >保存</button>
		</form>
		

</body>
</html>