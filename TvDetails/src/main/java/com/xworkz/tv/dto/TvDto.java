package com.xworkz.tv.dto;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class TvDto {
    @NotNull(message = "Brand cannot be Null")
    @Size(min = 3, max = 20, message = "Brand name should be min 2 and max 20 charecters ")
    private String brand;

    @Min(1)
    @Max(10)
    private int price;

    private String type;

    private String resolution;
    @NotNull(message = "review cannot be Null")
    @Size(min = 3, max = 100, message = "Review should be min 2 and max 100 charecters ")
    private String review;


    public TvDto(){
        System.out.println("TvDto is created");
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public String getResolution() {
        return resolution;
    }

    public void setResolution(String resolution) {
        this.resolution = resolution;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    @Override
    public String toString() {
        return "TvDto{" +
                "brand='" + brand + '\'' +
                ", price=" + price +
                ", type='" + type + '\'' +
                ", resolution='" + resolution + '\'' +
                ", review='" + review + '\'' +
                '}';
    }
}
