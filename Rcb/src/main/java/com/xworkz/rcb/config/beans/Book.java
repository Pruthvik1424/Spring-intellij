package com.xworkz.rcb.config.beans;

import org.springframework.context.annotation.Bean;
import org.springframework.stereotype.Component;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;
import java.util.Properties;

@Component
public class Book {

    public Book(){
        System.out.println("Book is created");
    }

    //manually generate the object
    @Bean
    public String name(){
        System.out.println("Name");
        return "name";
    }

    @Bean
    public char[] size(){
        System.out.println("Size");
        return new char[]{'l','s'};
    }

    @Bean
    public LinkedList<String> compiler(){
        System.out.println("Linkedlist is a compiler method");
        return new LinkedList<>();
    }

    @Bean
    public Map plain(){
        System.out.println("Map is created");
        return new HashMap();
    }
    @Bean
    public Properties print(){
        System.out.println("Print  the properties");
        return new Properties();
    }
    @Bean
    public Temple god(){
        System.out.println("TEmple is created");
        return new Temple() ;
    }
    @Bean
    public Mug Water(){

        return new Mug();
    }

    @Bean
    public Spoon feed(){
        return new Spoon();
    }







}
