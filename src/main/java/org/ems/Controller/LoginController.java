package org.ems.Controller;

import org.ems.employee.model.Employee;
import org.ems.employee.repository.EmployeeRepository;
import org.ems.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

	private final EmployeeService employeeService;

	public LoginController(EmployeeService employeeService) {
//		super();
		this.employeeService = employeeService;
	}

	@GetMapping("/")
	public String login() {
		return "login";
	}

	@PostMapping("/login")
	@ResponseBody // Add this annotation
	public String processLogin(@RequestParam("email") String email, @RequestParam("password") String password,
			HttpSession session) {
		// ... (your authentication logic) ...
		System.out.println(email + " " + password);

		Employee authenticatedEmployee = employeeService.authenticateEmployee(email, password);
		System.out.println(authenticatedEmployee.getEmployeeName());

		if (authenticatedEmployee != null) {
			// ...
			String role = authenticatedEmployee.getRole().getRoleName();

			if ("Admin".equalsIgnoreCase(role)) {
				session.setAttribute("loggedInEmployee", authenticatedEmployee);
				return "redirect:/admin"; // Return redirect string
			} else if ("Hr".equalsIgnoreCase(role)) {
				session.setAttribute("loggedInEmployee", authenticatedEmployee);

				return "redirect:/hr";
			} else {
				session.setAttribute("loggedInEmployee", authenticatedEmployee);

				return "redirect:/employee"; // Return redirect string
			}
		} else {
			return "login?error"; // Return a string indicating login failure
		}
	}

	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}

	@GetMapping("/ForgetPass")
	public String forgetPass() {
		return "forgetpass";
	}

	@GetMapping("/otp-verify")
	public String otpVerify() {
		return "otpVerify";
	}

	@GetMapping("reset-pass")
	public String resetPass() {
		return "resetPass";
	}

}
