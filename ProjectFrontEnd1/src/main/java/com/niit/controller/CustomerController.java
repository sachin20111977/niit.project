package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.Dao.CustomerDao;
import com.niit.models.Customer;


@Controller
public class CustomerController {
	@Autowired
  private CustomerDao customerDao;
	
	
	@RequestMapping(value="/all/getregistrationform")
	public String getRegistrationForm(Model model){
	Customer customer	=new Customer();
	model.addAttribute("customer",customer);	
	return "registrationform";	
	}
	@RequestMapping(value="/all/registercustomer")
	public String registerCustomer(@Valid @ModelAttribute Customer customer,BindingResult result,Model model){
		String email=customer.getUser().getEmail();
		if(result.hasErrors())
		{
			//Customer customer=new Customer();
			model.addAttribute("customer",customer);
			return "registrationform";
		}
		if(!customerDao.isEmailUnique(email)){//Email is duplicate, Not Unique
			model.addAttribute("errorMessage","Email already exists.. please choose different email id");
			return "registrationform";
		}
		customerDao.registerCustomer(customer);
		
		return "login";
	}
	
	
	}
