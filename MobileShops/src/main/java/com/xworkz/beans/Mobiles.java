package com.xworkz.beans;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class Mobiles {

    @Autowired
    private String brand;
    @Autowired
    private long price;
    @Autowired
    private String display;


    public Mobiles(){
        System.out.println("Creating mobiles.....");
    }

}
