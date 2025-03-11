package org.ems.employee.controller;

import lombok.extern.slf4j.Slf4j;
import org.ems.employee.model.Employee;
import org.ems.employee.model.LeaveRequest;
import org.ems.employee.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

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

    @PostMapping("/Request-leave")
    public String createLeaveRequest(LeaveRequest leaveRequest){
        employeeService.AddLeaveRequest(leaveRequest);
        return "redirect:/Leave-form";
    }

    @GetMapping("/Leave-form")
    public String leaveForm(Model model){
        return "LeaveForm";
    }


    @GetMapping("/EmpLeave-list")
    public String empLeaveList(Model model, @RequestParam("empId") String empId){
        List<LeaveRequest> leaveRequestByEmployeeId = employeeService.getLeaveRequestByEmployeeId(empId);
        model.addAttribute("leaveRequests", leaveRequestByEmployeeId);
        return "empLeaveList";
    }



}
