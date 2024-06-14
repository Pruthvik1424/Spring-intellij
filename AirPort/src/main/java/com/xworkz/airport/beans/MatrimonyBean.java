package com.xworkz.airport.beans;

import com.xworkz.airport.dto.MatrimonyDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class MatrimonyBean {

    public MatrimonyBean(){
        System.out.println("kannada matrimony........");
    }

    @PostMapping("/go")
    //Model is the class imporeted from spring
    public String register(MatrimonyDto matrimonyDto, Model model){
        System.out.println("Getting matrimony details.......");
        System.out.println("Matrimony Details :"+matrimonyDto);
        //model.addAttribute("msg",matrimonyDto.getFullname() +",Thank you for contact");

        model.addAttribute("msg", matrimonyDto.getFullname() + ": Registration Successfully.");

        return "MatrimonyRegistrationForm.jsp";
    }

}
