package com.xworkz.shop.model.repo;

import com.xworkz.shop.dto.ShopDto;

public interface ShopRepo {
    boolean save(ShopDto shopDto);
}
