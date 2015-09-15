package com.hand.model;

import java.sql.Date;

public class Om_special_discount {
	private int discount_id;
	private String discount_name;
	private String cust_code;
	private int amount;
	private int applied_amount;
	private int balance;
	private String activity;
	private Date activity_date_from;
	private Date activity_date_to;
	public Om_special_discount() {
	}
	public Om_special_discount(int discount_id, String discount_name, String cust_code, int amount, int applied_amount,
			int balance, String activity, Date activity_date_from, Date activity_date_to) {
		super();
		this.discount_id = discount_id;
		this.discount_name = discount_name;
		this.cust_code = cust_code;
		this.amount = amount;
		this.applied_amount = applied_amount;
		this.balance = balance;
		this.activity = activity;
		this.activity_date_from = activity_date_from;
		this.activity_date_to = activity_date_to;
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
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getApplied_amount() {
		return applied_amount;
	}
	public void setApplied_amount(int applied_amount) {
		this.applied_amount = applied_amount;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getActivity() {
		return activity;
	}
	public void setActivity(String activity) {
		this.activity = activity;
	}
	public Date getActivity_date_from() {
		return activity_date_from;
	}
	public void setActivity_date_from(Date activity_date_from) {
		this.activity_date_from = activity_date_from;
	}
	public Date getActivity_date_to() {
		return activity_date_to;
	}
	public void setActivity_date_to(Date activity_date_to) {
		this.activity_date_to = activity_date_to;
	}

}
