package com.xworkz.shop.controller;

import com.xworkz.shop.dto.WeddingVideographyDto;
import com.xworkz.shop.model.service.WeddingVideographyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/" )
public class WeddingVideographyController {
    public WeddingVideographyController(){
        System.out.println("Creating wedding vediography Bean..");
    }

    @Autowired
    private WeddingVideographyService weddingVideographyService;

    @PostMapping("/wedding")
    public String wedding(@Valid WeddingVideographyDto weddingVideographyDto, BindingResult bindingResult, Model model){
        System.out.println("Running wedding method ");
        if(bindingResult.hasErrors()){

            System.err.println("WeddingDto has invalid data");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());

        }
        else {
            boolean save = weddingVideographyService.save(weddingVideographyDto);
            if(save){
                System.out.println("Wedding service saved successfully :"+weddingVideographyDto);
            }else {
                System.out.println("Wedding service is not saved :"+weddingVideographyDto);
            }
            model.addAttribute("name","Wedding videography booked successfully :"+weddingVideographyDto.getBride());
        }
        model.addAttribute("dto",weddingVideographyDto);
        return "WeddingVideographyContract";
    }
}
