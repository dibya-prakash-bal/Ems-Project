package org.ems.employee.repository;

import java.util.List;

import org.ems.employee.model.Employee;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmployeeRepository extends JpaRepository<Employee, Long> {
	List<Employee> findByDepartmentDepartmentId(String departmentId);

	List<Employee> findByRoleRoleId(Long roleId);
}
