package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.EmployeeContactDto;
import org.springframework.stereotype.Repository;

public interface EmployeeContectRepo {
    boolean save(EmployeeContactDto employeeContactDto);
}
