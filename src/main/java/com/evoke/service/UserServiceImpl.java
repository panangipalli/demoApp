package com.evoke.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.stereotype.Service;

import com.evoke.model.User;

@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public void save(User user) {
		mongoTemplate.save(user);
	}

}
