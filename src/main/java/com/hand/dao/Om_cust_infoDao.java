package com.hand.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.hand.model.Om_cust_info;

@Component
public interface Om_cust_infoDao {
	
	public Om_cust_info findById(int cust_id);
	public List<Om_cust_info> findByName(String customer_name);
	public void create(Om_cust_info om_cust_info);
}
