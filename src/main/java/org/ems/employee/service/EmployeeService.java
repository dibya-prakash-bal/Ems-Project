package org.ems.employee.service;

import java.util.List;

import org.ems.employee.model.Employee;

public interface EmployeeService {
	void addEmployee(Employee employee);
	List<Employee> getAllEmployee();
	void deleteEmployee(Long id);

	Employee getEmployeeById(Long id);

}
