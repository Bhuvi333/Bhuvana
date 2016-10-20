package com.shoppingcart.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.shoppingcart.model.Category;
import com.shoppingcart.model.Product;
import com.shoppingcart.services.CategoryServices;
import com.shoppingcart.services.ProductServices;



@Controller
public class ToysController {

	public ToysController() {
		System.out.println("inside toys controller....");
	}
	@Autowired
	ProductServices productServices;
	
	@Autowired
	CategoryServices categoryServices;

	@RequestMapping("/")
	public String homePage(Model m) {
		List catLt=categoryServices.getList();
		m.addAttribute("clist",catLt);
		return "index";
	}
	@RequestMapping("/ home")
	public String home(Model m){
		List catLt=categoryServices.getList();
		m.addAttribute("clist",catLt);
		return "index";
	}
	

	@RequestMapping("/index")
	public String gotoHome(HttpServletRequest req,Model m) {
		List catLt=categoryServices.getList();
		m.addAttribute("clist",catLt);
		return "index";
	}

	@RequestMapping(value = "/checkLogin", method = RequestMethod.POST)
	public String validateLogin(HttpServletRequest req) {
		String u = req.getParameter("username");
		String pass = req.getParameter("passwrd");
		if ((u.equals("bhuvi")) && (pass.equals("ishiya"))) {
			return "admin";
		} else {

			return "signup";
		}

	}

	
	@RequestMapping("/adminlogin")
	public String gotoabtus() {
		return "adminlogin";
	}
	
	
	@RequestMapping("/login")
	public String gotologin(@RequestParam(value="error",required = false) String error, @RequestParam(value="logout",required = false) String logout, Model model) 
	{
		
		if(error!=null)
		{
			model.addAttribute("error","Invalid credentials to enter");
		}
		if(logout!=null)
		{
			model.addAttribute("msg", "You logged out successfully...");
		}
		return  "login";
  	}

	@RequestMapping("/baby")
	public ModelAndView gotobaby(@ModelAttribute("cat")Category cat,@RequestParam int id,Model m) {
		List<Product> prodLt=productServices.getList();
		List<Product> product2display=new ArrayList<Product>();
		for(Product p:prodLt)
		{
			if(p.getId()==id)
			product2display.add(p);
		}
		return new ModelAndView("baby","Products",product2display);
	}


	@RequestMapping("/signup")
	public String gotoSignUp() {
		return "signup";
	}

	@RequestMapping("/edu")
	public ModelAndView gotoProduct(@ModelAttribute ("prod")Product prod,Model m)
	{
		List prodLt=productServices.getList();
		return new ModelAndView("edu","Products",prodLt);
	}
	/*public String gotoSign() {
		return "edu";
	}*/
	@RequestMapping("/toysgallery")
	public String gotoSig() {
		return "toysgallery";
	}
	@RequestMapping("/aboutus")
	public String gotoaboutus() {
		return "aboutus";
	}
}