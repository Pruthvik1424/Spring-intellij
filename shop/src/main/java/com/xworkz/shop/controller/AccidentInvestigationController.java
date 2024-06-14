package com.xworkz.shop.controller;

import com.xworkz.shop.dto.AccidentInvestigationDto;
import com.xworkz.shop.model.service.AccidentInvestigationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class AccidentInvestigationController {

    @Autowired
    private AccidentInvestigationService accidentInvestigationService;

    public AccidentInvestigationController(){
        System.out.println("Accident investigate bean is created");
    }

    @PostMapping("/accident")
    public String accidentInvestigation(@Valid AccidentInvestigationDto accidentInvestigationDto, BindingResult bindingResult, Model model){
        System.out.println("Accident investigation method is running");

        if(bindingResult.hasErrors()){
            System.err.println("Accident investigation dto has invalid data");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());

        }else {
            boolean save=accidentInvestigationService.save(accidentInvestigationDto);
            if(save)
            {
                System.out.println("service saved successfully"+accidentInvestigationDto);
            }
            else {
                System.out.println("service is not successfully"+accidentInvestigationDto);
            }
            model.addAttribute("name",accidentInvestigationDto.getVehicleNumber()+": Accident investigation is submitted successfully");
        }
        model.addAttribute("dto",accidentInvestigationDto);
        return "AccidentInvestigationForm";
    }
}
