package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.ResignationDto;
import org.springframework.stereotype.Repository;

@Repository
public class ResignationRepoImpl implements ResignationRepo{

    public ResignationRepoImpl(){
        System.out.println("running no param const in resignationRepoImpl");
    }

    @Override
    public boolean save(ResignationDto resignationDto) {
        System.out.println("Running save method in resignationRepoImpl");
        return true;
    }
}
