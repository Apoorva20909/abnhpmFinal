package com.utiitsl.ctl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.utiitsl.pojo.LicencesAndCertificationPojo;
import com.utiitsl.pojo.SpecialPojo;
import com.utiitsl.service.LicencesAndCertificationService;

@Controller
public class LicencesAndCertificationCtl {
	
	@Autowired
	LicencesAndCertificationService licencesAndCertificationService;
	
	private static String UPLOAD_FOLDER = "C:\\Users\\apoor\\Desktop\\Test\\";
	
	
	@GetMapping("/LicencesAndCertification")
	public String LicencesAndCertificationDispaly(Model model) {
		System.out.println("Licences and Certification Display");
		List<SpecialPojo> specialPojoList = licencesAndCertificationService.getDetailsData();
    	model.addAttribute("specialPojoList", specialPojoList);
    	System.out.println("specialPojoList==="+specialPojoList.toString());
		return "jsp/LicencesAndCertificationView";
	}
	
	@PostMapping("/LicencesAndCertification")
	public String LicencesAndCertificationSubmit(
			@RequestParam("BI_File1") MultipartFile fileBI1, 
			@RequestParam("BI_File2") MultipartFile fileBI2,
			@RequestParam("BI_File3") MultipartFile fileBI3, 
			@RequestParam("BI_File4") MultipartFile fileBI4,
			@RequestParam("RC_File1") MultipartFile fileRC1,
			@RequestParam("RC_File2") MultipartFile fileRC2,
			@RequestParam("RC_File3") MultipartFile fileRC3,
			@RequestParam("RC_File4") MultipartFile fileRC4,
			@RequestParam("RC_File5") MultipartFile fileRC5,
			@RequestParam("RC_File6") MultipartFile fileRC6,
			@RequestParam("RC_File7") MultipartFile fileRC7,
			@RequestParam("RC_File8") MultipartFile fileRC8,
			@RequestParam("RC_File9") MultipartFile fileRC9,
			@RequestParam("RC_File10") MultipartFile fileRC10,		
			@RequestParam("S_File1") MultipartFile fileS1,
			@RequestParam("S_File2") MultipartFile fileS2,
			@RequestParam("S_File3") MultipartFile fileS3,
			RedirectAttributes redirectAttributes,
			@ModelAttribute("licencesAndCertificationPojo") 
			LicencesAndCertificationPojo licencesAndCertificationPojo,
			Model model) {
		System.out.println("Licences and Certification Submit");
		
		try {
			// read and write the file to the slelected location-
			byte[] bytesBI1 = fileBI1.getBytes();
			String file1BPA=fileBI1.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_1_BPA(file1BPA);;
			licencesAndCertificationPojo.setFilePath_1_BPA(UPLOAD_FOLDER + fileBI1.getOriginalFilename());
			String uploadPathBI1 = UPLOAD_FOLDER + fileBI1.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathBI1);
			Path pathBI1 = Paths.get(UPLOAD_FOLDER + fileBI1.getOriginalFilename());
			Files.write(pathBI1, bytesBI1);
			
			byte[] bytesBI2 = fileBI2.getBytes();
			String file1FDCC=fileBI2.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_1_FDCC(file1FDCC);
			licencesAndCertificationPojo.setFilePath_1_FDCC(UPLOAD_FOLDER + fileBI2.getOriginalFilename());
			String uploadPathBI2 = UPLOAD_FOLDER + fileBI2.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathBI2);
			Path pathBI2 = Paths.get(UPLOAD_FOLDER + fileBI2.getOriginalFilename());
			Files.write(pathBI2, bytesBI2);
			
