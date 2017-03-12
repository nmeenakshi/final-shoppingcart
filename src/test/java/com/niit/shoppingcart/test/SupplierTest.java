package com.niit.shoppingcart.test;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.shoppingcart.dao.SupplierDAO;
import com.niit.shoppingcart.model.Supplier;

public class SupplierTest 
{
	public static void main(String[] args)
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.niit.shoppingcart");
		context.refresh();
		context.close();
		
		SupplierDAO supplierDAO = (SupplierDAO)context.getBean("supplierDAO");
		Supplier supplier= (Supplier)context.getBean("supplier");
		
		supplier.setSid("SUP_001");
		supplier.setSname("TIMES STORE");
		supplier.setSphonenumber("080-23456789");
		supplier.setSaddress("RAJAJINAGAR");
		
		supplierDAO.addSupplier(supplier);
			
	}
}
