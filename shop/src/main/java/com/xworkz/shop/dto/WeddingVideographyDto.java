package com.xworkz.shop.dto;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.bind.annotation.PostMapping;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class WeddingVideographyDto {


    @NotNull(message = "please enter bride name")
    @Size(min=3,max=30, message = "bride name should have min 3 and max 30")
    private String bride;

    @NotNull(message = " please enter groom name ")
    @Size(min=3,max=30, message = "groom name  should have min 3 and max 30")
    private String groom;

    @NotEmpty(message = "please enter valid email id")
    @Pattern(regexp = "^[\\w.%+-]+@[\\w.-]+\\.[a-zA-Z]{2,6}$", message = "Enter valid email")
    private String email;

    @NotNull(message = "please enter wedding  location")
    @Size(min=3,max=30, message = "location should have min 3 and max 30")
    private String location;

@NotEmpty(message = "please select contract package")
    private String contract;




    public WeddingVideographyDto(){
        System.out.println("creating Wedding videography dto ..");
    }

    public String getBride() {
        return bride;
    }

    public void setBride(String bride) {
        this.bride = bride;
    }

    public String getGroom() {
        return groom;
    }

    public void setGroom(String groom) {
        this.groom = groom;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContract() {
        return contract;
    }

    public void setContract(String contract) {
        this.contract = contract;
    }

    @Override
    public String toString() {
        return "WeddingVideographyDto{" +
                "bride='" + bride + '\'' +
                ", groom='" + groom + '\'' +
                ", email='" + email + '\'' +
                ", location='" + location + '\'' +
                ", contract='" + contract + '\'' +
                '}';
    }
}
