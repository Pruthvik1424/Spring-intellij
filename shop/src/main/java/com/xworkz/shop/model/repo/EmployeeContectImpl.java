package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.EmployeeContactDto;
import org.springframework.stereotype.Repository;

@Repository
public class EmployeeContectImpl implements EmployeeContectRepo{

    public EmployeeContectImpl(){
        System.out.println("Running employee contact impl Repooo");
    }

    @Override
    public boolean save(EmployeeContactDto employeeContactDto) {
        System.out.println("Running save method in employee contact impl repo");
        return true;
    }
}
