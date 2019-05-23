package com.oracle.web.service;

import java.util.List;

import com.oracle.web.bean.User;

public interface UserService {

	List<User> list();

	int save(User user);

	void delete(User u);

	User queryOneUser(Integer id);

	void update(User user);

}
