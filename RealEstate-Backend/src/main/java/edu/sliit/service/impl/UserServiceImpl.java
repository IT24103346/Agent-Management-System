package edu.sliit.service.impl;

import edu.sliit.dto.User;
import edu.sliit.entity.UserEntity;
import edu.sliit.repository.UserRepository;
import edu.sliit.service.UserService;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository repository;
    private final ModelMapper mapper;

    @Override
    public List<User> getAll() {
        List<User> UserArrayList = new ArrayList<>();
        repository.findAll().forEach(entity->{
            UserArrayList.add(mapper.map(entity, User.class));
        });
        return UserArrayList;
    }

    @Override
    public void addUser(User user) {
        System.out.println(user);
        repository.save(mapper.map(user, UserEntity.class));
    }

    @Override
    public void deleteUserById(Integer id) {
        repository.deleteById(id);
    }

    @Override
    public User searchUserById(Integer id) {
        return mapper.map(repository.findById(id),User.class);


    }

    @Override
    public void updateUserById(User user) {
        repository.save(mapper.map(user, UserEntity.class));
    }
}
