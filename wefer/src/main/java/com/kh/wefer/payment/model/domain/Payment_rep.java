package com.kh.wefer.payment.model.domain;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class Payment_rep {
	private static final long serialVersionUID = 20001L;
	private String payment_comment_number;
	private String contents;
	private String payment_id;
	private String id;
	private Date comment_date;
	
	@Override
	public String toString() {
		return "Payment_rep [payment_comment_number=" + payment_comment_number + ", contents=" + contents
				+ ", payment_id=" + payment_id + ", id=" + id + ", comment_date=" + comment_date + "]";
	}
	public Payment_rep() {
	}
	public Payment_rep(String payment_comment_number, String contents, String payment_id, String id,
			Date comment_date) {
		super();
		this.payment_comment_number = payment_comment_number;
		this.contents = contents;
		this.payment_id = payment_id;
		this.id = id;
		this.comment_date = comment_date;
	}
	public String getPayment_comment_number() {
		return payment_comment_number;
	}
	public void setPayment_comment_number(String payment_comment_number) {
		this.payment_comment_number = payment_comment_number;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getPayment_id() {
		return payment_id;
	}
	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getComment_date() {
		return comment_date;
	}
	public void setComment_date(Date comment_date) {
		this.comment_date = comment_date;
	}
}
	
	