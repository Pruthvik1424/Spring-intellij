package com.xworkz.mobilerecharge.controller;

import com.xworkz.mobilerecharge.dto.MobileRechargeDto;
import com.xworkz.mobilerecharge.model.service.MobileRechargeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
@RequestMapping("/")
public class MobileRechargeController {

@Autowired
private MobileRechargeService mobileRechargeService;


    public MobileRechargeController(){
        System.out.println("MObileRechargeController is created");
    }


    @PostMapping("/recharge")
    public String mobileRecharge(@Valid MobileRechargeDto mobileRechargeDto, BindingResult bindingResult, Model model){
        System.out.println("mobileRecharge method is running");

        if(bindingResult.hasErrors()){
            System.err.println("Mobile recharge dto has invalid data");
            bindingResult
                    .getAllErrors()
                    .forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("errors",bindingResult.getAllErrors());

        }else {
            boolean save= mobileRechargeService.save(mobileRechargeDto) ;
            if(save)
            {
                System.out.println("service saved successfully"+mobileRechargeDto);
            }
            else {
                System.out.println("service is not successfully"+mobileRechargeDto);
            }
            model.addAttribute("name",mobileRechargeDto.getMobilenumber()+": Recharged successfully");
        }
        model.addAttribute("dto",mobileRechargeDto);
        return "MobileRecharge";
    }
}
