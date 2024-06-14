package com.xworkz.airport.beans;

import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class BengaluruAirportBean {


    public BengaluruAirportBean(){
        System.out.println("Bengaluru Airport........");
    }
    @PostMapping("/send")
    public String send(){
        System.out.println("Sent successfully...");
        return "index.jsp";
    }
}
