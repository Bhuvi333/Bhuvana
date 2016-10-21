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

import com.shoppingcart.model.Category;
import com.shoppingcart.services.CategoryServices;



@Controller
public class addcategoryController {

	@Autowired
	CategoryServices categoryServices;

	public void CategoryController() {
		// cater();
		// TODO Auto-generated constructor stub
		System.out.println("category controller");
	}
	@RequestMapping("/listcategory")
	public @ResponseBody ModelAndView getlistcategory(ModelMap m)
	{
		List<Category> list=categoryServices.getList();
		Gson gson=new Gson();
		String st=gson.toJson(list);
		m.addAttribute("gdata",st);
		System.out.println("gdata"+st);
		 return new ModelAndView("listcategory");
	}
	@RequestMapping("/addcategory")
	public ModelAndView gotoCategory(@ModelAttribute("cat") Category cat) {
		List categoryList = categoryServices.getList();
		return new ModelAndView("addcategory", "categoryList", categoryList);
		
	}
	/*@RequestMapping(value = "saveCategory", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("cat") Category cat,ModelMap m) 
	{
		
		
			  MultipartFile file = cat.getFile(); 
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
				   catch (IOException e) {
				   // TODO Auto-generated catch block
					  System.out.println("upload failed..");
				   e.printStackTrace();
				  }
				 
			  }
			  categoryService.insertRow(cat,image);
			  List categoryList = categoryService.getList();
				return new ModelAndView("Category", "CategoryList", categoryList);
					
	}

*/	@RequestMapping(value = "savecategory", method = RequestMethod.POST)
	public ModelAndView getForm(@ModelAttribute("cat") Category cat) {
		categoryServices.insertRow(cat);
		List categoryList = categoryServices.getList();
		return new ModelAndView("addcategory", "categoryList", categoryList);
	}

	// @RequestMapping("register")
	// public ModelAndView registerUser(@ModelAttribute Category category) {
	// categoryService.insertRow(category);
	// return new ModelAndView("redirect:list");
	// }

	@RequestMapping("list3")
	public ModelAndView getList() {
		List categoryList = categoryServices.getList();
		return new ModelAndView("list3", "categoryList", categoryList);
	}

	@RequestMapping("deletecategory")
	public ModelAndView deleteUser(@ModelAttribute("cat")Category cat,@RequestParam int id) {
		categoryServices.deleteRow(id);
		List categoryList = categoryServices.getList();
		return new ModelAndView("addcategory","CategoryList", categoryList);
	}
	
	@RequestMapping("editPagecategory")
	public ModelAndView editUser(@ModelAttribute("cat") Category cat, @RequestParam int id) 
	{
		cat = categoryServices.getRowById(id);
		List categoryList = categoryServices.getList();
		return new ModelAndView("editPagecategory", "CategoryObject", cat);
	}

	@RequestMapping("updateCategory")
	public ModelAndView updateUser(@ModelAttribute("cat") Category cat) {
		categoryServices.updateRow(cat);
		List categoryList = categoryServices.getList();
		return new ModelAndView("redirect:addcategory");
	}

}
