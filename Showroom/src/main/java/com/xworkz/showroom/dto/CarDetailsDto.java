package com.xworkz.showroom.dto;

import javax.validation.constraints.NotNull;

public class CarDetailsDto {

    @NotNull(message = "Name shoud not be null")
    private String carname;

    @NotNull(message = "fueltype should be selected")
    private String fueltype;

    @NotNull(message = "Car color must be selected")
    private String carcolor;

    public String getCarname() {
        return carname;
    }

    public void setCarname(String carname) {
        this.carname = carname;
    }

    public String getFueltype() {
        return fueltype;
    }

    public void setFueltype(String fueltype) {
        this.fueltype = fueltype;
    }

    public String getCarcolor() {
        return carcolor;
    }

    public void setCarcolor(String carcolor) {
        this.carcolor = carcolor;
    }

    public CarDetailsDto(){
        System.out.println("Car dto is created");
    }

    @Override
    public String toString() {
        return "CarDetailsDto{" +
                "carname='" + carname + '\'' +
                ", fueltype='" + fueltype + '\'' +
                ", carcolor='" + carcolor + '\'' +
                '}';
    }
}
