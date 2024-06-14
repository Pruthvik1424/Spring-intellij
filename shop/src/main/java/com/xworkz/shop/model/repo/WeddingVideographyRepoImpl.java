package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.WeddingVideographyDto;
import org.springframework.stereotype.Repository;

@Repository
public class WeddingVideographyRepoImpl implements WeddingVideographyRepo{

    public WeddingVideographyRepoImpl(){
        System.out.println("running no arg const in WeddingVideographyRepo");
    }

    @Override
    public boolean save(WeddingVideographyDto weddingVideographyDto) {
        System.out.println("Running save method in wedding videography repo");
        return true;
    }
}
