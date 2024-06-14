package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.LeaveDto;
import org.springframework.stereotype.Repository;

@Repository
public class LeaveRepoImpl implements LeaveRepo{

    public LeaveRepoImpl(){
        System.out.println("Running no arg param of Leave repo impl");
    }

    @Override
    public boolean save(LeaveDto leaveDto) {
        System.out.println("Running save method in Leave repo impl");
        return true;
    }
}
