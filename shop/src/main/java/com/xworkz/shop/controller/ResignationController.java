package com.xworkz.shop.controller;

import com.xworkz.shop.dto.ResignationDto;
import com.xworkz.shop.model.service.ResignationService;
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
public class ResignationController {

    public ResignationController(){
        System.out.println("Resignation bean is created");
    }

    @Autowired
    private ResignationService resignationService;

    @PostMapping("/resign")
    public String resign(@Valid ResignationDto resignationDto, BindingResult bindingResult, Model model){
        System.out.println("Running resign method ");

        if(bindingResult.hasErrors()){
            System.err.println("Resign Dto has invalid date");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
        }
        else {
            boolean save = resignationService.save(resignationDto);
            if(save){
                System.out.println("Resignation service saved successfully :"+resignationDto);
            }else {
                System.out.println("Resignation service is not saved :"+resignationDto);
            }
            model.addAttribute("name",resignationDto.getFrom()+": Your resignation application is submitted successfully");
        }
        model.addAttribute("dto",resignationDto);
        return "ResignationForm";
    }
}
