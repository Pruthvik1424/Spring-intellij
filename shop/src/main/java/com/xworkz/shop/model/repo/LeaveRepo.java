package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.LeaveDto;

public interface LeaveRepo {
    boolean save(LeaveDto leaveDto);
}
