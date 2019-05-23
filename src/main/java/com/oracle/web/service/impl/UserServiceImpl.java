package com.oracle.web.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.oracle.web.bean.User;
import com.oracle.web.mapper.UserMapper;
import com.oracle.web.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
    private UserMapper userMapper;
	
	@Override
	@Transactional(readOnly=true)
	public List<User> list() {
		// TODO Auto-generated method stub
		return this.userMapper.selectAll();
	}

	@Override
	@Transactional
	public int save(User user) {
		// TODO Auto-generated method stub
		return this.userMapper.insert(user);
	}

	@Override
	public void delete(User u) {
		// TODO Auto-generated method stub
		this.userMapper.deleteByPrimaryKey(u.getId());
	}

	@Override
	@Transactional(readOnly=true)
	public User queryOneUser(Integer id) {
		// TODO Auto-generated method stub
		return this.userMapper.selectByPrimaryKey(id);
	}

	@Override
	public void update(User user) {
		// TODO Auto-generated method stub
		this.userMapper.updateByPrimaryKey(user);
	}

	
}
