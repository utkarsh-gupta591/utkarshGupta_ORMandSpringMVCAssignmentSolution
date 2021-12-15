package com.greatlearning.crm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.greatlearning.crm.entity.Customer;
import com.greatlearning.crm.service.CustomerService;

@Controller
@RequestMapping("/customers")
public class CustomerController {

	@Autowired
	private CustomerService service;

	@GetMapping("/list")
	public String getCustomers(Model model) {
		model.addAttribute("customers", service.findAll());
		return "customer-list";
	}

	@GetMapping("/add")
	public String addCustomer(Model model) {

		// create a customer object
		Customer customer = new Customer();

		// add customer object to the model
		model.addAttribute("customer", customer);
		return "customer-form";
	}

	@PostMapping("/save")
	public String save(Customer customer) {
		this.service.save(customer);
		return "redirect:list";
	}

	@GetMapping("/update")
	public String updateCustomer(@RequestParam int customerId, Model model) {
		Customer customer = this.service.findById(customerId);
		model.addAttribute("customer", customer);
		return "customer-form";
	}

	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam int customerId) {
		this.service.deleteById(customerId);
		return "redirect:list";
	}

}
