package com.NewMenFashion.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewMenFashion.dao.CustomerDao;
import com.NewMenFashion.model.Customer;

@Service
public class CustomerServiceImpl implements CustomerService{
	@Autowired
private CustomerDao customerDao;
	public void saveCustomer(Customer customer) {
		customerDao.saveCustomer(customer);
	}

	public Customer getCustomerByUsername(String username){
		return customerDao.getCustomerByUsername(username);
	}
}