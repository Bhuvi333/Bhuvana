package com.shoppingcart.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingcart.DAO.ProductDAO;
import com.shoppingcart.model.Product;



@Service("productService")

public class ProductServicesImplement implements ProductServices {
    
	@Autowired
	 ProductDAO productDAO;

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int insertRow(Product prod,String s) {
	  return productDAO.insertRow(prod ,s);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public List getList() {
	  return productDAO.getList();
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public Product getRowById(int id) {
	  return productDAO.getRowById(id);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int updateRow(Product prod) {
	  return productDAO.updateRow(prod);
	 }

	@Transactional(propagation = Propagation.SUPPORTS)
	 public int deleteRow(int id) {
	  return productDAO.deleteRow(id);
	 }
}