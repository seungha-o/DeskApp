package com.kh.wefer.payment.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Payment extends Conference implements java.io.Serializable {
	private static final long serialVersionUID = 20001L;
	private String payment_id;
	private String payment_item;
	private String payment_status;
	private String payment_members_count;
	private String payment_prestatus;
	private String id;
	private String conference_id;
	private Conference Conference;
	
	public Payment() {
		
	}
	public Payment(String conference_id, String conference_member, String conference_title, String conference_contents,
			Date conference_date, String id, String payment_id, String payment_item, String payment_status,
			String payment_members_count, String payment_prestatus, String id2, String conference_id2,
			com.kh.wefer.payment.model.domain.Conference conference) {
		super(conference_id, conference_member, conference_title, conference_contents, conference_date, id);
		this.payment_id = payment_id;
		this.payment_item = payment_item;
		this.payment_status = payment_status;
		this.payment_members_count = payment_members_count;
		this.payment_prestatus = payment_prestatus;
		id = id2;
		conference_id = conference_id2;
		Conference = conference;
	}
	@Override
	public String toString() {
		return "Payment [payment_id=" + payment_id + ", payment_item=" + payment_item + ", payment_status="
				+ payment_status + ", payment_members_count=" + payment_members_count + ", payment_prestatus="
				+ payment_prestatus + ", id=" + id + ", conference_id=" + conference_id + ", Conference=" + Conference
				+ "]";
	}
	public String getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}
	public String getPayment_item() {
		return payment_item;
	}
	public void setPayment_item(String payment_item) {
		this.payment_item = payment_item;
	}
	public String getPayment_status() {
		return payment_status;
	}
	public void setPayment_status(String payment_status) {
		this.payment_status = payment_status;
	}
	public String getPayment_members_count() {
		return payment_members_count;
	}
	public void setPayment_members_count(String payment_members_count) {
		this.payment_members_count = payment_members_count;
	}
	public String getPayment_prestatus() {
		return payment_prestatus;
	}
	public void setPayment_prestatus(String payment_prestatus) {
		this.payment_prestatus = payment_prestatus;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getConference_id() {
		return conference_id;
	}
	public void setConference_id(String conference_id) {
		this.conference_id = conference_id;
	}
	public Conference getConference() {
		return Conference;
	}
	public void setConference(Conference conference) {
		Conference = conference;
	}
	

}
