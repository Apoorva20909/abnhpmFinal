package com.utiitsl.pojo;

import java.util.Date;

import javax.persistence.Column;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

public class FinancialDetailsPojo {

	/**
	 * @author APOORVA
	 *
	 */

	private long t007HosId;

	@NotBlank
	private String t007AthrdSgntry;

	@NotBlank
	private String t007NmBnkAct;

	@NotBlank
	private String t007ActNo;

	@NotBlank
	private String t007IfscCd;

	@NotBlank
	private String t007BnkNm;

	@NotBlank
	private String t007BrnchNm;

	private String t007FileNm;

	private String t007UpldPth;

	private String t007LstupdtUsr;

	private Date t007LstupdtDt;

	private int t007TdsExmptn;

	private int t007CncChqUld;

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

	public String getT007BrnchNm() {
		return t007BrnchNm;
	}

	public void setT007BrnchNm(String t007BrnchNm) {
		this.t007BrnchNm = t007BrnchNm;
	}

	public long getT007HosId() {
		return t007HosId;
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
		return "FinancialDetailsPojo [t007HosId=" + t007HosId + ", t007AthrdSgntry=" + t007AthrdSgntry
				+ ", t007NmBnkAct=" + t007NmBnkAct + ", t007ActNo=" + t007ActNo + ", t007IfscCd=" + t007IfscCd
				+ ", t007BnkNm=" + t007BnkNm + ", t007BrnchNm=" + t007BrnchNm + ", t007FileNm=" + t007FileNm
				+ ", t007UpldPth=" + t007UpldPth + ", t007LstupdtUsr=" + t007LstupdtUsr + ", t007LstupdtDt="
				+ t007LstupdtDt + ", t007TdsExmptn=" + t007TdsExmptn + ", t007CncChqUld=" + t007CncChqUld + "]";
	}

}
