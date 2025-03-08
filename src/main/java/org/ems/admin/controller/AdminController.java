package org.ems.admin.controller;

import java.time.LocalDate;
import java.util.List;

import org.ems.employee.model.Employee;
import org.ems.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpServletRequest;
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
	public String submitEmpForm(@RequestParam("employeeName") String empName, @RequestParam("email") String email,@RequestParam("address") String address,
			@RequestParam("phoneNo") String phoneNo, @RequestParam("dob") LocalDate dob,
			@RequestParam("salary") Double salary) {
//		if(result.hasErrors()) {
//			return "redirect:/emplist";
//    	@ModelAttribute("empForm") Employee emp,
//    	, BindingResult result
//		}
		System.out.println(empName + " " + email + " " + phoneNo + " " + dob + " " + salary);
//	   System.out.println(emp.toString());
		Employee newEmp = new Employee();
		newEmp.setEmail(email);
		newEmp.setAddress(address);
		newEmp.setDob(dob);
		newEmp.setPhoneNo(phoneNo);
		newEmp.setSalary(salary);
		employeeService.addEmployee(newEmp);
		// Print all request parameters

		return "redirect:/emplist";
		
		
	}
//	@RequestMapping(value="/update",method= {RequestMethod.POST})
//	@GetMapping("/editemp")
//	public String updateEmployeePre(Model model,@RequestParam("empid") Long id) {
////		System.out.println(emp.toString());
//		Employee employee = employeeService.getEmployeeById(id);
//        model.addAttribute("emp", employee);
//		System.out.println(id);
//		return "EditEmployeeForm";
//	}
	
//	@RequestMapping(value="/update",method = {RequestMethod.POST})
//	public String updateEmployeeDetail(Model model,@ModelAttribute("updateEmp") Employee employee) {
//		System.out.println(employee.toString());
//		return "redirect:/EditEmployeeForm";
//	}
//	
//	@GetMapping(value="/deleteEmployee")
//	public String deleteEmployee(Model model,@RequestParam("empid") Long id) {
//		System.out.println(id);
//		employeeService.deleteEmployee(id);
//		return "redirect:/emplist";
//	}
	@GetMapping("/editemp")
	public String updateEmployee(Model model, @RequestParam("empid") Long id) {
	    Employee employee = employeeService.getEmployeeById(id);
	    model.addAttribute("employee", employee); // Changed attribute name to "employee"
	    return "EditEmployeeForm";
	}

	@PostMapping("/update")
	public String updateEmployeeDetail(@ModelAttribute("employee") Employee employee) {
		System.out.println(employee.toString());
	    return "redirect:/emplist"; // Redirect to employee list page
	}
	

}
