package com.xworkz.showroom.beans;

import com.xworkz.showroom.dto.CarShowroomDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class CarShowRoomBean {

    public CarShowRoomBean()
    {
        System.out.println("Created CarShowRoomBean");
    }

    @PostMapping("/go")
    public String register(CarShowroomDto carShowroomDto, BindingResult bindingResult, Model model)
    {
        System.out.println("Running register method");
        System.out.println("Dto details:"+carShowroomDto);

        if(bindingResult.hasErrors())
        {
            System.out.println("dto has invalid data");
            bindingResult.getAllErrors().forEach(objectError -> System.out.println(objectError.getDefaultMessage()));
            model.addAttribute("error",bindingResult.getAllErrors());
        }

        else {
            model.addAttribute("name","Thanks for Registering Booking"+carShowroomDto.getName());
        }

        return "CarShowRoom";
    }


}
