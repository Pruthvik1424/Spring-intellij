package com.xworkz.mobilerecharge.model.repo;

import com.xworkz.mobilerecharge.dto.MobileRechargeDto;
import org.springframework.stereotype.Repository;

@Repository
public class MobileRechargeRepoImpl implements MobileRechargeRepo{


    public MobileRechargeRepoImpl(){
        System.out.println("created mobile recharge repo");
    }
    @Override
    public boolean save(MobileRechargeDto mobileRechargeDto) {
        System.out.println("Running Save method in mobile recharge repo ");
        return true;
    }
}
