package com.xworkz.shop.model.service;

import com.xworkz.shop.dto.LeaveDto;
import com.xworkz.shop.model.repo.LeaveRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LeaveServiceImpl implements LeaveService{

   @Autowired
  private LeaveRepo leaveRepo;

    public LeaveServiceImpl(){
        System.out.println("Leave service impl is created...");
    }

    @Override
    public boolean save(LeaveDto leaveDto) {
        System.out.println("Running save method in leave service impl");
        boolean saved = leaveRepo.save(leaveDto);
        if(saved){
            System.out.println("Leave repo saved succsfully:"+leaveDto);
        }else{
            System.out.println("Leave repo is not saved :"+leaveDto);
        }
        return true;
    }
}
