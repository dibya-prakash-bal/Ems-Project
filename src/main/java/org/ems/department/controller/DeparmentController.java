package org.ems.department.controller;

import lombok.extern.slf4j.Slf4j;
import org.ems.department.model.Department;
import org.ems.department.service.DepartmentService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@Slf4j
public class DeparmentController {

    private DepartmentService departmentService;
    public DeparmentController(DepartmentService departmentService) {
        this.departmentService = departmentService;
    }

    @GetMapping("/deptlist")
    public String departmentList(Model model) {
        List<Department> departments = departmentService.getAllDepartments();
        model.addAttribute("departments", departments);
        return "department-table";

    }


    @RequestMapping(value = "/addDepartment", method = { RequestMethod.POST })
    public String departmentAdd( @RequestParam("departmentName") String departmentName,
                                 @RequestParam("description") String description) {

        System.out.println(departmentName + " " + description);

        Department newDept = new Department();
        newDept.setDepartmentName(departmentName);
        newDept.setDescription(description);

        departmentService.addDepartment(newDept);

        return "redirect:/deptlist";


    }

    @GetMapping("/saveDept")
    public String addDepartment() {
        return "AddDept";
    }


}
