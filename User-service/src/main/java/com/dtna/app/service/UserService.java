package com.dtna.app.service;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.stereotype.Service;

import com.dtna.app.model.User;


@Service
public class UserService {
	private static List<User> users=new ArrayList<>();
	private static Integer userId=104;
	static {
//				users.add(new User(101, "Raju", new Date(), "Dealer"));
//				users.add(new User(102, "Chaitanya", new Date(), "Dealer"));
//				users.add(new User(103, "Indu", new Date(), "Dealer"));
//				users.add(new User(104, "Ravi", new Date(), "Admin"));
				
				users.add(new User(101, "Raju",  "Dealer"));
				users.add(new User(102, "Chaitanya",  "Dealer"));
				users.add(new User(103, "Indu", "Dealer"));
				users.add(new User(104, "Ravi",  "Admin"));
				
	}
	public List<User> findAll(){
		return users;
	}

	
	public boolean deleteById(Integer id) {
		Iterator<User> userList=users.iterator();
		boolean flag=false;
		while(userList.hasNext()) {
			User user = userList.next();
			if(id==user.getId()) {
				userList.remove();
				flag=true;
			}
		}
		return flag;

	}
	
	public User save(User user){
		if(null==user.getId()) {
			user.setId(++userId);
		}
		
		users.add(user);
		return findById(user.getId());
	}
	
	public User findById(Integer id) {
		User user = new User();
		for (User usr : users) {
			if (usr.getId() == id) {
				BeanUtils.copyProperties(usr, user);
			}

		}
		return user;

	}
}
