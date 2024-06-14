package com.xworkz.mobilerecharge.dto;

import org.hibernate.validator.constraints.NotEmpty;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;

public class MobileRechargeDto {

    @NotNull(message = "please enter valid mobile number")
    @Min(10L)
    @Max(10000000000L)
    private long mobilenumber;

    @NotNull(message = "please select your recharge plan ")

    private String plans;

    @NotNull(message = "please select sim card ")

    private String sim;

    @NotNull(message = "please select recharge type ")

    private String rechargeType;

    @NotEmpty(message = "please check agree ")
    private String agree;

    public MobileRechargeDto(){
        System.out.println("Mobile recharge dto is created...");
    }

    public long getMobilenumber() {
        return mobilenumber;
    }

    public void setMobilenumber(long mobilenumber) {
        this.mobilenumber = mobilenumber;
    }

    public String getPlans() {
        return plans;
    }

    public void setPlans(String plans) {
        this.plans = plans;
    }

    public String getSim() {
        return sim;
    }

    public void setSim(String sim) {
        this.sim = sim;
    }

    public String getRechargeType() {
        return rechargeType;
    }

    public void setRechargeType(String rechargeType) {
        this.rechargeType = rechargeType;
    }

    public String getAgree() {
        return agree;
    }

    public void setAgree(String agree) {
        this.agree = agree;
    }

    @Override
    public String toString() {
        return "MobileRechargeDto{" +
                "mobilenumber=" + mobilenumber +
                ", plans='" + plans + '\'' +
                ", sim='" + sim + '\'' +
                ", rechargeType='" + rechargeType + '\'' +
                ", agree='" + agree + '\'' +
                '}';
    }
}
