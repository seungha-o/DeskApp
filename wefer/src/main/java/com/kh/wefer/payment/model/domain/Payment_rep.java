package com.kh.wefer.payment.model.domain;

import org.springframework.stereotype.Component;

@Component
public class Payment_rep {
	private static final long serialVersionUID = 20001L;
	private String payment_comment_number;
	private String contents;
	private String payment_id;
	private String id;
	
	public Payment_rep(String payment_comment_number, String contents, String payment_id, String id) {
		super();
		this.payment_comment_number = payment_comment_number;
		this.contents = contents;
		this.payment_id = payment_id;
		this.id = id;
	}
	public Payment_rep() {
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
	@Override
	public String toString() {
		return "Payment_rep [payment_comment_number=" + payment_comment_number + ", contents=" + contents
				+ ", payment_id=" + payment_id + ", id=" + id + "]";
	}
	
	

}
