package org.ems.admin.controller;

import java.time.LocalDate;
import java.util.List;

import org.ems.employee.model.Employee;
import org.ems.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class AdminController {
	private final EmployeeService employeeService;

	public AdminController(EmployeeService employeeService) {
		this.employeeService = employeeService;
	}

	@GetMapping("/")
	public String index() {
		return "index";
	}

	@GetMapping("/emplist")
	public String employeeList(Model model) {
		List<Employee> employees = employeeService.getAllEmployee();
		model.addAttribute("emplist", employees);
		System.out.println(employees.toString());
		return "employee-table";
	}

	@GetMapping("/profile")
	public String profile() {
		return "profile";
	}

	@GetMapping("/addemp")
	public String addEmployee() {
		return "AddEmp";
	}

	@RequestMapping(value = "/addEmployee", method = { RequestMethod.POST })
	public String submitEmpForm(@RequestParam("name") String name, @RequestParam("email") String email,@RequestParam("address") String address,
			@RequestParam("phoneNo") String phoneNo, @RequestParam("dob") LocalDate dob,
			@RequestParam("salary") Double salary) {
//		if(result.hasErrors()) {
//			return "redirect:/emplist";
//    	@ModelAttribute("empForm") Employee emp,
//    	, BindingResult result
//		}
		System.out.println(name + " " + email + " " + phoneNo + " " + dob + " " + salary);
//	   System.out.println(emp.toString());
		Employee newEmp = new Employee();
		newEmp.setEmployeeName(name);
		newEmp.setEmail(email);
		newEmp.setAddress(address);
		newEmp.setDob(dob);
		newEmp.setPhoneNo(phoneNo);
		newEmp.setSalary(salary);
		employeeService.addEmployee(newEmp);
		// Print all request parameters

		return "redirect:/emplist";
		
		
	}
	@RequestMapping(value="/update",method= {RequestMethod.POST})
	public String updateEmployee(Model model,@ModelAttribute("updateEmp") Employee employee) {
		return null;
	}
	

}
