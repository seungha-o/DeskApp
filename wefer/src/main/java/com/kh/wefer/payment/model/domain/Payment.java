package com.kh.wefer.payment.model.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
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
	private String annual_id;
	private String annual_content;
	private String annual_kind;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date annual_stddate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date annual_enddate; 
	private Date write_date;
	

	public Payment(String conference_id, String conference_member, String conference_title, String conference_contents,
			java.sql.Date conference_date, String id, String payment_id, String payment_item, String payment_status,
			String payment_members_count, String payment_prestatus, String id2, String conference_id2,
			com.kh.wefer.payment.model.domain.Conference conference, String annual_id, String annual_content,
			String annual_kind, Date annual_stddate, Date annual_enddate, Date write_date) {
		super(conference_id, conference_member, conference_title, conference_contents, conference_date, id);
		this.payment_id = payment_id;
		this.payment_item = payment_item;
		this.payment_status = payment_status;
		this.payment_members_count = payment_members_count;
		this.payment_prestatus = payment_prestatus;
		id = id2;
		conference_id = conference_id2;
		Conference = conference;
		this.annual_id = annual_id;
		this.annual_content = annual_content;
		this.annual_kind = annual_kind;
		this.annual_stddate = annual_stddate;
		this.annual_enddate = annual_enddate;
		this.write_date = write_date;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	public Payment(String conference_id, String conference_member, String conference_title, String conference_contents,
			java.sql.Date conference_date, String id, String payment_id, String payment_item, String payment_status,
			String payment_members_count, String payment_prestatus, String id2, String conference_id2,
			com.kh.wefer.payment.model.domain.Conference conference, String annual_id, String annual_content,
			String annual_kind, Date annual_stddate, Date annual_enddate) {
		super(conference_id, conference_member, conference_title, conference_contents, conference_date, id);
		this.payment_id = payment_id;
		this.payment_item = payment_item;
		this.payment_status = payment_status;
		this.payment_members_count = payment_members_count;
		this.payment_prestatus = payment_prestatus;
		id = id2;
		conference_id = conference_id2;
		Conference = conference;
		this.annual_id = annual_id;
		this.annual_content = annual_content;
		this.annual_kind = annual_kind;
		this.annual_stddate = annual_stddate;
		this.annual_enddate = annual_enddate;
	}
	public String getAnnual_id() {
		return annual_id;
	}
	public void setAnnual_id(String annual_id) {
		this.annual_id = annual_id;
	}
	public String getAnnual_content() {
		return annual_content;
	}
	public void setAnnual_content(String annual_content) {
		this.annual_content = annual_content;
	}
	public String getAnnual_kind() {
		return annual_kind;
	}
	public void setAnnual_kind(String annual_kind) {
		this.annual_kind = annual_kind;
	}
	public Date getAnnual_stddate() {
		return annual_stddate;
	}
	public void setAnnual_stddate(Date annual_stddate) {
		this.annual_stddate = annual_stddate;
	}
	public Date getAnnual_enddate() {
		return annual_enddate;
	}
	public void setAnnual_enddate(Date annual_enddate) {
		this.annual_enddate = annual_enddate;
	}
	public Payment() {
		
	}
	@Override
	public String toString() {
		return "Payment [payment_id=" + payment_id + ", payment_item=" + payment_item + ", payment_status="
				+ payment_status + ", payment_members_count=" + payment_members_count + ", payment_prestatus="
				+ payment_prestatus + ", id=" + id + ", conference_id=" + conference_id + ", Conference=" + Conference
				+ ", annual_id=" + annual_id + ", annual_content=" + annual_content + ", annual_kind=" + annual_kind
				+ ", annual_stddate=" + annual_stddate + ", annual_enddate=" + annual_enddate + ", write_date="
				+ write_date + "]";
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
