package com.utiitsl.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "m007_lcns_crtfct_ctgry_mstr")
public class LcnsCrtfctCtgryMstrEntity {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "m007_ctgry_id")
	private int m007CtgryId;
	
	@Column(name = "m007_ctgry_nm")
	private String m007CtgryNm;
	
	@Temporal(value = TemporalType.DATE)
	@Column(name = "m007_actv_frm_dt")
	private Date m007ActvFrmDt;
	
	@Temporal(value = TemporalType.DATE)
	@Column(name = "m007_actv_to_dt")
	private Date m007ActvToDt;
	
	@Column(name = "m007_lstupdt_usr")
	private String m007lstupdtUsr;
	
	@Temporal(value = TemporalType.DATE)
	@Column(name = "m007_lstupdt_dt")
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
