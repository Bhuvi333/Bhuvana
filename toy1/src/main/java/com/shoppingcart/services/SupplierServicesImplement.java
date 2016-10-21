package com.shoppingcart.services;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.shoppingcart.DAO.SupplierDAO;
import com.shoppingcart.model.Supplier;


@Service("supplierService")
@Transactional(propagation = Propagation.SUPPORTS)
public class SupplierServicesImplement implements SupplierServices{
	
	@Autowired
	private SupplierDAO supplierDAO;

	public int insertRow(Supplier sup) {
		// TODO Auto-generated method stub
		return  supplierDAO.insertRow(sup);
		 
	}

	public List getList() {
		// TODO Auto-generated method stub
		return supplierDAO.getList();
	}

	public Supplier getRowById(int id) {
		// TODO Auto-generated method stub
		return  supplierDAO.getRowById(id);
	}

	public int updateRow(Supplier sup) {
		// TODO Auto-generated method stub
		return  supplierDAO.updateRow(sup);
	}

	public int deleteRow(int id) {
		// TODO Auto-generated method stub
		return  supplierDAO.deleteRow(id);
	}
}
