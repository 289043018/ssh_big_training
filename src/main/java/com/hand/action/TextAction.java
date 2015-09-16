package com.hand.action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.hand.dao.Om_cust_infoDao;
import com.hand.model.Om_cust_info;
import com.hand.model.Om_cust_org;
import com.hand.model.Om_normal_discount;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class TextAction extends ActionSupport  {
	private String customer_name;
	
	Om_cust_info om_cust_info = new Om_cust_info();
	Om_cust_org	om_cust_org = new Om_cust_org();
	Om_normal_discount om_normal_discount = new Om_normal_discount();
	

	ApplicationContext ac = new ClassPathXmlApplicationContext(new String[]{"spring.xml","spring-hibernate.xml"});
	Om_cust_infoDao om_cust_infoDao = (Om_cust_infoDao) ac.getBean("om_cust_infoDao");
//	Om_cust_info om_cust_info = (Om_cust_info) ac.getBean("om_cust_info");
	//按ID查找客户信息
	public void find(){
		Om_cust_info om_cust_info = om_cust_infoDao.findById(4);
		System.out.println(om_cust_info.getCustomer_name());

	}
	
	public void findByName() throws IOException{
		customer_name = "zi";
		List<Om_cust_info> om_cust_infoList = om_cust_infoDao.findByName("%"+customer_name+"%");
		System.out.println(om_cust_infoList);
		JsonObject lan = null;
		JsonArray jArray = new JsonArray();
		
		for(Iterator<Om_cust_info> iterator = om_cust_infoList.iterator();iterator.hasNext();){
			om_cust_info =iterator.next();
			System.out.println("开始添加JSON列表");
			lan = new JsonObject();
			lan.addProperty("customer_name", om_cust_info.getCustomer_name());
			lan.addProperty("customer_code", om_cust_info.getCustomer_code());
			lan.addProperty("market_area", om_cust_info.getOrg().getMarket_area());
			lan.addProperty("bussiness_assistant", om_cust_info.getOrg().getBussiness_assistant());
			lan.addProperty("bussiness_manager", om_cust_info.getOrg().getBussiness_manager());
			lan.addProperty("status", om_cust_info.getAddress().getStatus());
			jArray.add(lan);
			System.out.println("添加JSON列表成功");
		}
		
		
		
		
		
		
		HttpServletResponse response = ServletActionContext.getResponse();
		response.setCharacterEncoding("utf-8");
//		String str = jArray.toString();
//		response.getWriter().write(str);
//		System.out.println(str);
		
		
		 PrintWriter out = response.getWriter();  
		 out.print(jArray);  
		 System.out.println(jArray);
	        out.flush();  
	        out.close();
		
		ActionContext.getContext().put("om_cust_infoList", om_cust_infoList);
//		return "show_success";
	}
	
	
	
	public void create(){
		om_cust_info.setCustomer_code("HZL");
		om_cust_info.setCustomer_name("huangziliang");
		om_cust_info.setType("STD");
		om_cust_info.setGroup_company("hand");
		om_cust_info.setCorporation("hand");
//		om_cust_info.setOrg(om_cust_org);
//		om_cust_info.setDiscount(om_normal_discount);
		 System.out.println("开始插入");
		 om_cust_infoDao.create(om_cust_info);
		 System.out.println("结束插入");
	}

	public String getCustomer_name() {
		return customer_name;
	}

	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	
	
	
}
