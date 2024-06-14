package com.xworkz.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan("com.xworkz.beans")
public class MobileConfiguration {

    public MobileConfiguration(){
        System.out.println("Mobile Configuration........");
    }
    @Bean
    public String shopName(){
        System.out.println("Shope name");
        return "MYSHOP";
    }

    @Bean
    public String location (){
        System.out.println("location");
        return "Bengaluru";
    }

    @Bean
    public String owner(){
        System.out.println("Owner");
        return "pruthvi";
    }

    @Bean
    public String brand(){
        System.out.println("Brand");
        return "iphone";
    }

    @Bean
    public long price(){
        System.out.println("Price");
        return 50000l;
    }

    @Bean
    public String display(){
        System.out.println("display");
        return "Amoled";
    }



}
