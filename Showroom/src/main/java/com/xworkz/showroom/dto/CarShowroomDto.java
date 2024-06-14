package com.xworkz.showroom.dto;


import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class CarShowroomDto {

    @NotNull(message = "Name cannot be null, Please enter your name.")
    @Size(min = 3, max = 20, message = "Brand name should be min 2 and max 20 charecters ")
    private String name;

    @NotNull(message = "email cannot be null")
    private String email;

    @NotNull(message = "mobile cannot be null")
    @Size(max = 10)
    private long mobile;

    @NotNull
    private String purpose;

    @NotNull
    private String carModel;

    @NotNull
    private String confirm;

    public CarShowroomDto(){
        System.out.println("Car Show room Dto is created...");
    }

    @Override
    public String toString() {
        return "CarShowroomDto{" +
                "name='" + name + '\'' +
                ", email='" + email + '\'' +
                ", mobile=" + mobile +
                ", purpose='" + purpose + '\'' +
                ", carModel='" + carModel + '\'' +
                ", confirm='" + confirm + '\'' +
                '}';
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public long getMobile() {
        return mobile;
    }

    public void setMobile(long mobile) {
        this.mobile = mobile;
    }

    public String getPurpose() {
        return purpose;
    }

    public void setPurpose(String purpose) {
        this.purpose = purpose;
    }

    public String getCarModel() {
        return carModel;
    }

    public void setCarModel(String carModel) {
        this.carModel = carModel;
    }

    public String getConfirm() {
        return confirm;
    }

    public void setConfirm(String confirm) {
        this.confirm = confirm;
    }



}
