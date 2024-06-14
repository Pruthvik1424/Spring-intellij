package com.xworkz.shop.controller;

import com.xworkz.shop.dto.LeaveDto;
import com.xworkz.shop.model.repo.LeaveRepo;
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
public class LeaveController {
    public LeaveController(){
        System.out.println("Leave Bean is created");
    }
    @Autowired
    private LeaveRepo leaveRepo;

    @PostMapping("/leave")
    public String saveLeave(@Valid  LeaveDto leaveDto, BindingResult bindingResult, Model model){
        System.out.println("Running Send Method in leavebean");
        if(bindingResult.hasErrors()){
            System.err.println("LeaveDto form has invalid data");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors" ,bindingResult.getAllErrors());
        }
        else
        {
            boolean save = leaveRepo.save(leaveDto);
            if(save){
                System.out.println("Leave service saved successflly :"+leaveDto);
            }else {
                System.out.println("Leave service is not saved :"+leaveDto);
            }
            model.addAttribute("name","Application Submitted Successfully"+leaveDto.getApplicantname());
        }

        model.addAttribute("dto",leaveDto);
        return "LeaveForm";
    }
}
