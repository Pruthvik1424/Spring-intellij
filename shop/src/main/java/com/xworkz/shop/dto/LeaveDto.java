package com.xworkz.shop.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class LeaveDto {

    @NotNull(message = "Applicant name should not be null")
    @Size(min = 3,max = 30,message = "Applicant name should have min 3 and max 30 charecter")
    private String applicantname;

    @NotNull(message = "please select department")
    private String department;

    @NotNull(message = "please enter valid mobile number")
    @Min(10L)
    @Max(10000000000L)
    private Long mobile;

    @NotNull(message = "please select reason for leave ")
    private String reason;

    @NotNull(message = "please select date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    @NotEmpty(message = "please check confirm ")
    private String confirm;

    public LeaveDto(){
        System.out.println("Leave Dto is created");
    }

    public String getApplicantname() {
        return applicantname;
    }

    public void setApplicantname(String applicantname) {
        this.applicantname = applicantname;
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

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }

    @Override
    public String toString() {
        return "LeaveDto{" +
                "applicantname='" + applicantname + '\'' +
                ", department='" + department + '\'' +
                ", mobile=" + mobile +
                ", reason='" + reason + '\'' +
                ", date=" + date +
                ", confirm='" + confirm + '\'' +
                '}';
    }
}
