package com.shoppingcart.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingcart.DAO.CategoryDAO;
import com.shoppingcart.model.Category;


@Service("CategoryService")
@Transactional(propagation = Propagation.SUPPORTS)
public class CategoryServicesImplement implements CategoryServices{
	
	@Autowired
	private CategoryDAO categoryDAO;

	public int insertRow(Category cat) {
		// TODO Auto-generated method stub
		return  categoryDAO.insertRow(cat);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return categoryDAO.getList();
	}

	public Category getRowById(int id) {
		// TODO Auto-generated method stub
		return  categoryDAO.getRowById(id);
	}

	public int updateRow(Category cat) {
		// TODO Auto-generated method stub
		return  categoryDAO.updateRow(cat);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  categoryDAO.deleteRow(id);
	}
}
