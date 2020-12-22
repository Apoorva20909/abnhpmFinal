package com.utiitsl.ctl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.utiitsl.pojo.FinancialDetailsPojo;
import com.utiitsl.service.FinancialDetailsService;

@Controller
public class FinancialDetailsCtl {
	
	@Autowired
	FinancialDetailsService financialDetailsService;
	
	private static String UPLOAD_FOLDER = "C:\\Users\\apoor\\Desktop\\Test\\";

    @GetMapping({"/","/FinancialDetails"})
    public String FinancialDetailsDisplay(Model model) {
    	System.out.println("Display :: Financial Details");
        return "jsp/FinancialDetailsView";
    }
    
    @PostMapping({"/FinancialDetails"})
    public String FinancialDetailsSubmit(
    		@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes,
    		@Valid @ModelAttribute("financialDetailsPojo") FinancialDetailsPojo financialDetailsPojo,
    		BindingResult bindingResult,
    		Model model) {
    	System.out.println("Submit :: Financial Details");

		try {
			// read and write the file to the slelected location-
			byte[] bytes = file.getBytes();
			String filename=file.getOriginalFilename();
			financialDetailsPojo.setT007FileNm(filename);
			financialDetailsPojo.setT007UpldPth(UPLOAD_FOLDER + file.getOriginalFilename());
			model.addAttribute("FileName", filename);
			String uploadPath = UPLOAD_FOLDER + file.getOriginalFilename();
			model.addAttribute("UploadPath", uploadPath);
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}
	
    	
    	if (bindingResult.hasErrors()) {
    		System.out.println("Error or Exception");
    		model.addAttribute("error", "Financial Details Form Not Submited successfully.jjj..");
    		return "jsp/FinancialDetailsView";
		} else {
			financialDetailsService.savefinancialDetailsData(financialDetailsPojo);
			model.addAttribute("message", "Financial Details Form Submited successfully...");
			return "jsp/FinancialDetailsView";
		}
    	
    }
    
    @GetMapping("/GetFinancialDetails")
    public String GetFinancialDetailsDisplay(Model model) {
    	System.out.println("Display :: Get Financial Details");
    	List financialdetailslist = financialDetailsService.getfinancialDetailsData();
    	model.addAttribute("financialdetailslist", financialdetailslist);
    
        return "jsp/FinancialDetailsView";
    }
}