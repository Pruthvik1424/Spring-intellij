package com.xworkz.airport.dto;

public class MatrimonyDto {

    private String fullname;
    // <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter fullname">
    //ref ahoud be equal Name attribute af input tag

    private String dob;

    private int age;

    private String religion;

    private String gender;

    private String qualification;

    private String job;

    private String maritalStatus;

    private String permanentAddress;

    private String district;

    private String lookingFor;

    public MatrimonyDto(){
        System.out.println("Creating matrimony........");
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getReligion() {
        return religion;
    }

    public void setReligion(String religion) {
        this.religion = religion;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public String getPermanentAddress() {
        return permanentAddress;
    }

    public void setPermanentAddress(String permanentAddress) {
        this.permanentAddress = permanentAddress;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public String getLookingFor() {
        return lookingFor;
    }

    public void setLookingFor(String lookingFor) {
        this.lookingFor = lookingFor;
    }




    @Override
    public String toString() {
        return "MatrimonyDto{" +
                "fullname='" + fullname + '\'' +
                ", dob='" + dob + '\'' +
                ", age=" + age +
                ", religion='" + religion + '\'' +
                ", gender='" + gender + '\'' +
                ", qualification='" + qualification + '\'' +
                ", job='" + job + '\'' +
                ", maritalStatus='" + maritalStatus + '\'' +
                ", permanentAddress='" + permanentAddress + '\'' +
                ", district='" + district + '\'' +
                ", lookingFor='" + lookingFor + '\'' +
                '}';
    }





}
