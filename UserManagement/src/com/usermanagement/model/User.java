package com.usermanagement.model;

public class User {
    protected int id;
    protected String name;
    protected String email;
    protected String phoneNumber; 

    public User() {
    }

    public User(String name, String email, String phoneNumber) { 
        super();
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber; 
    }

    public User(int id, String name, String email, String phoneNumber) { 
        super();
        this.id = id;
        this.name = name;
        this.email = email;
        this.phoneNumber = phoneNumber; 
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) { 
        this.phoneNumber = phoneNumber;
    }
}
