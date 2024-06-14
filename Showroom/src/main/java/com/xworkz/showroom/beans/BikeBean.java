package com.xworkz.showroom.beans;

import com.xworkz.showroom.dto.BikeDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping("/")
public class BikeBean {

    public BikeBean()
    {
        System.out.println("Created BikeBean");
    }

    @PostMapping("/save")
    public String save(@Valid BikeDto bikeDto, BindingResult bindingResult, Model model)
    {
        System.out.println("save method running...");

        if(bindingResult.hasErrors())
        {
            System.out.println("dto has invalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
        }

        else {
            model.addAttribute("name","Thank you for Registration"+bikeDto.getName());
        }

        model.addAttribute("dto",bikeDto);
        return "Bike";


    }
}
