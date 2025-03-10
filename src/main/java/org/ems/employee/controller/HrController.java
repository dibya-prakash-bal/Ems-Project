package org.ems.employee.controller;

import org.ems.employee.model.Employee;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HrController {
	/*
	 * Hr Home Page
	 */
	@GetMapping("/HR")
	public String hrIndex() {
		return "hrindex";
	}

	@GetMapping("/Hr-profile")
	public String hrProfile(Model model){

		// Testing Code for Profile
		Employee employee=new Employee();
		employee.setEmployeeName("Sandeep");
		model.addAttribute("emp", employee);

		return "HrProfile";
	}


}
