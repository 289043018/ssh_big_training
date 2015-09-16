package com.hand.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import com.hand.dao.Om_cust_orgDao;
import com.hand.model.Om_cust_info;
import com.hand.model.Om_cust_org;


@Repository("om_cust_orgDao")
public class Om_cust_orgDaoImpl implements Om_cust_orgDao {

	
	@Autowired()
	@Qualifier("sessionFactory")
	private SessionFactory sessionFactory;
	private Session session;
	
	Om_cust_org om_cust_org = new Om_cust_org();
	
	public Om_cust_org findById(int org_id) {
		session = sessionFactory.getCurrentSession();
//		Om_cust_info om_cust_info = null;
		om_cust_org = (Om_cust_org) session.get(Om_cust_org.class, org_id); 
		System.out.println("查找到了："+om_cust_org.getOrg_id());
		return om_cust_org;
	}

}