package com.hotel.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="HOTEL_ROOM")
public class HotelRoom {
	
	@Id
	private String roomId;
	private int NSAC;
	private int NDAC;
	private int NSNAC;
	private int NDNAC;
	private int PSAC;
	private int PDAC;
	private int PSNAC;
	private int PDNAC;
	public int getPSNAC() {
		return PSNAC;
	}
	public void setPSNAC(int pSNAC) {
		PSNAC = pSNAC;
	}
	public int getPDNAC() {
		return PDNAC;
	}
	public void setPDNAC(int pDNAC) {
		PDNAC = pDNAC;
	}
	public String getRoomId() {
		return roomId;
	}
	public void setRoomId(String roomId) {
		this.roomId = roomId;
	}
	public int getNSAC() {
		return NSAC;
	}
	public void setNSAC(int nSAC) {
		NSAC = nSAC;
	}
	public int getNDAC() {
		return NDAC;
	}
	public void setNDAC(int nDAC) {
		NDAC = nDAC;
	}
	public int getNSNAC() {
		return NSNAC;
	}
	public void setNSNAC(int nSNAC) {
		NSNAC = nSNAC;
	}
	public int getNDNAC() {
		return NDNAC;
	}
	public void setNDNAC(int nDNAC) {
		NDNAC = nDNAC;
	}
	public int getPSAC() {
		return PSAC;
	}
	public void setPSAC(int pSAC) {
		PSAC = pSAC;
	}
	public int getPDAC() {
		return PDAC;
	}
	public void setPDAC(int pDAC) {
		PDAC = pDAC;
	}
}
