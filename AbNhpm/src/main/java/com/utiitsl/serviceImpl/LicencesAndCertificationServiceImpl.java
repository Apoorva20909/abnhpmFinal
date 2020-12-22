package com.utiitsl.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.utiitsl.entity.LicencesAndCertificationEntity;
import com.utiitsl.pojo.LicencesAndCertificationPojo;
import com.utiitsl.pojo.SpecialPojo;
import com.utiitsl.repositories.LicencesAndCertificationRepository;
import com.utiitsl.service.LicencesAndCertificationService;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;


@Service
public class LicencesAndCertificationServiceImpl  implements  LicencesAndCertificationService{

	@Autowired
	LicencesAndCertificationRepository licencesAndCertificationRepository;
	
	@Autowired
	private EntityManager entityManager;

	@Override
	public void save1BPA(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_1_BPA());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_1_BPA());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_1_BPA());
		entity.setT009FileNm(pojo.getFileName_1_BPA());
		entity.setT009FilePth(pojo.getFilePath_1_BPA());
		entity.setM008AprvlNm("Building Plan Approval");
		entity.setM007CtgryNm("Building & Infrastructure");
		licencesAndCertificationRepository.save(entity);
	}
	
	@Override
	public void save1FDCC(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_1_FDCC());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_1_FDCC());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_1_FDCC());
		entity.setT009FileNm(pojo.getFileName_1_FDCC());
		entity.setT009FilePth(pojo.getFilePath_1_FDCC());
		entity.setM008AprvlNm("Fire Department Clearance Cerrtificate");
		entity.setM007CtgryNm("Building & Infrastructure");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save1PCBC(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_1_PCBC());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_1_PCBC());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_1_PCBC());
		entity.setT009FileNm(pojo.getFileName_1_PCBC());
		entity.setT009FilePth(pojo.getFilePath_1_PCBC());
		entity.setM008AprvlNm("Pollution Control Board Certificate");
		entity.setM007CtgryNm("Building & Infrastructure");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save1LL(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_1_LL());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_1_LL());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_1_LL());
		entity.setT009FileNm(pojo.getFileName_1_LL());
		entity.setT009FilePth(pojo.getFilePath_1_LL());
		entity.setM008AprvlNm("Lift Licence");
		entity.setM007CtgryNm("Building & Infrastructure");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2OC(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_OC());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_OC());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_OC());
		entity.setT009FileNm(pojo.getFileName_2_OC());
		entity.setT009FilePth(pojo.getFilePath_2_OC());
		entity.setM008AprvlNm("Occupancy Certificate");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2OL(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_OL());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_OL());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_OL());
		entity.setT009FileNm(pojo.getFileName_2_OL());
		entity.setT009FilePth(pojo.getFilePath_2_OL());
		entity.setM008AprvlNm("Opium Licence");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);

	}

	@Override
	public void save2HRC(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_HRC());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_HRC());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_HRC());
		entity.setT009FileNm(pojo.getFileName_2_HRC());
		entity.setT009FilePth(pojo.getFilePath_2_HRC());
		entity.setM008AprvlNm("Hospital Registration Certificate");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2SMCR(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_SMCR());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_SMCR());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_SMCR());
		entity.setT009FileNm(pojo.getFileName_2_SMCR());
		entity.setT009FilePth(pojo.getFilePath_2_SMCR());
		entity.setM008AprvlNm("State Medical Council/Association Registration");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);	
	}

	@Override
	public void save2ML(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_ML());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_ML());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_ML());
		entity.setT009FileNm(pojo.getFileName_2_ML());
		entity.setT009FilePth(pojo.getFilePath_2_ML());
		entity.setM008AprvlNm("Morphine Licence");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2PAR(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_PAR());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_PAR());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_PAR());
		entity.setT009FileNm(pojo.getFileName_2_PAR());
		entity.setT009FilePth(pojo.getFilePath_2_PAR());
		entity.setM008AprvlNm("PCPNDT Act Registration");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2SSL(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_SSL());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_SSL());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_SSL());
		entity.setT009FileNm(pojo.getFileName_2_SSL());
		entity.setT009FilePth(pojo.getFilePath_2_SSL());
		entity.setM008AprvlNm("Surgical Spirit Licence");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2BMWM(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_BMWM());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_BMWM());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_BMWM());
		entity.setT009FileNm(pojo.getFileName_2_BMWM());
		entity.setT009FilePth(pojo.getFilePath_2_BMWM());
		entity.setM008AprvlNm("Bio-Medical Waste Management");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save2A(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_BMWM());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_BMWM());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_BMWM());
		entity.setT009FileNm(pojo.getFileName_2_BMWM());
		entity.setT009FilePth(pojo.getFilePath_2_BMWM());
		entity.setM008AprvlNm("AERB");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);
		
	}

	@Override
	public void save2TB(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_2_TB());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_2_TB());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_2_TB());
		entity.setT009FileNm(pojo.getFileName_2_TB());
		entity.setT009FilePth(pojo.getFilePath_2_TB());
		entity.setM008AprvlNm("TLD Badge");
		entity.setM007CtgryNm("Registrations & Certification");
		licencesAndCertificationRepository.save(entity);	
	}

	@Override
	public void save3PL(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_3_PL());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_3_PL());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_3_PL());
		entity.setT009FileNm(pojo.getFileName_3_PL());
		entity.setT009FilePth(pojo.getFilePath_3_PL());
		entity.setM008AprvlNm("Pharmacy Licence/Tie up");
		entity.setM007CtgryNm("Services");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save3BL(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_3_BL());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_3_BL());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_3_BL());
		entity.setT009FileNm(pojo.getFileName_3_BL());
		entity.setT009FilePth(pojo.getFilePath_3_BL());
		entity.setM008AprvlNm("BloodBank Licence");
		entity.setM007CtgryNm("Services");
		licencesAndCertificationRepository.save(entity);
	}

	@Override
	public void save3ARCL(LicencesAndCertificationPojo pojo) {
		LicencesAndCertificationEntity entity = new LicencesAndCertificationEntity();
		entity.setT009CrtfctNo(pojo.getCirtificateNo_3_ARCL());
		entity.setT009CrtfctIssdt(pojo.getIssueDate_3_ARCL());
		entity.setT009CrtfctExprydt(pojo.getExpiryDate_3_ARCL());
		entity.setT009FileNm(pojo.getFileName_3_ARCL());
		entity.setT009FilePth(pojo.getFilePath_3_ARCL());
		entity.setM008AprvlNm("Ambulance Registration Certificate");
		entity.setM007CtgryNm("Services");
		licencesAndCertificationRepository.save(entity);
	}
	
public List<SpecialPojo> getDetailsData() {
		
		List<SpecialPojo> specialPojoList = new ArrayList<SpecialPojo>();
		String queryString = null;
		Query query = null;
		try {

				queryString = "SELECT new  com.utiitsl.pojo.SpecialPojo(u.m007CtgryNm, o.m008AprvlId, o.m008AprvlNm) "
						+ " FROM  LcnsCrtfctCtgryMstrEntity u, LcnsCrtfctAprvlMstrEntity o where "
						+ " sysdate() between u.m007ActvFrmDt and u.m007ActvToDt and "
						+ " o.m008CtgryId = u.m007CtgryId and "
						+ " sysdate() between o.m008ActvFrmDt and o.m008ActvToDt "
						+ " order by u.m007CtgryId ,o.m008AprvlCd ";
				
				query = entityManager.createQuery(queryString);
				specialPojoList.addAll(query.getResultList());
				
				System.out.println("specialPojoList=====777" +specialPojoList.toString());
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		// TODO Auto-generated method stub
		return specialPojoList;
	}


}
