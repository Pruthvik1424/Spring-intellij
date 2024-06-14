package com.xworkz.rcb.config;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.stereotype.Component;

@Component
@ComponentScan("com.xworkz.rcb")
public class SpringPrimaryConfiguration {

    public SpringPrimaryConfiguration(){
        System.out.println("SpringPrimaryConfiguration is created");
    }

}
