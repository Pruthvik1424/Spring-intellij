package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.WeddingVideographyDto;
import com.xworkz.shop.model.repo.WeddingVideographyRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WeddingVideographyServiceImpl implements WeddingVideographyService{
    @Autowired
    private WeddingVideographyRepo weddingVideographyRepo;

    public WeddingVideographyServiceImpl(){
        System.out.println("Running no arg const of WeddingVideographyService");
    }

    @Override
    public boolean save(WeddingVideographyDto weddingVideographyDto) {
        System.out.println("running save method in wedding videography service");
        boolean saved = weddingVideographyRepo.save(weddingVideographyDto);
        if(saved){
            System.out.println("wedding repo saved successfully :"+weddingVideographyDto);
        }else {
            System.out.println("Wedding repo not saved :"+weddingVideographyDto);
        }
        return true;
    }
}
