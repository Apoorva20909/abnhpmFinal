package com.utiitsl.entity;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
@Table(name = "t009_hos_lcns_crtfct")
public class LicencesAndCertificationEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "t009_hos_id")
	private long t007HosId;

	@Column(name = "t009_crtfct_no")
	private String t009CrtfctNo;

	@Temporal(value = TemporalType.DATE)
	@Column(name = "t009_crtfct_issdt")
	private Date t009CrtfctIssdt;

	@Temporal(value = TemporalType.DATE)
	@Column(name = "t009_crtfct_exprydt")
	private Date t009CrtfctExprydt;
	
	@Column(name = "m008_aprvl_nm")
	private String m008AprvlNm;
	
	@Column(name = "m007_ctgry_nm")
	private String m007CtgryNm;
	
	@Column(name = "T009_file_nm")
	private String t009FileNm;
	
	@Column(name = "T009_file_pth")
	private String t009FilePth;

	public long getT007HosId() {
		return t007HosId;
	}

	public void setT007HosId(long t007HosId) {
		this.t007HosId = t007HosId;
	}

	public String getT009CrtfctNo() {
		return t009CrtfctNo;
	}

	public void setT009CrtfctNo(String t009CrtfctNo) {
		this.t009CrtfctNo = t009CrtfctNo;
	}

	public Date getT009CrtfctIssdt() {
		return t009CrtfctIssdt;
	}

	public void setT009CrtfctIssdt(Date t009CrtfctIssdt) {
		this.t009CrtfctIssdt = t009CrtfctIssdt;
	}

	public Date getT009CrtfctExprydt() {
		return t009CrtfctExprydt;
	}

	public void setT009CrtfctExprydt(Date t009CrtfctExprydt) {
		this.t009CrtfctExprydt = t009CrtfctExprydt;
	}

	public String getM008AprvlNm() {
		return m008AprvlNm;
	}

	public void setM008AprvlNm(String m008AprvlNm) {
		this.m008AprvlNm = m008AprvlNm;
	}

	public String getM007CtgryNm() {
		return m007CtgryNm;
	}

	public void setM007CtgryNm(String m007CtgryNm) {
		this.m007CtgryNm = m007CtgryNm;
	}

	public String getT009FileNm() {
		return t009FileNm;
	}

	public void setT009FileNm(String t009FileNm) {
		this.t009FileNm = t009FileNm;
	}

	public String getT009FilePth() {
		return t009FilePth;
	}

	public void setT009FilePth(String t009FilePth) {
		this.t009FilePth = t009FilePth;
	}
		
}