			byte[] bytesBI3 = fileBI3.getBytes();
			String file1PCBC=fileBI3.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_1_PCBC(file1PCBC);
			licencesAndCertificationPojo.setFilePath_1_PCBC(UPLOAD_FOLDER + fileBI3.getOriginalFilename());
			String uploadPathBI3 = UPLOAD_FOLDER + fileBI3.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathBI3);
			Path pathBI3 = Paths.get(UPLOAD_FOLDER + fileBI3.getOriginalFilename());
			Files.write(pathBI3, bytesBI3);
			
			
			byte[] bytesBI4 = fileBI4.getBytes();
			String file1LL=fileBI4.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_1_LL(file1LL);
			licencesAndCertificationPojo.setFilePath_1_LL(UPLOAD_FOLDER + fileBI4.getOriginalFilename());
			String uploadPathBI4 = UPLOAD_FOLDER + fileBI4.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathBI4);
			Path pathBI4 = Paths.get(UPLOAD_FOLDER + fileBI4.getOriginalFilename());
			Files.write(pathBI4, bytesBI4);
			
			/* REGISTRATION AND SERVICES */
			
			byte[] bytesRC1 = fileRC1.getBytes();
			String file2OC=fileRC1.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_OC(file2OC);
			licencesAndCertificationPojo.setFilePath_2_OC(UPLOAD_FOLDER + fileRC1.getOriginalFilename());
			String uploadPathRC1 = UPLOAD_FOLDER + fileRC1.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC1);
			Path pathRC1 = Paths.get(UPLOAD_FOLDER + fileRC1.getOriginalFilename());
			Files.write(pathRC1, bytesRC1);
			
			byte[] bytesRC2 = fileRC2.getBytes();
			String file2OL=fileRC2.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_OL(file2OL);
			licencesAndCertificationPojo.setFilePath_2_OL(UPLOAD_FOLDER + fileRC2.getOriginalFilename());
			String uploadPathRC2 = UPLOAD_FOLDER + fileRC2.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC2);
			Path pathRC2 = Paths.get(UPLOAD_FOLDER + fileRC2.getOriginalFilename());
			Files.write(pathRC2, bytesRC2);
			
			byte[] bytesRC3 = fileRC3.getBytes();
			String file2HRC=fileRC3.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_HRC(file2HRC);
			licencesAndCertificationPojo.setFilePath_2_HRC(UPLOAD_FOLDER + fileRC3.getOriginalFilename());
			String uploadPathRC3 = UPLOAD_FOLDER + fileRC3.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC3);
			Path pathRC3 = Paths.get(UPLOAD_FOLDER + fileRC3.getOriginalFilename());
			Files.write(pathRC3, bytesRC3);
			
			byte[] bytesRC4 = fileRC4.getBytes();
			String file2SMCR=fileRC4.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_SMCR(file2SMCR);
			licencesAndCertificationPojo.setFilePath_2_SMCR(UPLOAD_FOLDER + fileRC4.getOriginalFilename());
			String uploadPathRC4 = UPLOAD_FOLDER + fileRC4.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC4);
			Path pathRC4 = Paths.get(UPLOAD_FOLDER + fileRC4.getOriginalFilename());
			Files.write(pathRC4, bytesRC4);
			
			byte[] bytesRC5 = fileRC5.getBytes();
			String file2ML=fileRC5.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_ML(file2ML);
			licencesAndCertificationPojo.setFilePath_2_ML(UPLOAD_FOLDER + fileRC5.getOriginalFilename());
			String uploadPathRC5 = UPLOAD_FOLDER + fileRC5.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC5);
			Path pathRC5 = Paths.get(UPLOAD_FOLDER + fileRC5.getOriginalFilename());
			Files.write(pathRC5, bytesRC5);
			
			byte[] bytesRC6 = fileRC6.getBytes();
			String file2PAR=fileRC6.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_PAR(file2PAR);
			licencesAndCertificationPojo.setFilePath_2_PAR(UPLOAD_FOLDER + fileRC6.getOriginalFilename());
			String uploadPathRC6 = UPLOAD_FOLDER + fileRC6.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC6);
			Path pathRC6 = Paths.get(UPLOAD_FOLDER + fileRC6.getOriginalFilename());
			Files.write(pathRC6, bytesRC6);
			
			byte[] bytesRC7 = fileRC7.getBytes();
			String file2SSL=fileRC7.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_SSL(file2SSL);
			licencesAndCertificationPojo.setFilePath_2_SSL(UPLOAD_FOLDER + fileRC7.getOriginalFilename());
			String uploadPathRC7 = UPLOAD_FOLDER + fileRC7.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC7);
			Path pathRC7 = Paths.get(UPLOAD_FOLDER + fileRC7.getOriginalFilename());
			Files.write(pathRC7, bytesRC7);
			
			byte[] bytesRC8 = fileRC8.getBytes();
			String file2BMWM=fileRC8.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_BMWM(file2BMWM);
			licencesAndCertificationPojo.setFilePath_2_BMWM(UPLOAD_FOLDER + fileRC8.getOriginalFilename());
			String uploadPathRC8 = UPLOAD_FOLDER + fileRC8.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC8);
			Path pathRC8 = Paths.get(UPLOAD_FOLDER + fileRC8.getOriginalFilename());
			Files.write(pathRC8, bytesRC8);
			
			byte[] bytesRC9 = fileRC9.getBytes();
			String file2A=fileRC9.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_A(file2A);
			licencesAndCertificationPojo.setFilePath_2_A(UPLOAD_FOLDER + fileRC9.getOriginalFilename());
			String uploadPathRC9 = UPLOAD_FOLDER + fileRC9.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC9);
			Path pathRC9 = Paths.get(UPLOAD_FOLDER + fileRC9.getOriginalFilename());
			Files.write(pathRC9, bytesRC9);
			
			byte[] bytesRC10 = fileRC10.getBytes();
			String file2TB=fileRC10.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_2_TB(file2TB);
			licencesAndCertificationPojo.setFilePath_2_TB(UPLOAD_FOLDER + fileRC10.getOriginalFilename());
			String uploadPathRC10 = UPLOAD_FOLDER + fileRC10.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathRC10);
			Path pathRC10 = Paths.get(UPLOAD_FOLDER + fileRC10.getOriginalFilename());
			Files.write(pathRC10, bytesRC10);
					
			/* SERVICES */
			
			byte[] bytesS1 = fileS1.getBytes();
			String file3PL=fileS1.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_3_PL(file3PL);
			licencesAndCertificationPojo.setFilePath_3_PL(UPLOAD_FOLDER + fileS1.getOriginalFilename());
			String uploadPathS1 = UPLOAD_FOLDER + fileS1.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathS1);
			Path pathS1 = Paths.get(UPLOAD_FOLDER + fileS1.getOriginalFilename());
			Files.write(pathS1, bytesS1);
			
			byte[] bytesS2 = fileS2.getBytes();
			String file3BL=fileS2.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_3_BL(file3BL);
			licencesAndCertificationPojo.setFilePath_3_BL(UPLOAD_FOLDER + fileS2.getOriginalFilename());
			String uploadPathS2 = UPLOAD_FOLDER + fileS2.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathS2);
			Path pathS2 = Paths.get(UPLOAD_FOLDER + fileS2.getOriginalFilename());
			Files.write(pathS2, bytesS2);
			
			byte[] bytesS3 = fileS3.getBytes();
			String file3ARCL=fileS3.getOriginalFilename();
			licencesAndCertificationPojo.setFileName_3_ARCL(file3ARCL);
			licencesAndCertificationPojo.setFilePath_3_ARCL(UPLOAD_FOLDER + fileS3.getOriginalFilename());
			String uploadPathS3 = UPLOAD_FOLDER + fileS3.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPathS3);
			Path pathS3 = Paths.get(UPLOAD_FOLDER + fileS3.getOriginalFilename());
			Files.write(pathS3, bytesS3);

		} catch (IOException e) {
			e.printStackTrace();
		}
		
		licencesAndCertificationService.save1BPA(licencesAndCertificationPojo);
		licencesAndCertificationService.save1FDCC(licencesAndCertificationPojo);
		licencesAndCertificationService.save1PCBC(licencesAndCertificationPojo);
		licencesAndCertificationService.save1LL(licencesAndCertificationPojo);
		licencesAndCertificationService.save2OC(licencesAndCertificationPojo);
		licencesAndCertificationService.save2OL(licencesAndCertificationPojo);
		licencesAndCertificationService.save2HRC(licencesAndCertificationPojo);
		licencesAndCertificationService.save2SMCR(licencesAndCertificationPojo);
		licencesAndCertificationService.save2ML(licencesAndCertificationPojo);
		licencesAndCertificationService.save2PAR(licencesAndCertificationPojo);
		licencesAndCertificationService.save2SSL(licencesAndCertificationPojo);
		licencesAndCertificationService.save2BMWM(licencesAndCertificationPojo);
		licencesAndCertificationService.save2A(licencesAndCertificationPojo);
		licencesAndCertificationService.save2TB(licencesAndCertificationPojo);
		licencesAndCertificationService.save3PL(licencesAndCertificationPojo);
		licencesAndCertificationService.save3BL(licencesAndCertificationPojo);
		licencesAndCertificationService.save3ARCL(licencesAndCertificationPojo);
		
		model.addAttribute("SuccessMsg", "Data Submitted Successfully");
		
		return "jsp/LicencesAndCertificationView";
	}


}
