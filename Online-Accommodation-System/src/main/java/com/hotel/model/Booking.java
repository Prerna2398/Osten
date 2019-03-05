package com.hotel.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.joda.time.LocalDate;
import org.joda.time.LocalTime;

@Entity
@Table(name="Booking")
public class Booking {
	@Id
	private String bookingId;
	private String hhpId;
	private String userid;
	private int no_of_adults;
	private LocalDate CIND;
	private LocalDate COTD;
	private LocalTime btime;
	public String getBookingId() {
		return bookingId;
	}
	public void setBookingId(String bookingId) {
		this.bookingId = bookingId;
	}
	public String getHhpId() {
		return hhpId;
	}
	public void setHhpId(String hhpId) {
		this.hhpId = hhpId;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getNo_of_adults() {
		return no_of_adults;
	}
	public void setNo_of_adults(int no_of_adults) {
		this.no_of_adults = no_of_adults;
	}
	public LocalDate getCIND() {
		return CIND;
	}
	public void setCIND(LocalDate cIND) {
		CIND = cIND;
	}
	public LocalDate getCOTD() {
		return COTD;
	}
	public void setCOTD(LocalDate cOTD) {
		COTD = cOTD;
	}
	public LocalTime getBtime() {
		return btime;
	}
	public void setBtime(LocalTime btime) {
		this.btime = btime;
	}
	
}
