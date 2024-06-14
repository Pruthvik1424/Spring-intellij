package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.ResignationDto;

public interface ResignationRepo {
    boolean save(ResignationDto resignationDto);
}
