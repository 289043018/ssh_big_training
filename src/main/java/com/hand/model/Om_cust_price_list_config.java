package com.hand.model;

public class Om_cust_price_list_config {
	private int id;
	private String cust_code;
	private String type;
	private String display_name;
	private String price_list_col;
	private int EXCEL_col;
	private String activity;
	public Om_cust_price_list_config() {
	}
	public Om_cust_price_list_config(int id, String cust_code, String type, String display_name, String price_list_col,
			int eXCEL_col, String activity) {
		super();
		this.id = id;
		this.cust_code = cust_code;
		this.type = type;
		this.display_name = display_name;
		this.price_list_col = price_list_col;
		EXCEL_col = eXCEL_col;
		this.activity = activity;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCust_code() {
		return cust_code;
	}
	public void setCust_code(String cust_code) {
		this.cust_code = cust_code;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDisplay_name() {
		return display_name;
	}
	public void setDisplay_name(String display_name) {
		this.display_name = display_name;
	}
	public String getPrice_list_col() {
		return price_list_col;
	}
	public void setPrice_list_col(String price_list_col) {
		this.price_list_col = price_list_col;
	}
	public int getEXCEL_col() {
		return EXCEL_col;
	}
	public void setEXCEL_col(int eXCEL_col) {
		EXCEL_col = eXCEL_col;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	

}
