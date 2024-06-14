package com.xworkz.airport.beans;

import com.xworkz.airport.dto.ContactDto;
import org.springframework.stereotype.Component;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Component
@RequestMapping("/")
public class ContactBean {

    public ContactBean(){
        System.out.println("Contact Bean Created...........");
    }

    @PostMapping("/contact")
    public String contact(ContactDto contactDto, Model model){
        System.out.println("Contact is running.....");
        System.out.println("Contact Details :"+contactDto);
        model.addAttribute("msg", contactDto.getName() + ":Thank you for contacting...");
        return "ContactForm.jsp";
    }

}
