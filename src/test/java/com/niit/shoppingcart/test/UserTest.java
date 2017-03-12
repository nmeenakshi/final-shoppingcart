package com.niit.shoppingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.UserDAO;
import com.niit.shoppingcart.model.User;

public class UserTest 
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		context.close();
		
		UserDAO userDAO = (UserDAO)context.getBean("userDAO");
		User user= (User)context.getBean("user");
		
		user.setUsername("lavanya");
		user.setPassword("1234");
		user.setAddress("mvm");
		user.setEmail("meena@gmail.com");
		user.setPhonenumber("4567867");
		
		userDAO.addUser(user);
		
		
		
	}
}
