package com.hand.dao.impl;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.hand.dao.Om_cust_infoDao;
import com.hand.model.Customer;
import com.hand.model.Om_cust_info;


@Repository("om_cust_infoDao")
public class Om_cust_infoDaoImpl implements Om_cust_infoDao {
	
	@Autowired()
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	private Session session;
	
	Om_cust_info om_cust_info = new Om_cust_info();

	public Om_cust_info findById(int cust_id) {
		session = sessionFactory.getCurrentSession();
//		Om_cust_info om_cust_info = null;
		om_cust_info = (Om_cust_info) session.get(Om_cust_info.class, cust_id); 
		System.out.println("查找到了："+om_cust_info.getCustomer_name());
		return om_cust_info;
	}
	
	public List<Om_cust_info> findByName(String customer_name) {
		session = sessionFactory.getCurrentSession();
		System.out.println("开始按名字查找");
//		List<Om_cust_info> om_cust_info = session.createQuery("FROM Om_cust_info where customer_name="+customer_name).list();
		Criteria cr = session.createCriteria(Om_cust_info.class);    
		cr.add(Restrictions.like("customer_name", customer_name));  
		List<Om_cust_info> om_cust_info = cr.list();  
		System.out.println("结束按名字查找");
		
		return om_cust_info;
	}

	public void create(Om_cust_info om_cust_info) {
		session = sessionFactory.getCurrentSession();
		session.save(om_cust_info);
		System.out.println("插入了一个用户");

	}
	
	

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	
	
	
	
	

}
