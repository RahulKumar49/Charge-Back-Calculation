package com.cts.chargeback.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.chargeback.dao.UserDAO;
import com.cts.chargeback.entity.User;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;
	
	@Override
	
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.saveUser(user);
	}

	@Override
	public User findUserDetails(String username) {
		// TODO Auto-generated method stub
		return userDAO.findUser(username);
	}
	
	

	

}
