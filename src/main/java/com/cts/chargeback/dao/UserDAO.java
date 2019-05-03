package com.cts.chargeback.dao;

import com.cts.chargeback.entity.User;

public interface UserDAO  {
	public boolean saveUser(User user);
	
	public User findUser(String username);
	

}
