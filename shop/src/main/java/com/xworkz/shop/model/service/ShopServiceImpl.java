package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.ShopDto;
import com.xworkz.shop.model.repo.ShopRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopServiceImpl implements ShopService{
    @Autowired
    private ShopRepo shopRepo;

    public ShopServiceImpl(){
        System.out.println("running no arg const of Shop service");
    }
    @Override
    public boolean save(ShopDto shopDto) {
        System.out.println("running save method in shop service");
        boolean saved = shopRepo.save(shopDto);
        if(saved){
            System.out.println("Shop repo is saved successfully :"+shopDto);
        }else {
            System.out.println("shop repo is not saved :"+shopDto);
        }
        return true;
    }
}
