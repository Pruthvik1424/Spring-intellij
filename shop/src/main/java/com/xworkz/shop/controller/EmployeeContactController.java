package com.xworkz.shop.controller;

import com.xworkz.shop.dto.EmployeeContactDto;
import com.xworkz.shop.model.service.EmployeeContactService;
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
public class EmployeeContactController {
    public EmployeeContactController(){
        System.out.println("Employee contact bean is created");
    }

  @Autowired
    private EmployeeContactService employeeContactService;
    @PostMapping("/contact")
    public String employeeContact(@Valid EmployeeContactDto employeeContactDto, BindingResult bindingResult, Model model){
        System.out.println("running employee contact method");

        if(bindingResult.hasErrors()){
            System.err.println("Employee contact Dto has invalid data");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());
        }
        else{
            boolean save = employeeContactService.save(employeeContactDto);
            if(save){
                System.out.println("service saved successfully"+employeeContactDto);
            }else {
                System.out.println("service is not saved"+employeeContactDto);
            }
            model.addAttribute("name","Employee Details submitted successfully"+employeeContactDto.getEmployeeName());
        }
        model.addAttribute("dto",employeeContactDto);
        return "EmployeeContactForm";
    }
}
