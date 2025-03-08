package org.ems.employee.model;


import java.time.LocalDate;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Employee {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long employeeId;
    private String employeename;
    private String address;
    private String phoneNo;
    private String email;
    private LocalDate dob;
    private Double salary;

	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", employeeName=" + employeename + ", address=" + address
				+ ", phoneNo=" + phoneNo + ", email=" + email + ", dob=" + dob + ", salary=" + salary + "]";
	}
	
	public Employee() {
		super();
	}

	public Long getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(Long employeeId) {
		this.employeeId = employeeId;
	}

	public String getEmployeename() {
		return employeename;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public LocalDate getDob() {
		return dob;
	}

	public void setDob(LocalDate dob) {
		this.dob = dob;
	}

	public Double getSalary() {
		return salary;
	}

	public void setSalary(Double salary) {
		this.salary = salary;
	}

	public Employee(String employeename, String address, String phoneNo, String email, LocalDate dob, Double salary) {
		super();
		this.employeename = employeename;
		this.address = address;
		this.phoneNo = phoneNo;
		this.email = email;
		this.dob = dob;
		this.salary = salary;
	}
		
    	
//    private Role role;
//    private Department department;
//    private List<Project> projects;
//    private List<Attendance> attendances;
//    private List<Leave> leaves;

    // Getters, Setters, Constructors
}
