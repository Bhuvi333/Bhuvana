package com.shoppingcart.services;

import java.util.List;

import com.shoppingcart.model.Supplier;



public interface SupplierServices {
	public int insertRow(Supplier sup); 
	 public List getList();
	 public Supplier getRowById(int id);
	 public int updateRow(Supplier sup);
	 public int deleteRow(int id);
}

