package com.shoppingcart.services;

import java.util.List;

import com.shoppingcart.model.Category;





public interface CategoryServices {
	public int insertRow(Category cat); 
	 public List getList();
	 public Category getRowById(int id);
	 public int updateRow(Category cat);
	 public int deleteRow(int id);
}
