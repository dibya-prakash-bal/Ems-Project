package org.ems.employee.controller;

import lombok.extern.slf4j.Slf4j;
import org.ems.employee.model.Employee;
import org.ems.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
@Slf4j
public class EmployeeController {

    private EmployeeService employeeService;
    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/employee")
    public String index() {
        return "EmployeeDashboard";
    }

    @GetMapping("empprofile")
    public String empProfile(Model model){

        Employee employeeById = employeeService.getEmployeeById(1l);
        model.addAttribute("emp", employeeById);


        return "employeeProfile";
    }

}
