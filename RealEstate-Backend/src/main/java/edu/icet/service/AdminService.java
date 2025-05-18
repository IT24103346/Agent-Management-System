package edu.icet.service;

import edu.icet.dto.Admin;
import edu.icet.dto.Property;

import java.util.List;

public interface AdminService {
    List<Admin> getAll();

    void addAdmin(Admin admin);

    void deleteAdminById(Integer id);

    Admin searchAdminById(Integer id);

    void updateAdminById(Admin admin);
}
