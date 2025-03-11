package org.ems.employee.service;

import java.util.List;
import java.util.Optional;

import org.ems.employee.model.Employee;
import org.ems.employee.model.LeaveRequest;
import org.ems.employee.repository.EmployeeRepository;
import org.ems.employee.repository.LeaveRepository;
import org.springframework.stereotype.Service;
@Service
public class EmployeeServiceImpl implements EmployeeService {
	private final EmployeeRepository employeeRepository;

	private final LeaveRepository leaveRepository;
	 
	public EmployeeServiceImpl(EmployeeRepository employeeRepository, LeaveRepository leaveRepository) {
		
		this.employeeRepository = employeeRepository;
        this.leaveRepository = leaveRepository;
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
	public void deleteEmployee(Long id) {
		// TODO Auto-generated method stub
		Optional<Employee> employee = employeeRepository.findById(id);
		employeeRepository.delete(employee.get());
		
	}



	@Override
	public Employee getEmployeeById(Long id) {
		// TODO Auto-generated method stub
		return employeeRepository.findById(id).get();
	}



	@Override
	public void UpdateEmployee(Employee emp) {
		// TODO Auto-generated method stub
		employeeRepository.save(emp);
		
	}

	@Override
	public List<LeaveRequest> getAllLeaveRequest() {
		return leaveRepository.findAll();
	}

	@Override
	public List<LeaveRequest> getLeaveRequestByEmployeeId(String id) {
		return leaveRepository.findByEmpId(id);
	}

	@Override
	public LeaveRequest getLeaveRequestById(Long id) {
		return leaveRepository.findById(id).get();
	}

	@Override
	public void AddLeaveRequest(LeaveRequest leave) {
		leaveRepository.save(leave);
	}

	@Override
	public void UpdateLeaveRequest(LeaveRequest leave) {
		Optional<LeaveRequest> byId = leaveRepository.findById(leave.getLeaveId());
		byId.get().setStatus(leave.getStatus());
		leaveRepository.save(byId.get());

	}


//	@Override
//	public Employee getEmployeeById(Long id) {
//		return employeeRepository.getById(id);
//	}


}
