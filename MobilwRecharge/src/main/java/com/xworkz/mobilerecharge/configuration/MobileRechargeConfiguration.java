package com.xworkz.mobilerecharge.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
@ComponentScan("com.xworkz.mobilerecharge")
@EnableWebMvc
public class MobileRechargeConfiguration {
    public MobileRechargeConfiguration(){
        System.out.println("Mobile configuration created");
    }

    @Bean
    public ViewResolver viewResolver()
    {
        System.out.println("Registring viewResolver");
        InternalResourceViewResolver internalResourceViewResolver=new InternalResourceViewResolver();
        internalResourceViewResolver.setPrefix("/");
        internalResourceViewResolver.setSuffix(".jsp");
        return internalResourceViewResolver;
    }
}
