package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.ResignationDto;
import com.xworkz.shop.model.repo.ResignationRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ResignationServiceImpl implements ResignationService{

    @Autowired
    private ResignationRepo resignationRepo;

    public ResignationServiceImpl(){
        System.out.println("Running no arg const in ResignationServiceImpl");
    }


    @Override
    public boolean save(ResignationDto resignationDto) {
        System.out.println("Running save method in ResignationserviceImpl");
        boolean saved = resignationRepo.save(resignationDto);
        if(saved){
            System.out.println("Resignation repo is saved successfully :"+resignationDto);
        }else {
            System.out.println("Resignation repo is not saved: "+resignationDto);
        }
        return true;
    }
}
