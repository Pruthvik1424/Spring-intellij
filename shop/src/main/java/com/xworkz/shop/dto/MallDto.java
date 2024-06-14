package com.xworkz.shop.dto;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class MallDto {

    @NotNull(message = "Mall name should not be null")
    @Size(min = 3,max = 30,message = "mall name should have min 3 and max 30 charecter")
    private  String mallName;

    @NotNull(message = "please enter the Location ")
    @Size(min = 3,max = 30,message = "mall name should have min 3 and max 30 charecter")
    private String location;

    @NotNull(message = "please select the state")
    private String state;

    @NotNull(message = "please enter valid pincode")
    @Min(10L)
    @Max(100000L)
    private Long pincode;

    @NotNull(message = "please select the mall type")
    private String mallType;

    @NotEmpty(message = "please check agree ")
    private String agree;


    public MallDto(){
        System.out.println("mall dto is created");
    }

    public String getMallName() {
        return mallName;
    }

    public void setMallName(String mallName) {
        this.mallName = mallName;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public Long getPincode() {
        return pincode;
    }

    public void setPincode(Long pincode) {
        this.pincode = pincode;
    }

    public String getMallType() {
        return mallType;
    }

    public void setMallType(String mallType) {
        this.mallType = mallType;
    }

    public String getAgree() {
        return agree;
    }

    public void setAgree(String agree) {
        this.agree = agree;
    }

    @Override
    public String toString() {
        return "MallDto{" +
                "mallName='" + mallName + '\'' +
                ", location='" + location + '\'' +
                ", state='" + state + '\'' +
                ", pincode=" + pincode +
                ", mallType='" + mallType + '\'' +
                ", agree='" + agree + '\'' +
                '}';
    }
}
