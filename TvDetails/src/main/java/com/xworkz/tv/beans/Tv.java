package com.xworkz.tv.beans;

import com.xworkz.tv.dto.TvDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping("/")
public class Tv {
    public Tv(){
        System.out.println("Tv is created");
    }
    @PostMapping("/send")
    public String send(@Valid TvDto tvDto, BindingResult bindingResult, Model model){
        if(bindingResult.hasErrors()) {
            System.out.println("Tv details submitted successfully,Thank you.");
            System.out.println("Tv Details :" + tvDto);
            bindingResult.getAllErrors().forEach(objectError-> System.out.println(objectError.getDefaultMessage()));

            model.addAttribute("errors", bindingResult.getAllErrors());
            model.addAttribute("dto",tvDto);
        }
        else {
            model.addAttribute("msg", tvDto.getBrand() + "Tv Details is submited successfully");
        }
                return "Tv.jsp";
    }
}
