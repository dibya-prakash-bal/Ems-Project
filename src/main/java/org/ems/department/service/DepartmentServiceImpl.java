package org.ems.department.service;


import org.ems.department.model.Department;
import org.ems.department.repository.DepartmentRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    private final DepartmentRepository departmentRepository;

    public DepartmentServiceImpl(DepartmentRepository departmentRepository) {
        this.departmentRepository = departmentRepository;
    }


    @Override
    public void addDepartment(Department department) {
        System.out.println(department.toString());
        departmentRepository.save(department);
    }

    @Override
    public List<Department> getAllDepartments() {
        return departmentRepository.findAll();
    }

    @Override
    public void updateDepartment(Department department) {
        departmentRepository.save(department);
    }

    @Override
    public Department getDepartmentById(String id) {
        Optional<Department> byId = departmentRepository.findById(id);
        return byId.get();
    }

    @Override
    public void deleteDepartment(String id) {
        Optional<Department> byId = departmentRepository.findById(id);
        departmentRepository.delete(byId.get());
    }
}
