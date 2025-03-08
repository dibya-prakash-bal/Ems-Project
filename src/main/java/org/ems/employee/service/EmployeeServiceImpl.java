package org.ems.employee.service;

import java.util.List;

import org.ems.employee.model.Employee;
import org.ems.employee.repository.EmployeeRepository;
import org.springframework.stereotype.Service;
@Service
public class EmployeeServiceImpl implements EmployeeService {
	private final EmployeeRepository employeeRepository;
	 
	public EmployeeServiceImpl(EmployeeRepository employeeRepository) {
		
		this.employeeRepository = employeeRepository;
	}



	@Override
	public void addEmployee(Employee employee) {
		// TODO Auto-generated method stub
		System.out.println(employee.toString());
		employeeRepository.save(employee);
//		return "done";
	}



	@Override
	public List<Employee> getAllEmployee() {
		// TODO Auto-generated method stub
		return employeeRepository.findAll();
	}

	@Override
	public Employee getEmployeeById(Long id) {
		return employeeRepository.getById(id);
	}


}
