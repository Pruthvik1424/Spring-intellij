package com.xworkz.shop.dto;

import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.time.LocalDate;

public class AccidentInvestigationDto {

    @NotNull(message = "please select accidented date")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate date;

    @NotNull(message = "Applicant name should not be null")
    @Size(min = 3,max = 30,message = "Applicant name should have min 3 and max 30 charecter")
    private String location;

    @NotNull(message = "Please enter Address here")
    @Size(min = 10,max = 300,message = "address  should have min 3 and max 30 charecter")
    private String address;

    @NotNull(message = "Please select Vehicle")
    private String vehicle;

    @NotNull(message = "please enter vehicle number here")
    @Size(min = 3,max = 30,message = "vechicle name should have min 3 and max 10 charecter")
    private  String vehicleNumber;


    public AccidentInvestigationDto(){
        System.out.println("Accident investigation Dto is created");
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getVehicle() {
        return vehicle;
    }

    public void setVehicle(String vehicle) {
        this.vehicle = vehicle;
    }

    public String getVehicleNumber() {
        return vehicleNumber;
    }

    public void setVehicleNumber(String vehicleNumber) {
        this.vehicleNumber = vehicleNumber;
    }

    @Override
    public String toString() {
        return "AccidentInvestigationDto{" +
                "date=" + date +
                ", location='" + location + '\'' +
                ", address='" + address + '\'' +
                ", vehicle='" + vehicle + '\'' +
                ", vehicleNumber='" + vehicleNumber + '\'' +
                '}';
    }
}
