package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.AccidentInvestigationDto;
import org.springframework.stereotype.Repository;

@Repository
public class AccidentInvestigationImpl implements AccidentInvestigationRepo{

    public AccidentInvestigationImpl(){
        System.out.println("Accident invest constructor created");
    }



    @Override
    public boolean save(AccidentInvestigationDto accidentInvestigationDto) {

        System.out.println("method from Accident investigationImpl class");
        return true;
    }
}
