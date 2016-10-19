package com.shoppingcart.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.shoppingcart.model.Product;
import com.shoppingcart.services.CategoryServices;
import com.shoppingcart.services.ProductServices;
import com.shoppingcart.services.SupplierServices;

@Controller
public class addproductController {

	@Autowired
	ProductServices productServices;
	@Autowired
	SupplierServices supplierServices;
	@Autowired
	CategoryServices categoryServices;

	public addproductController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("add product controller");
	}

	@RequestMapping("/addproduct")
	public ModelAndView gotoProduct(@ModelAttribute("prod") Product prod,Model m) {
		List ls=productServices.getList();
		List ls1=supplierServices.getList();
		List ls2=categoryServices.getList();
		m.addAttribute("cList",ls2);
		m.addAttribute("sList",ls1);
		
		return new ModelAndView("addproduct","productList",ls);
	}
	

	@RequestMapping(value = "saveProduct", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("prod") Product prod , ModelMap m )	 
	 {
		 MultipartFile file = prod.getFile();
		 String fileName = "";
		 
		 String image="";
		 if(!file.isEmpty())
		 {
			  try
			  { 
				  System.out.println("inside try");
			fileName = file.getOriginalFilename();
			byte[] filesize=file.getBytes();
			BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("E:\\kavitoys\\src\\main\\webapp\\resources\\image\\k1.jpg" + fileName)));
			bout.write(filesize);
			bout.close();
			image="/resources/image/"+fileName;
			//r.setAttribute("img" ,image);
			m.addAttribute("img", image);
			System.out.println("upload sucess.."+image);
			
			  }
			  catch (IOException e) {
				  System.out.println("upload failed..");
				  e.printStackTrace();
			  }
		 }
		
		 /*productService.insertRow(prod,image);
		 List ls=productService.getList();
		 return new ModelAndView("productadd","listProd",ls);}
	
		*/
		 List ls1=supplierServices.getList();
			List ls2=categoryServices.getList();
			m.addAttribute("cList",ls2);
			m.addAttribute("sList",ls1);
			  productServices.insertRow(prod,image);
			  List productLt = productServices.getList();
				return new ModelAndView("addproduct","productList",productLt);
	 }
	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Product product) {
	// productService.insertRow(product);
	// return new ModelAndView("redirect:list");
	// }
  /*@RequestMapping(value="saveProduct",method= RequestMethod.POST)
  public ModelAndView getForm(@ModelAttribute("prod") Product prod) 
	{
		productService.insertRow(prod);
		List productLt = productService.getList();
		return new ModelAndView("addproduct","productList",productLt);
	}*/
	@RequestMapping("list")
	public ModelAndView getList() 
	{
		List productLt = productServices.getList();
		return new ModelAndView("list", "productList", productLt);
	}
                                                                                                                                                             
	@RequestMapping("deleteProduct")
	public ModelAndView deleteUser(@ModelAttribute("prod") Product prod,@RequestParam int id,Model m) 
	{
		productServices.deleteRow(id);
		List productLt = productServices.getList();
		List ls1=supplierServices.getList();
		List ls2=categoryServices.getList();
		m.addAttribute("cList",ls2);
		m.addAttribute("sList",ls1);
		return new ModelAndView("addproduct","productList",productLt);
	}

	@RequestMapping("editPageproduct")
	public ModelAndView editUser(@ModelAttribute("prod") Product prod, @RequestParam int id,Model m) 
	{
		prod = productServices.getRowById(id);
		List productLt = productServices.getList();
		List ls1=supplierServices.getList();
		List ls2=categoryServices.getList();
		m.addAttribute("cList",ls2);
		m.addAttribute("sList",ls1);
		return new ModelAndView("editPageproduct", "productList", productLt);
	}

	@RequestMapping("updateProduct")
	public ModelAndView updateUser(@ModelAttribute("prod") Product pid,Model m) {
		productServices.updateRow(pid);
		List ProductLt = productServices.getList();
		List ls1=supplierServices.getList();
		List ls2=categoryServices.getList();
		m.addAttribute("cList",ls2);
		m.addAttribute("sList",ls1);
		return new ModelAndView("redirect:addproduct");
	}
	
	@RequestMapping("/listproduct")
	public @ResponseBody ModelAndView viewList(ModelMap m) 
	{
		List<Product> lt = productServices.getList();
		Gson gson=new Gson();
		String st=gson.toJson(lt);
		m.addAttribute("gdata",st);
		System.out.println("gdata"+st);
		return new ModelAndView("listproduct");
	}

}
