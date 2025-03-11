package org.ems.employee.model;

import jakarta.persistence.*;



@Entity
public class LeaveRequest {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long leaveId;


    private String leaveType;

    @Column(length = 500)
    private String leaveDescription;


    private String empId;

    private String empName;

    private String contactNumber;

    private String status;

    public LeaveRequest() {
    }

    public long getLeaveId() {
        return leaveId;
    }

    public void setLeaveId(long leaveId) {
        this.leaveId = leaveId;
    }

    public String getLeaveType() {
        return leaveType;
    }

    public void setLeaveType(String leaveType) {
        this.leaveType = leaveType;
    }

    public String getLeaveDescription() {
        return leaveDescription;
    }

    public void setLeaveDescription(String leaveDescription) {
        this.leaveDescription = leaveDescription;
    }

    public String getEmpId() {
        return empId;
    }

    public void setEmpId(String empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getContactNumber() {
        return contactNumber;
    }

    public void setContactNumber(String contactNumber) {
        this.contactNumber = contactNumber;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "leaveRequest{" +
                "leaveId='" + leaveId + '\'' +
                ", leaveType='" + leaveType + '\'' +
                ", leaveDescription='" + leaveDescription + '\'' +
                ", empId='" + empId + '\'' +
                ", empName='" + empName + '\'' +
                ", status='" + status + '\'' +
                '}';
    }


}




