package com.xworkz.tv.dto;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class IceCreamDto {

    @NotNull(message = "Brand cannot be Null")
    @Size(min = 3, max = 20, message = "Brand name should be min 2 and max 20 charecters ")
    private String brand;

    @NotNull(message = "please select product type")
    private String productType;

    @NotNull(message = "please select flavour")
    private String flavour;

    private String accept;



    public IceCreamDto(){
        System.out.println("IcecreameDto is created...");
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getProductType() {
        return productType;
    }

    public void setProductType(String productType) {
        this.productType = productType;
    }

    public String getFlavour() {
        return flavour;
    }

    public void setFlavour(String flavour) {
        this.flavour = flavour;
    }

    public String getAccept() {
        return accept;
    }

    public void setAccept(String accept) {
        this.accept = accept;
    }

    @Override
    public String toString() {
        return "IceCreamDto{" +
                "brand='" + brand + '\'' +
                ", productType='" + productType + '\'' +
                ", flavour='" + flavour + '\'' +
                ", accept='" + accept + '\'' +
                '}';
    }
}
