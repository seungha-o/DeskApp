package com.kh.wefer.payment.model.domain;

import java.sql.Date;

import org.springframework.stereotype.Component;

@Component
public class Conference implements java.io.Serializable {
	private static final long serialVersionUID = 20001L;
	private String conference_id;
	private String conference_member;
	private String conference_title;
	private String conference_contents;
	private Date conference_date;
	
	public String getConference_id() {
		return conference_id;
	}

	public void setConference_id(String conference_id) {
		this.conference_id = conference_id;
	}

	public String getConference_member() {
		return conference_member;
	}

	public void setConference_member(String conference_member) {
		this.conference_member = conference_member;
	}

	public String getConference_title() {
		return conference_title;
	}

	public void setConference_title(String conference_title) {
		this.conference_title = conference_title;
	}

	public String getConference_contents() {
		return conference_contents;
	}

	public void setConference_contents(String conference_contents) {
		this.conference_contents = conference_contents;
	}

	public Date getConference_date() {
		return conference_date;
	}

	public void setConference_date(Date conference_date) {
		this.conference_date = conference_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	
	public Conference(String conference_id, String conference_member, String conference_title,
			String conference_contents, Date conference_date, String id) {
		super();
		this.conference_id = conference_id;
		this.conference_member = conference_member;
		this.conference_title = conference_title;
		this.conference_contents = conference_contents;
		this.conference_date = conference_date;
		this.id = id;
	}
	
	public Conference() {
	}
	@Override
	public String toString() {
		return "Conference [conference_id=" + conference_id + ", conference_member=" + conference_member
				+ ", conference_title=" + conference_title + ", conference_contents=" + conference_contents
				+ ", conference_date=" + conference_date + ", id=" + id + "]";
	}
	private String id;
	

}
