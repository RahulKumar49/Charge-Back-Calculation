package com.cts.chargeback.service;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User.UserBuilder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.chargeback.dao.UserDAO;
import com.cts.chargeback.entity.User;

@Service("userDetailsService")
public class UserDetailsServiceImpl implements UserDetailsService{
	
	@Autowired
	SessionFactory  sessionFactory;
	
	@Autowired
	UserDAO userDAO;

	@Transactional(readOnly=true)
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// TODO Auto-generated method stub
		
		User user=userDAO.findUser(username);
		UserBuilder builder=null;
		if(user!=null){
			builder = org.springframework.security.core.userdetails.User.withUsername(username);
		      builder.password(user.getPassword());
		      builder.authorities("ROLE_ADMIN");
		}else{
			throw new UsernameNotFoundException("User not found.");
		}
		return builder.build();
	}

}
