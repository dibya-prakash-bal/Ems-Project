package org.ems.employee.service;

import java.util.List;

import org.ems.employee.model.Employee;
import org.ems.employee.model.Role;
import org.ems.employee.repository.EmployeeRepository;
import org.ems.employee.repository.RoleRepository;
import org.springframework.stereotype.Service;

@Service
public class RoleServiceImpl implements RoleService {
	private final RoleRepository roleRepository;
	private final EmployeeRepository employeeRepository;

	public RoleServiceImpl(RoleRepository roleRepository,EmployeeRepository employeeRepository) {
		this.roleRepository = roleRepository;
		this.employeeRepository = employeeRepository;
	}

	@Override
	public void createRole(String roleName, String roleDesc) {
		// TODO Auto-generated method stub
		Role role = new Role();
		role.setRoleName(roleName);
		role.setRoleDescription(roleDesc);
		roleRepository.save(role);

	}

	@Override
	public List<Role> getAllRole() {
		// TODO Auto-generated method stub
		return roleRepository.findAll();
	}

	@Override
	public void assignRoleToEmployee(Long employeeId, Long roleId) {
		// TODO Auto-generated method stub
		Employee emp = employeeRepository.findById(employeeId).get();
		Role role = roleRepository.findById(roleId).get();
		emp.setRole(role);
		employeeRepository.save(emp);
	}
	

}
