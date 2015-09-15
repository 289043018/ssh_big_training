package com.hand.model;

import java.sql.Date;

public class Om_discount_applied_records {
	private int discount_id;
	private String discount_name;
    private String cust_code;
    private String ADN_identify_num;
    private int applied_amount;
    private Date applied_date;
    private int cancel;
    private Date cancel_date;
    public Om_discount_applied_records() {
	}
	public Om_discount_applied_records(int discount_id, String discount_name, String cust_code, String aDN_identify_num,
			int applied_amount, Date applied_date, int cancel, Date cancel_date) {
		super();
		this.discount_id = discount_id;
		this.discount_name = discount_name;
		this.cust_code = cust_code;
		ADN_identify_num = aDN_identify_num;
		this.applied_amount = applied_amount;
		this.applied_date = applied_date;
		this.cancel = cancel;
		this.cancel_date = cancel_date;
	}
	public int getDiscount_id() {
		return discount_id;
	}
	public void setDiscount_id(int discount_id) {
		this.discount_id = discount_id;
	}
	public String getDiscount_name() {
		return discount_name;
	}
	public void setDiscount_name(String discount_name) {
		this.discount_name = discount_name;
	}
	public String getCust_code() {
		return cust_code;
	}
	public void setCust_code(String cust_code) {
		this.cust_code = cust_code;
	}
	public String getADN_identify_num() {
		return ADN_identify_num;
	}
	public void setADN_identify_num(String aDN_identify_num) {
		ADN_identify_num = aDN_identify_num;
	}
	public int getApplied_amount() {
		return applied_amount;
	}
	public void setApplied_amount(int applied_amount) {
		this.applied_amount = applied_amount;
	}
	public Date getApplied_date() {
		return applied_date;
	}
	public void setApplied_date(Date applied_date) {
		this.applied_date = applied_date;
	}
	public int getCancel() {
		return cancel;
	}
	public void setCancel(int cancel) {
		this.cancel = cancel;
	}
	public Date getCancel_date() {
		return cancel_date;
	}
	public void setCancel_date(Date cancel_date) {
		this.cancel_date = cancel_date;
	}
}
