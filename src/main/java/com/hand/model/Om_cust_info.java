package com.hand.model;

public class Om_cust_info {
	private int cust_id;
	private String customer_code;
	private String customer_name;
	private String type;
	private String group_company;
	private String corporation;
	private int address_id;
	private int org_id;
	private int discount_id;
	public Om_cust_info() {
	}
	public Om_cust_info(int cust_id, String customer_code, String customer_name, String type, String group_company,
			String corporation, int address_id, int org_id, int discount_id) {
		super();
		this.cust_id = cust_id;
		this.customer_code = customer_code;
		this.customer_name = customer_name;
		this.type = type;
		this.group_company = group_company;
		this.corporation = corporation;
		this.address_id = address_id;
		this.org_id = org_id;
		this.discount_id = discount_id;
	}
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	public String getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}
	public String getCustomer_name() {
		return customer_name;
	}
	public void setCustomer_name(String customer_name) {
		this.customer_name = customer_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getGroup_company() {
		return group_company;
	}
	public void setGroup_company(String group_company) {
		this.group_company = group_company;
	}
	public String getCorporation() {
		return corporation;
	}
	public void setCorporation(String corporation) {
		this.corporation = corporation;
	}
	public int getAddress_id() {
		return address_id;
	}
	public void setAddress_id(int address_id) {
		this.address_id = address_id;
	}
	public int getOrg_id() {
		return org_id;
	}
	public void setOrg_id(int org_id) {
		this.org_id = org_id;
	}
	public int getDiscount_id() {
		return discount_id;
	}
	public void setDiscount_id(int discount_id) {
		this.discount_id = discount_id;
	}


}
