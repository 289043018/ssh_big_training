package com.hand.model;

import java.sql.Date;

public class Om_normal_discount {
	private int discount_id;
	private String discount_name;
	private String type;
	private String discount_base;
	private int base_qty;
	private int discount_rate;
	private String activity;
	private Date activity_date_from;
	private Date activity_date_to;
	public Om_normal_discount() {
	}
	public Om_normal_discount(int discount_id, String discount_name, String type, String discount_base, int base_qty,
			int discount_rate, String activity, Date activity_date_from, Date activity_date_to) {
		super();
		this.discount_id = discount_id;
		this.discount_name = discount_name;
		this.type = type;
		this.discount_base = discount_base;
		this.base_qty = base_qty;
		this.discount_rate = discount_rate;
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getDiscount_base() {
		return discount_base;
	}
	public void setDiscount_base(String discount_base) {
		this.discount_base = discount_base;
	}
	public int getBase_qty() {
		return base_qty;
	}
	public void setBase_qty(int base_qty) {
		this.base_qty = base_qty;
	}
	public int getDiscount_rate() {
		return discount_rate;
	}
	public void setDiscount_rate(int discount_rate) {
		this.discount_rate = discount_rate;
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
