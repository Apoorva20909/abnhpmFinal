package com.utiitsl.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

public class LcnsCrtfctAprvlMstrPojo {
	
	private int m008AprvlId;

	
	private int m008CtgryId;

	
	private int m008AprvlCd;

	
	private String m008AprvlNm;

	
	
	private Date m008ActvFrmDt;

	
	private Date m008ActvToDt;

	
	private String m008LstupdtUsr;

	
	private Date m008LstupdtDt;


	public int getM008AprvlId() {
		return m008AprvlId;
	}


	public void setM008AprvlId(int m008AprvlId) {
		this.m008AprvlId = m008AprvlId;
	}


	public int getM008CtgryId() {
		return m008CtgryId;
	}


	public void setM008CtgryId(int m008CtgryId) {
		this.m008CtgryId = m008CtgryId;
	}


	public int getM008AprvlCd() {
		return m008AprvlCd;
	}


	public void setM008AprvlCd(int m008AprvlCd) {
		this.m008AprvlCd = m008AprvlCd;
	}


	public String getM008AprvlNm() {
		return m008AprvlNm;
	}


	public void setM008AprvlNm(String m008AprvlNm) {
		this.m008AprvlNm = m008AprvlNm;
	}


	public Date getM008ActvFrmDt() {
		return m008ActvFrmDt;
	}


	public void setM008ActvFrmDt(Date m008ActvFrmDt) {
		this.m008ActvFrmDt = m008ActvFrmDt;
	}


	public Date getM008ActvToDt() {
		return m008ActvToDt;
	}


	public void setM008ActvToDt(Date m008ActvToDt) {
		this.m008ActvToDt = m008ActvToDt;
	}


	public String getM008LstupdtUsr() {
		return m008LstupdtUsr;
	}


	public void setM008LstupdtUsr(String m008LstupdtUsr) {
		this.m008LstupdtUsr = m008LstupdtUsr;
	}


	public Date getM008LstupdtDt() {
		return m008LstupdtDt;
	}


	public void setM008LstupdtDt(Date m008LstupdtDt) {
		this.m008LstupdtDt = m008LstupdtDt;
	}
	
	
	

}
