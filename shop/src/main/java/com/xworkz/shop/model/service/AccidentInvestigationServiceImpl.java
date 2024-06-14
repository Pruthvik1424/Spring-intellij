package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.AccidentInvestigationDto;
import com.xworkz.shop.model.repo.AccidentInvestigationRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AccidentInvestigationServiceImpl implements AccidentInvestigationService{

    @Autowired
    private AccidentInvestigationRepo accidentInvestigationRepo;

    public AccidentInvestigationServiceImpl(){
        System.out.println("running in Accident investigation service impl class");
    }

    @Override
    public boolean save(AccidentInvestigationDto accidentInvestigationDto) {
        System.out.println("method from Accident ivest service impl");
        boolean saving=accidentInvestigationRepo.save(accidentInvestigationDto);
        if(saving)
        {
            System.out.println("repo is saved successfully"+accidentInvestigationDto);
        }
        else
        {
            System.out.println("repo is not saved successfully"+accidentInvestigationDto);
        }
        return true;
    }
}
