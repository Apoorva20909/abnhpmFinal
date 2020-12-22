package com.utiitsl.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * @author APOORVA
 *
 */
@Entity
@Table(name = "t007_hos_fncl_dtld")
public class FinancialDetailsEntity {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "t007_hos_id")
	private long t007HosId;

	@Column(name = "t007_athrd_sgntry")
	private String t007AthrdSgntry;

	@Column(name = "t007_nm_bnk_act")
	private String t007NmBnkAct;

	@Column(name = "t007_act_no")
	private String t007ActNo;

	@Column(name = "t007_ifsc_cd")
	private String t007IfscCd;

	@Column(name = "t007_bnk_nm")
	private String t007BnkNm;

	@Column(name = "t007_brnch_nm")
	private String t007BrnchNm;

	@Column(name = "t007_tds_exmptn")
	private int t007TdsExmptn;

	@Column(name = "t007_cncl_chq_uld")
	private int t007CncChqUld;
	
	@Column(name = "t007_file_nm")
	private String t007FileNm;
	
	@Column(name = "t007_upld_pth")
	private String t007UpldPth;
	
	@Column(name = "t007_lstupdt_usr")
	private String t007LstupdtUsr;
	
	@Column(name = "t007_lstupdt_dt")
	private Date t007LstupdtDt;

	/**
	 * @author accessores
	 *
	 */

	public long getT007HosId() {
		return t007HosId;
	}

	public String getT007FileNm() {
		return t007FileNm;
	}

	public void setT007FileNm(String t007FileNm) {
		this.t007FileNm = t007FileNm;
	}

	public String getT007UpldPth() {
		return t007UpldPth;
	}

	public void setT007UpldPth(String t007UpldPth) {
		this.t007UpldPth = t007UpldPth;
	}

	public String getT007LstupdtUsr() {
		return t007LstupdtUsr;
	}

	public void setT007LstupdtUsr(String t007LstupdtUsr) {
		this.t007LstupdtUsr = t007LstupdtUsr;
	}

	public Date getT007LstupdtDt() {
		return t007LstupdtDt;
	}

	public void setT007LstupdtDt(Date t007LstupdtDt) {
		this.t007LstupdtDt = t007LstupdtDt;
	}

	public void setT007HosId(long t007HosId) {
		this.t007HosId = t007HosId;
	}

	public String getT007AthrdSgntry() {
		return t007AthrdSgntry;
	}

	public void setT007AthrdSgntry(String t007AthrdSgntry) {
		this.t007AthrdSgntry = t007AthrdSgntry;
	}

	public String getT007NmBnkAct() {
		return t007NmBnkAct;
	}

	public void setT007NmBnkAct(String t007NmBnkAct) {
		this.t007NmBnkAct = t007NmBnkAct;
	}

	public String getT007ActNo() {
		return t007ActNo;
	}

	public void setT007ActNo(String t007ActNo) {
		this.t007ActNo = t007ActNo;
	}

	public String getT007IfscCd() {
		return t007IfscCd;
	}

	public void setT007IfscCd(String t007IfscCd) {
		this.t007IfscCd = t007IfscCd;
	}

	public String getT007BnkNm() {
		return t007BnkNm;
	}

	public void setT007BnkNm(String t007BnkNm) {
		this.t007BnkNm = t007BnkNm;
	}

	public String getT007BrnchNm() {
		return t007BrnchNm;
	}

	public void setT007BrnchNm(String t007BrnchNm) {
		this.t007BrnchNm = t007BrnchNm;
	}

	public int getT007TdsExmptn() {
		return t007TdsExmptn;
	}

	public void setT007TdsExmptn(int t007TdsExmptn) {
		this.t007TdsExmptn = t007TdsExmptn;
	}

	public int getT007CncChqUld() {
		return t007CncChqUld;
	}

	public void setT007CncChqUld(int t007CncChqUld) {
		this.t007CncChqUld = t007CncChqUld;
	
	}

	@Override
	public String toString() {
		return "FinancialDetailsEntity [t007HosId=" + t007HosId + ", t007AthrdSgntry=" + t007AthrdSgntry
				+ ", t007NmBnkAct=" + t007NmBnkAct + ", t007ActNo=" + t007ActNo + ", t007IfscCd=" + t007IfscCd
				+ ", t007BnkNm=" + t007BnkNm + ", t007BrnchNm=" + t007BrnchNm + ", t007TdsExmptn=" + t007TdsExmptn
				+ ", t007CncChqUld=" + t007CncChqUld + ", t007FileNm=" + t007FileNm + ", t007UpldPth=" + t007UpldPth
				+ ", t007LstupdtUsr=" + t007LstupdtUsr + ", t007LstupdtDt=" + t007LstupdtDt + "]";
	}

}
