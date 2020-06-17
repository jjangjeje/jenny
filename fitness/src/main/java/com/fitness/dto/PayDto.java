package com.fitness.dto;

public class PayDto {
	int memidx;
	String paidDate;
	int membershipMonth;
	int receivedPrice;
	String payType;
	
	public PayDto() {}
	public PayDto(int memidx, String paidDate, int membershipMonth, 
			int receivedPrice) {
		this.memidx = memidx;
		this.paidDate = paidDate;
		this.membershipMonth = membershipMonth;
		this.receivedPrice = receivedPrice;
		//this.payType = payType;
	}
	
	public int getMemidx() {
		return memidx;
	}
	public void setMemidx(int memidx) {
		this.memidx = memidx;
	}
	public String getPaidDate() {
		return paidDate;
	}
	public void setPaidDate(String paidDate) {
		this.paidDate = paidDate;
	}
	public int getMembershipMonth() {
		return membershipMonth;
	}
	public void setMembershipMonth(int membershipMonth) {
		this.membershipMonth = membershipMonth;
	}
	
	public int getReceivedPrice() {
		return receivedPrice;
	}
	public void setReceivedPrice(int receivedPrice) {
		this.receivedPrice = receivedPrice;
	}
	public String getPayType() {
		return payType;
	}
	public void setPayType(String payType) {
		this.payType = payType;
	}
	
	
	
}
