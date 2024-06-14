package com.xworkz.beans;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

@Component
@PropertySource("classpath:Application.Properties")
public class Gadgets {

    @Value("${host}")
    private String host;

    @Value("${portNumber}")
    private String portNumber;

    @Value("${userName}")
    private String userName;

    @Value("${password}")
    private String password;

    public Gadgets(){
        System.out.println("Creating gadgets.........");
    }
    @Bean
    public void print (){

        System.out.println("Host :"+host);
        System.out.println("post number :"+portNumber);
        System.out.println("user name :"+userName);
        System.out.println("password :"+password);


    }


}
