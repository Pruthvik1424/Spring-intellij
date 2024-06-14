package com.xworkz.airport.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.xworkz.airport")
public class AirportConfiguration {

    public AirportConfiguration(){
        System.out.println("Airport Configuration.....");
    }

}
