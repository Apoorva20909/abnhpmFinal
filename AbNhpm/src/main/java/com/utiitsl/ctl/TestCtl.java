package com.utiitsl.ctl;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class TestCtl {
	
	@GetMapping("/test")
	public String TestDispaly(Model model) {
		System.out.println("TestCtl");
		return "testjsp/testjsp";
	}

}
