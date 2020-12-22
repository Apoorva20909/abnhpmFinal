package com.utiitsl.ctl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class FileUploadController {

	private static String UPLOAD_FOLDER = "C:\\Users\\Pawan_Sharma\\Desktop\\Test\\";

	@RequestMapping("/upload")
	public ModelAndView showUpload() {
		return new ModelAndView("jsp/upload");
	}

	@PostMapping("/upload")
	public ModelAndView fileUpload(@RequestParam("file") MultipartFile file, RedirectAttributes redirectAttributes) {

		if (file.isEmpty()) {
			return new ModelAndView("jsp/status", "message", "Please select a file and try again");
		}

		try {
			// read and write the file to the slelected location-
			byte[] bytes = file.getBytes();
			String filename=file.getOriginalFilename();
			System.out.println("FileName : "+filename);
			Path path = Paths.get(UPLOAD_FOLDER + file.getOriginalFilename());
			Files.write(path, bytes);

		} catch (IOException e) {
			e.printStackTrace();
		}

		return new ModelAndView("jsp/status", "message", "File Uploaded sucessfully");
	}

}
