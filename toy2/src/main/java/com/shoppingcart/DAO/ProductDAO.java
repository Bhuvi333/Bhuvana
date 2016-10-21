package com.shoppingcart.DAO;



import java.util.List;

import com.shoppingcart.model.Product;


public interface ProductDAO {
 public int insertRow(Product prod,String s);

 public List getList();

 public Product getRowById(int id);

 public int updateRow(Product prod);

 public int deleteRow(int id);

}