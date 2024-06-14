package com.xworkz.showroom.dto;

public class BikeDto {

    public BikeDto()
    {
        System.out.println("Created BikeDto");
    }

    private String name;
    private String color;
    private String type;
    private String check;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public String getCheck() {
        return check;
    }

    public void setCheck(String check) {
        this.check = check;
    }

    @Override
    public String toString() {
        return "BikeDto{" +
                "name='" + name + '\'' +
                ", color='" + color + '\'' +
                ", type='" + type + '\'' +
                ", check='" + check + '\'' +
                '}';
    }
}
