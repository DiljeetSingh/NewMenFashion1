package com.NewMenFashion.Controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.NewMenFashion.Service.CustomerService;
import com.NewMenFashion.model.Customer;

@Controller
public class CustomerController {
	@Autowired
	private CustomerService customerService;	
		
@RequestMapping("/register")
public String getRegistrationForm(Model model){
	model.addAttribute("customer",new Customer());
	return "register";
}
@RequestMapping("/registerCustomer")
public String registerCustomer(@Valid @ModelAttribute(value="customer") Customer customer
		,BindingResult result,Model model){
	if(result.hasErrors())
		return "register";
	try{
	customerService.saveCustomer(customer);
	}catch(Exception e){
		model.addAttribute("duplicateUsername","User Name already exists. Please enter different User Name");
		System.out.println("Exception is " + e.getMessage());
		return "register";
	}
	return "home";
}

}