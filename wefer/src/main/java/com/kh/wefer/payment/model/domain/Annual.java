package com.kh.wefer.payment.model.domain;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Component;

@Component
public class Annual implements java.io.Serializable {
	private static final long serialVersionUID = 20001L; 
	private Date write_date;
	private String annual_id;
	private String annual_content;
	private String annual_kind;
	private String id;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date annual_stddate;
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date annual_enddate;
	
	public Annual(Date write_date, String annual_id, String annual_content, String annual_kind, String id,
			Date annual_stddate, Date annual_enddate) {
		super();
		this.write_date = write_date;
		this.annual_id = annual_id;
		this.annual_content = annual_content;
		this.annual_kind = annual_kind;
		this.id = id;
		this.annual_stddate = annual_stddate;
		this.annual_enddate = annual_enddate;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	@Override
	public String toString() {
		return "Annual [write_date=" + write_date + ", annual_id=" + annual_id + ", annual_content=" + annual_content
				+ ", annual_kind=" + annual_kind + ", id=" + id + ", annual_stddate=" + annual_stddate
				+ ", annual_enddate=" + annual_enddate + "]";
	}
	public Annual(String annual_id, String annual_content, String annual_kind, String id, Date annual_stddate,
			Date annual_enddate) {
		super();
		this.annual_id = annual_id;
		this.annual_content = annual_content;
		this.annual_kind = annual_kind;
		this.id = id;
		this.annual_stddate = annual_stddate;
		this.annual_enddate = annual_enddate;
	}
	public Annual() {
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
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
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
	
}
