package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.MallDto;
import com.xworkz.shop.model.repo.MallRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MallServiceImpl implements MallService{

    @Autowired
    private MallRepo mallRepo;

    public MallServiceImpl(){
        System.out.println("Running no param const in mallServiceImpl");
    }

    @Override
    public boolean save(MallDto mallDto) {
        System.out.println("Running save method in MallServiceImpl");
        boolean saved = mallRepo.save(mallDto);
        if(saved){
            System.out.println("Mall repo saved successfully: "+mallDto);
        }else {
            System.out.println("Mall repo not saved :"+mallDto);
        }
        return true;
    }
}
