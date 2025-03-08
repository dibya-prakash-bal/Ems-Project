package org.ems.department.service;

import org.ems.department.model.Department;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface DepartmentService {

    void addDepartment(Department department);
    List<Department> getAllDepartments();


}
