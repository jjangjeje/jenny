package com.fitness.dto;

public class MemberDto {
	int idx ;
	String name, phone;
	String joinDate;
	String payDate;
	String startDate;
	String endDate;
	
	int unpaid;
	public MemberDto() {
		this(0, "", "","");
	}
	// 회원가입시에 들어오는 정보 
	public MemberDto(int idx, String name, String phone, String joinDate) {
		this.idx = idx;
		this.name = name;
		this.phone = phone;
		this.joinDate = joinDate;
	}
	// 회원권 등록시 들어오는 정보
	public MemberDto(int idx, String startDate, String endDate) {
		this.idx = idx;
		this.startDate = startDate;
		this.endDate = endDate;
	}
	// 미납금 등록
	public MemberDto(int idx, int unpaid) {
		this.idx = idx;
		this.unpaid = unpaid;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String getPayDate() {
		return payDate;
	}
	public void setPayDate(String payDate) {
		this.payDate = payDate;
	}
	public String getStartDate() {
		return startDate;
	}

	public String getJoinDate() {
		return joinDate;
	}

	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}

	
	public int getUnpaid() {
		return unpaid;
	}

	public void setUnpaid(int unpaid) {
		this.unpaid = unpaid;
	}

	
	
}
