package com.xworkz.airport.dto;

public class ContactDto {

    private String Name;

    private String email;

    private int mobile;

    private String comments;

    public ContactDto(){
        System.out.println("Creating ContactDto.....");
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        this.Name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getMobile() {
        return mobile;
    }

    public void setMobile(int mobile) {
        this.mobile = mobile;
    }

    public String getComments() {
        return comments;
    }

    public void setComments(String comments) {
        this.comments = comments;
    }

    @Override
    public String toString() {
        return "ContactDto{" +
                "name='" + Name + '\'' +
                ", email='" + email + '\'' +
                ", mobile=" + mobile +
                ", comments='" + comments + '\'' +
                '}';
    }
}
