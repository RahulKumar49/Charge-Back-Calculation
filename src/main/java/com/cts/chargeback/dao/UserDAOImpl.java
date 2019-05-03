package com.cts.chargeback.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.chargeback.entity.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public boolean saveUser(User user) {
		// TODO Auto-generated method stub
		boolean status;
		try{
			sessionFactory.getCurrentSession().save(user);
			status=true;
		}catch (Exception e) {
			// TODO: handle exception
			status=false;
		}
		return status;
	}

	@Override
	@Transactional
	public User findUser(String username) {
		User user=null;
		Session session=sessionFactory.getCurrentSession();
		try{
			user=session.get(User.class, username);
		}catch (Exception e) {
			// TODO: handle exception
		}
		return user;
	}

	


}
