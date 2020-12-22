package com.utiitsl.service;

import java.util.List;

import com.utiitsl.pojo.LicencesAndCertificationPojo;
import com.utiitsl.pojo.SpecialPojo;

public interface LicencesAndCertificationService {
	
	public void save1BPA(LicencesAndCertificationPojo pojo);
	
	public void save1FDCC(LicencesAndCertificationPojo pojo);
	
	public void save1PCBC(LicencesAndCertificationPojo pojo);
	
	public void save1LL(LicencesAndCertificationPojo pojo);
	
	public void save2OC(LicencesAndCertificationPojo pojo);
	
	public void save2OL(LicencesAndCertificationPojo pojo);
	
	public void save2HRC(LicencesAndCertificationPojo pojo);
	
	public void save2SMCR(LicencesAndCertificationPojo pojo);
	
	public void save2ML(LicencesAndCertificationPojo pojo);
	
	public void save2PAR(LicencesAndCertificationPojo pojo);
	
	public void save2SSL(LicencesAndCertificationPojo pojo);
	
	public void save2BMWM(LicencesAndCertificationPojo pojo);
	
	public void save2A(LicencesAndCertificationPojo pojo);
	
	public void save2TB(LicencesAndCertificationPojo pojo);
	
	public void save3PL(LicencesAndCertificationPojo pojo);
	
	public void save3BL(LicencesAndCertificationPojo pojo);
	
	public void save3ARCL(LicencesAndCertificationPojo pojo);
	
	public List<SpecialPojo> getDetailsData();
	
}
