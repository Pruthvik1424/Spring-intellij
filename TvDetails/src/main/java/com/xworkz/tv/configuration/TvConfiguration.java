package com.xworkz.tv.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@Configuration
@ComponentScan("com.xworkz.tv")
@EnableWebMvc
public class TvConfiguration {

    public TvConfiguration(){
        System.out.println("TvDetailsConfig created...");
    }
}
