package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.EmployeeContactDto;
import com.xworkz.shop.model.repo.EmployeeContectRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmployeeContactServiceImpl implements EmployeeContactService{

    @Autowired
    private EmployeeContectRepo employeeContectRepo;

    public EmployeeContactServiceImpl(){
        System.out.println("Running Employee contact service ");
    }


    @Override
    public boolean save(EmployeeContactDto employeeContactDto) {
        System.out.println("Running save method in Employee contact service impl");
        boolean saved = employeeContectRepo.save(employeeContactDto);
        if(saved){
            System.out.println("repo is saved successfully"+employeeContactDto);
        }else {
            System.out.println("Repo is not saved"+employeeContactDto);
        }
        return true;
    }
}
