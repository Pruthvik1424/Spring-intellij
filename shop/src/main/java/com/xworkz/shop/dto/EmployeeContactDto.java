package com.xworkz.shop.dto;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class EmployeeContactDto {

    @NotNull(message = "Please enter employee name")
    @Size(min = 3,max = 30,message = "Employee name shoud have min 3 and max 30 charecters")
    private String employeeName;

    @NotNull(message = "please enter the employee id")
    @Size(min = 5, max = 10 ,message = "employee id should contain min 5 and max 10 charecters")
    private String employeeId;

    @NotNull(message = "please select department")

    private String department;

    @NotNull(message = "please enter the valid mobile number")
    @Min(10L)
    @Max(10000000000L)
    private Long mobile;

    @NotNull(message = "please specify the gender")
    private String gender;

    @NotNull(message = "Please enter employee Address")
    @Size(min = 10,max = 300,message = "Employee Address shoud have min 10 and max 300 charecters")
    private String address;

    @NotEmpty(message = "please check agree ")
    private String agree;

    public String getEmployeeName() {
        return employeeName;
    }

    public void setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }

    public String getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(String employeeId) {
        this.employeeId = employeeId;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public Long getMobile() {
        return mobile;
    }

    public void setMobile(Long mobile) {
        this.mobile = mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAgree() {
        return agree;
    }

    public void setAgree(String agree) {
        this.agree = agree;
    }

    public EmployeeContactDto(){
        System.out.println("Employee dto is created");
    }

    @Override
    public String toString() {
        return "EmployeeContactDto{" +
                "employeeName='" + employeeName + '\'' +
                ", employeeId=" + employeeId +
                ", department='" + department + '\'' +
                ", mobile=" + mobile +
                ", gender='" + gender + '\'' +
                ", address='" + address + '\'' +
                ", agree='" + agree + '\'' +
                '}';
    }
}
