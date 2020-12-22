package com.utiitsl.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public class LcnsCrtfctCtgryMstrPojo {

	private int m007CtgryId;
	
	
	private String m007CtgryNm;
	
	
	private Date m007ActvFrmDt;
	
	
	private Date m007ActvToDt;
	
	
	private String m007lstupdtUsr;
	
	
	private Date m007lstupdtDt;


	public int getM007CtgryId() {
		return m007CtgryId;
	}


	public void setM007CtgryId(int m007CtgryId) {
		this.m007CtgryId = m007CtgryId;
	}


	public String getM007CtgryNm() {
		return m007CtgryNm;
	}


	public void setM007CtgryNm(String m007CtgryNm) {
		this.m007CtgryNm = m007CtgryNm;
	}


	public Date getM007ActvFrmDt() {
		return m007ActvFrmDt;
	}


	public void setM007ActvFrmDt(Date m007ActvFrmDt) {
		this.m007ActvFrmDt = m007ActvFrmDt;
	}


	public Date getM007ActvToDt() {
		return m007ActvToDt;
	}


	public void setM007ActvToDt(Date m007ActvToDt) {
		this.m007ActvToDt = m007ActvToDt;
	}


	public String getM007lstupdtUsr() {
		return m007lstupdtUsr;
	}


	public void setM007lstupdtUsr(String m007lstupdtUsr) {
		this.m007lstupdtUsr = m007lstupdtUsr;
	}


	public Date getM007lstupdtDt() {
		return m007lstupdtDt;
	}


	public void setM007lstupdtDt(Date m007lstupdtDt) {
		this.m007lstupdtDt = m007lstupdtDt;
	}
	
	
}
