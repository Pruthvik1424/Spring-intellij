package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.MallDto;
import org.springframework.stereotype.Repository;

@Repository
public class MallRepoImpl implements MallRepo{


    public MallRepoImpl(){
        System.out.println("Running no arg const of Mall repo impl");
    }

    @Override
    public boolean save(MallDto mallDto) {
        System.out.println("Ruuning save method in MallRepoImpl class");
        return true;
    }
}
