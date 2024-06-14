package com.xworkz.mobilerecharge.model.service;

import com.xworkz.mobilerecharge.dto.MobileRechargeDto;
import com.xworkz.mobilerecharge.model.repo.MobileRechargeRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MobileRechargeServiceImpl implements MobileRechargeService{

    @Autowired
    private MobileRechargeRepo mobileRechargeRepo;

    public MobileRechargeServiceImpl(){
        System.out.println("running no arg const of Mobile recharge service service");
    }

    @Override
    public boolean save(MobileRechargeDto mobileRechargeDto) {
        System.out.println("running save method in MObile Recharge service");
        boolean saved =mobileRechargeRepo.save(mobileRechargeDto);
        if(saved){
            System.out.println("Mobile recharge repo is saved successfully :"+mobileRechargeDto);
        }else {
            System.out.println("mobile recharge repo is not saved :"+mobileRechargeDto);
        }
        return true;
    }



}
