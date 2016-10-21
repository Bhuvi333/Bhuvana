package com.shoppingcart.services;

import java.util.List;

import com.shoppingcart.model.Product;

public interface ProductServices {
	public int insertRow(Product p,String path); 
	 public List getList();
	 public Product getRowById(int id);
	 public int updateRow(Product p);
	 public int deleteRow(int id);
}

