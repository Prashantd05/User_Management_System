package com.demo.service;

import com.demo.model.User;

public interface UserService {
	User save(User u);
	int deleteById(int id);
	User findById(int id);

}
