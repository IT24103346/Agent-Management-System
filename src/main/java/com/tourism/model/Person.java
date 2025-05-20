package com.tourism.model;

import java.io.Serializable;

public class Person implements Serializable {
    protected String firstName;
    protected String lastName;
    protected String email;
    protected String phone;
    protected String dob;
    protected String address;
    protected String role;
    
    public Person() {}
    
    public Person(String firstName, String lastName, String email, String phone,String role) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.phone = phone;
        this.role = role;
    }
    
    // Getters and setters
    public String getFirstName() { return firstName; }
    public void setFirstName(String firstName) { this.firstName = firstName; }
    
    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }
    
    public String getEmail() { return email; }
    public void setEmail(String email) { this.email = email; }
    
    public String getPhone() { return phone; }
    public void setPhone(String phone) { this.phone = phone; }
    
    // Additional getters and setters
    public String getDob() { return dob; }
    public void setDob(String dob) { this.dob = dob; }
    
    public String getAddress() { return address; }
    public void setAddress(String address) { this.address = address; }

    public String getRole() { return role; }
    public void setRole(String role) { this.role = role; }
}
