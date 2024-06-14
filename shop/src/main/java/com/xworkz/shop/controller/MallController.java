package com.xworkz.shop.controller;

import com.xworkz.shop.dto.MallDto;
import com.xworkz.shop.model.service.MallService;
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
public class MallController {
    public MallController(){
        System.out.println("mall bean is created");
    }
    @Autowired
    private MallService mallService;

    @PostMapping("/mall")
    public String mallDetails(@Valid MallDto mallDto, BindingResult bindingResult, Model model){
        System.out.println("Running mall Details beans....");
        if(bindingResult.hasErrors()){
            System.err.println("Mall dto has invalid data");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());

        }
        else {
            boolean save = mallService.save(mallDto);
            if(save){
                System.out.println("Mall service is saved successfully :"+mallDto);
            }else {
                System.out.println("Mall service is not saved :"+mallDto);
            }
            model.addAttribute("name","Mall details sent successfully :"+mallDto.getMallName());
        }
        model.addAttribute("dto",mallDto);
        return "MallDetails";
    }
}
