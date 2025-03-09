package org.ems.employee.repository;

import java.util.Optional;

import org.ems.employee.model.Employee;
import org.ems.employee.model.Role;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RoleRepository extends JpaRepository<Role,Long>{

	Optional<Role> findByRoleNameAndRoleIdNot(String roleName, Long roleId);

}
