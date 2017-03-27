package com.NewMenFashion.Service;

import com.NewMenFashion.model.Customer;

public interface CustomerService {
	void saveCustomer(Customer customer);
	public Customer getCustomerByUsername(String username);


}