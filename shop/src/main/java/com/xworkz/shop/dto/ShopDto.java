package com.xworkz.shop.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class ShopDto {

    public ShopDto()
    {
        System.out.println("Created ShopDto");
    }
    @NotNull(message = "name cannot be null")
    @Size(min=3, max=30,message = "name should be min 3 and max 30")
    private String name;

    @NotNull(message = "location cannot be null")
    @Size(min=3,max=30, message = "locatio should be min 3 and max 30")
    private String location;

    @NotNull(message = "Please select shop type")
    private String types;

    @NotNull(message = "Please select market type")
   private String Mtype;

    @NotNull(message = "area cannot be null")
    @Size(min=3,max=300,message = "area sould be min 3 and max 300")
    private String area;

    @NotNull(message = "Please Select")
    private String check;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getTypes() {
        return types;
    }

    public void setTypes(String types) {
        this.types = types;
    }

    public String getMtype() {
        return Mtype;
    }

    public void setMtype(String mtype) {
        Mtype = mtype;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    @Override
    public String toString() {
        return "ShopDto{" +
                "name='" + name + '\'' +
                ", location='" + location + '\'' +
                ", types='" + types + '\'' +
                ", Mtype='" + Mtype + '\'' +
                ", area='" + area + '\'' +
                ", check='" + check + '\'' +
                '}';
    }
}
