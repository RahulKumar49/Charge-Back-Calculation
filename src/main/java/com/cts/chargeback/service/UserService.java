package com.cts.chargeback.service;

import com.cts.chargeback.entity.User;

public interface UserService {
	boolean saveUser(User user);
	
	public User findUserDetails(String username);
}
