package com.hand.model;

public class Om_cust_contactors {
	private int cont_id;
	private int cust_id;
	private String mailform;
	private String prepr_mailto;
	private String po_mailto;
	private String ocpi_mailto;
	private String inv_pklist_mailto;
	public Om_cust_contactors() {
	}
	public Om_cust_contactors(int cont_id, int cust_id, String mailform, String prepr_mailto, String po_mailto,
			String ocpi_mailto, String inv_pklist_mailto) {
		super();
		this.cont_id = cont_id;
		this.cust_id = cust_id;
		this.mailform = mailform;
		this.prepr_mailto = prepr_mailto;
		this.po_mailto = po_mailto;
		this.ocpi_mailto = ocpi_mailto;
		this.inv_pklist_mailto = inv_pklist_mailto;
	}
	public int getCont_id() {
		return cont_id;
	}
	public void setCont_id(int cont_id) {
		this.cont_id = cont_id;
	}
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	public String getMailform() {
		return mailform;
	}
	public void setMailform(String mailform) {
		this.mailform = mailform;
	}
	public String getPrepr_mailto() {
		return prepr_mailto;
	}
	public void setPrepr_mailto(String prepr_mailto) {
		this.prepr_mailto = prepr_mailto;
	}
	public String getPo_mailto() {
		return po_mailto;
	}
	public void setPo_mailto(String po_mailto) {
		this.po_mailto = po_mailto;
	}
	public String getOcpi_mailto() {
		return ocpi_mailto;
	}
	public void setOcpi_mailto(String ocpi_mailto) {
		this.ocpi_mailto = ocpi_mailto;
	}
	public String getInv_pklist_mailto() {
		return inv_pklist_mailto;
	}
	public void setInv_pklist_mailto(String inv_pklist_mailto) {
		this.inv_pklist_mailto = inv_pklist_mailto;
	}
	

}
