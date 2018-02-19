package com.prasant.spring.mvc.service;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.prasant.spring.mvc.dao.UserDAO;
import com.prasant.spring.mvc.model.User;

@Service
public class UserService {
	
	@Autowired
	private UserDAO userDao;
	
	public boolean createUser(User user) {
		return userDao.create(user);
	}

	public boolean exitUser(String username) {
		return userDao.getUser(username);
	}

}
