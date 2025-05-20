package com.tourism.model;

public class User extends Person {
    private String password;
    private String budgetPreference;

    public User() {
        super();
    }

    public User(String firstName, String lastName, String email, String phone, String password,String role) {
        super(firstName, lastName, email, phone,role);
        this.password = password;
    }

    public String getPassword() { return password; }
    public void setPassword(String password) { this.password = password; }

    public String getBudgetPreference() { return budgetPreference; }
    public void setBudgetPreference(String budgetPreference) { this.budgetPreference = budgetPreference; }

    @Override
    public String toString() {
        return firstName + "," + lastName + "," + email + "," + phone + "," + password + "," + role + "," +
               (dob != null ? dob : "") + "," +
               (address != null ? address : "") + "," +
               (budgetPreference != null ? budgetPreference : "");
    }
}

