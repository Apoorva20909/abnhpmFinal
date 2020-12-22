package com.utiitsl.pojo;

public class SpecialPojo {

	private String m007CtgryNm;
	
	private int m008AprvlId;
	
	private String m008AprvlNm;

	public String getM007CtgryNm() {
		return m007CtgryNm;
	}

	public void setM007CtgryNm(String m007CtgryNm) {
		this.m007CtgryNm = m007CtgryNm;
	}

	public int getM008AprvlId() {
		return m008AprvlId;
	}

	public void setM008AprvlId(int m008AprvlId) {
		this.m008AprvlId = m008AprvlId;
	}

	public String getM008AprvlNm() {
		return m008AprvlNm;
	}

	public void setM008AprvlNm(String m008AprvlNm) {
		this.m008AprvlNm = m008AprvlNm;
	}

	
	public SpecialPojo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public SpecialPojo(String m007CtgryNm, int m008AprvlId, String m008AprvlNm) {
		super();
		this.m007CtgryNm = m007CtgryNm;
		this.m008AprvlId = m008AprvlId;
		this.m008AprvlNm = m008AprvlNm;
	}

	@Override
	public String toString() {
		return "SpecialPojo [m007CtgryNm=" + m007CtgryNm + ", m008AprvlId=" + m008AprvlId + ", m008AprvlNm="
				+ m008AprvlNm + "]";
	}

	
	
}
