package com.xworkz.shop.controller;

import com.xworkz.shop.dto.ShopDto;
import com.xworkz.shop.model.service.ShopService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class ShopController {

    public ShopController()
    {
        System.out.println("Created ShopBean");
    }

    @Autowired
    private ShopService shopService;

    @PostMapping("/save")
    public String save(@Valid ShopDto shopDto, BindingResult bindingResult, Model model)
    {
        System.out.println("Running save method");

        if(bindingResult.hasErrors())
        {
            System.err.println("dto has invaalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
        }

        else
        {
            boolean save = shopService.save(shopDto);
            if(save){
                System.out.println("Shop service is saved successfully: "+shopDto);
            }else {
                System.out.println("Shop service is not saved :"+shopDto);
            }
            model.addAttribute("name","Thanks for Registartion"+shopDto.getName());
        }

        model.addAttribute("dto",shopDto);
        return "Shop";



    }
}
