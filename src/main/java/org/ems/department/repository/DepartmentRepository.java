package org.ems.department.repository;

import java.util.Optional;

import org.ems.department.model.Department;
import org.springframework.data.jpa.repository.JpaRepository;

public interface DepartmentRepository extends JpaRepository<Department, String> {

	  Optional<Department> findByDepartmentName(String deptName);
}
