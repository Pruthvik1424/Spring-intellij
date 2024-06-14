package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.ShopDto;
import org.springframework.stereotype.Repository;

@Repository
public class ShopRepoImpl implements ShopRepo{
    public ShopRepoImpl(){
        System.out.println("Running no arg const of ShopRepo");
    }
    @Override
    public boolean save(ShopDto shopDto) {
        System.out.println("Running Save method in ShopRepo ");
        return true;
    }
}
