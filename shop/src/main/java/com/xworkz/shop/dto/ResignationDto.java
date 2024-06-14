package com.xworkz.shop.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class ResignationDto {

    @NotNull(message = "Please enter From address")
    @Size(min = 3,max = 30,message = "From  should have min 3 and max 30 charecter")
    private String from;

    @NotNull(message = "Please enter to address")
    @Size(min = 3,max = 30,message = "To  should have min 3 and max 30 charecter")
    private String to;

    @NotNull(message = "please select your department")
    private String department;

    @NotNull(message = "please enter your email address")
    private String email;

    @NotNull(message = "Please enter to Reason for resignation")
    @Size(min = 10,max = 300,message = "Reason  should have min 3 and max 30 charecter")
    private String reason;

    @NotNull(message = "please select date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    @NotEmpty(message = "please check Confirm ")
    private String confirm;


    public ResignationDto(){
        System.out.println("Resignation dto is created...");
    }

    public String getFrom() {
        return from;
    }

    public void setFrom(String from) {
        this.from = from;
    }

    public String getTo() {
        return to;
    }

    public void setTo(String to) {
        this.to = to;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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
        return "ResignationDto{" +
                "from='" + from + '\'' +
                ", to='" + to + '\'' +
                ", department='" + department + '\'' +
                ", email='" + email + '\'' +
                ", reason='" + reason + '\'' +
                ", date=" + date +
                ", confirm='" + confirm + '\'' +
                '}';
    }
}
