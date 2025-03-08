package org.ems.employee.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HrController {
	/*
	 * Hr Home Page
	 */
	@GetMapping("/hrindex")
	public String hrIndex() {
		return "hrindex";
	}

}
