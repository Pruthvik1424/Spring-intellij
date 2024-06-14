package com.xworkz.tv.beans;

import com.xworkz.tv.dto.IceCreamDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Component
@RequestMapping("/")
public class IceCream {
    public IceCream(){
        System.out.println("IceCreame Beans is created.....");
    }

    @PostMapping("/order")
    public String Order(@Valid IceCreamDto iceCreamDto, BindingResult bindingResult, Model model){

        if(bindingResult.hasErrors()) {
            System.out.println("Icecream ordered successfully, Thank you");
            System.out.println("Icecream order :" + iceCreamDto);

            bindingResult.getAllErrors().forEach(objectError-> System.err.println(objectError.getDefaultMessage()));

            model.addAttribute("errors", bindingResult.getAllErrors());

        }
        else {
            model.addAttribute("msg","thank you for ordered"+iceCreamDto.getBrand());
        }

        model.addAttribute("icecream",iceCreamDto);

        return "Icecream.jsp";
    }
}
