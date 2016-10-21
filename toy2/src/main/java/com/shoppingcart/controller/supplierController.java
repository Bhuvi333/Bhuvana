package com.shoppingcart.controller;

import java.io.BufferedOutputStream;


import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;

import com.shoppingcart.model.Supplier;
import com.shoppingcart.services.SupplierServices;



@Controller
public class supplierController {

	@Autowired
	SupplierServices supplierService;

	public void SupplierController() {
		// super();
		// TODO Auto-generated constructor stub
		System.out.println("supplier controller");
	}
	@RequestMapping("/listsupplier")
	public @ResponseBody ModelAndView getlistsupplier(ModelMap m)
	{
		List<Supplier> list=supplierService.getList();
		Gson gson=new Gson();
		String st=gson.toJson(list);
		m.addAttribute("gdata",st);
		System.out.println("gdata"+st);
		 return new ModelAndView("listsupplier");
	}
	@RequestMapping("/addsupplier")
	public ModelAndView gotoSupplier(@ModelAttribute("sup") Supplier sup) {
		List supplierList = supplierService.getList();
		return new ModelAndView("addsupplier", "supplierList", supplierList);
		
	}
	/*@RequestMapping(value = "saveSupplier", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("sup") Supplier sup,ModelMap m) 
	{
		
		
			  MultipartFile file = sup.getFile(); 
			  String fileName = "";
			  
			  String image="";
			  if(!file.isEmpty())		 
			  {
				  try 
				  {
					  System.out.println("inside try");
				  fileName = file.getOriginalFilename();
				  byte[] filesize=file.getBytes();
				  BufferedOutputStream bout=new BufferedOutputStream(new FileOutputStream(new File("C:\\Users\\Selvam\\workspace\\aa\\src\\main\\webapp\\resources\\pho\\" + fileName)));
				   bout.write(filesize);
				   bout.close();
				   image="/resources/pho/"+fileName;
				   //r.setAttribute("img",image);
				   m.addAttribute("img",image);
				   System.out.println("upload success.."+image);
				  }
				   supch (IOException e) {
				   // TODO Auto-generated supch block
					  System.out.println("upload failed..");
				   e.printStackTrace();
				  }
				 
			  }
			  supplierService.insertRow(sup,image);
			  List supplierList = supplierService.getList();
				return new ModelAndView("Supplier", "SupplierList", supplierList);
					
	}

*/	@RequestMapping(value = "savesupplier", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("sup") Supplier sup) {
		supplierService.insertRow(sup);
		List supplierList = supplierService.getList();
		return new ModelAndView("addsupplier", "supplierList", supplierList);
	}

	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Supplier supplier) {
	// supplierService.insertRow(supplier);
	// return new ModelAndView("redirect:list");
	// }

	@RequestMapping("list2")
	public ModelAndView getList() {
		List supplierList = supplierService.getList();
		return new ModelAndView("list2", "supplierList", supplierList);
	}

	@RequestMapping("deletesupplier")
	public ModelAndView deleteUser(@ModelAttribute("sup")Supplier sup,@RequestParam int id) {
		supplierService.deleteRow(id);
		List supplierList = supplierService.getList();
		return new ModelAndView("addsupplier","SupplierList", supplierList);
	}
	
	@RequestMapping("editPagesupplier")
	public ModelAndView editUser(@ModelAttribute("sup") Supplier sup, @RequestParam int id) 
	{
		sup = supplierService.getRowById(id);
		List supplierList = supplierService.getList();
		return new ModelAndView("editPagesupplier", "SupplierObject", sup);
	}

	@RequestMapping("updateSupplier")
	public ModelAndView updateUser(@ModelAttribute("sup") Supplier sup) {
		supplierService.updateRow(sup);
		List supplierList = supplierService.getList();
		return new ModelAndView("redirect:addsupplier");
	}

}
