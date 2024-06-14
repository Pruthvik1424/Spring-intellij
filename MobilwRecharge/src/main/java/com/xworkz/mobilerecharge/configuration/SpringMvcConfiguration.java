package com.xworkz.mobilerecharge.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

@Configuration
@ComponentScan("com.xworkz.mobilerecharge")
@PropertySource("classpath:application.properties")
public class SpringMvcConfiguration {
    public SpringMvcConfiguration(){
        System.out.println("Spring configuration is created");
    }
}
