package org.ems.department.repository;

import org.ems.department.model.Department;
import org.ems.employee.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepository extends JpaRepository<Department, String> {


}
