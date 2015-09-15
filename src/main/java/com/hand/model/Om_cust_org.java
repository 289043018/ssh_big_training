package com.hand.model;

public class Om_cust_org {
	private int org_id;
	private int cust_id;
	private String mailform;
	private String prepo_mailto;
	private String po_mailto;
	private String ocpi_mailto;
	private String inv_pklist_mailto;
	public Om_cust_org() {
	}
	public Om_cust_org(int org_id, int cust_id, String mailform, String prepo_mailto, String po_mailto,
			String ocpi_mailto, String inv_pklist_mailto) {
		super();
		this.org_id = org_id;
		this.cust_id = cust_id;
		this.mailform = mailform;
		this.prepo_mailto = prepo_mailto;
		this.po_mailto = po_mailto;
		this.ocpi_mailto = ocpi_mailto;
		this.inv_pklist_mailto = inv_pklist_mailto;
	}
	public int getOrg_id() {
		return org_id;
	}
	public void setOrg_id(int org_id) {
		this.org_id = org_id;
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
	public String getPrepo_mailto() {
		return prepo_mailto;
	}
	public void setPrepo_mailto(String prepo_mailto) {
		this.prepo_mailto = prepo_mailto;
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
