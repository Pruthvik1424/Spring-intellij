package com.xworkz.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class MobileShop {

    @Autowired
    private String shopName ;
    @Autowired
    private String location ;
    @Autowired
    private String owner;

    private Mobiles mobiles;

    public MobileShop(){
        System.out.println("Creating mobileshop.....");
    }

    public MobileShop(Mobiles mobiles){
        System.out.println("constructor injection...");
        this.mobiles = mobiles;
    }
    @Autowired
    public void setbrand(String brand){
        System.out.println("Setter injection");
    }

}
