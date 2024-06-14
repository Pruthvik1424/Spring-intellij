package com.xworkz.showroom.beans;

import com.xworkz.showroom.dto.CarDetailsDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping("/")
public class CarDetailsBean {

    public CarDetailsBean(){
        System.out.println("Car bean is created");
    }
@PostMapping("/send")
   public String Send(@Valid CarDetailsDto carDetailsDto, BindingResult bindingResult, Model model){
       System.out.println(" Running Send method...");
    System.out.println("Car Details DTO :"+carDetailsDto);

    if(bindingResult.hasErrors()){
        System.out.println("DTO has invalid Data");
        bindingResult.getAllErrors().forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
        model.addAttribute("error",bindingResult.getAllErrors());
    }
    else {
        model.addAttribute("name","Thanks For Submitting"+carDetailsDto.getCarname());
    }
    model.addAttribute("dto",carDetailsDto);
       return "CarDetails";
   }

}
