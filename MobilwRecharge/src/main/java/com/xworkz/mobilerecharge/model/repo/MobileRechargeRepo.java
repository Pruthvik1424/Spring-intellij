package com.xworkz.mobilerecharge.model.repo;

import com.xworkz.mobilerecharge.dto.MobileRechargeDto;

public interface MobileRechargeRepo {
    boolean save(MobileRechargeDto mobileRechargeDto);
}
