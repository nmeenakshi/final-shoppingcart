package com.niit.shoppingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.CategoryDAO;
import com.niit.shoppingcart.model.Category;

public class CategoryTest 
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		context.close();
		
		CategoryDAO categoryDAO = (CategoryDAO)context.getBean("categoryDAO");
		Category category= (Category)context.getBean("category");
		
		category.setCid("CAT_001");
		category.setCname("FAST TRACK");
		category.setCdescription("NEW PRODUCT");
		
		categoryDAO.addCategory(category);
		
		
		
	}

}
