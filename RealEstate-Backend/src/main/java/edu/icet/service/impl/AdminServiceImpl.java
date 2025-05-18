package edu.icet.service.impl;

import edu.icet.dto.Admin;
import edu.icet.entity.AdminEntity;
import edu.icet.repository.AdminRepository;
import edu.icet.service.AdminService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class AdminServiceImpl implements AdminService {
    private final AdminRepository repository;
    private final ModelMapper mapper;

    @Override
    public List<Admin> getAll() {
        List<Admin> AdminArrayList = new ArrayList<>();
        repository.findAll().forEach(entity->{
            AdminArrayList.add(mapper.map(entity, Admin.class));
        });
        return AdminArrayList;
    }

    @Override
    public void addAdmin(Admin admin) {
        System.out.println(admin);
        repository.save(mapper.map(admin, AdminEntity.class));
    }

    @Override
    public void deleteAdminById(Integer id) {
        repository.deleteById(id);
    }

    @Override
    public Admin searchAdminById(Integer id) {
        return mapper.map(repository.findById(id),Admin.class);


    }

    @Override
    public void updateAdminById(Admin admin) {
        repository.save(mapper.map(admin, AdminEntity.class));
    }
}
