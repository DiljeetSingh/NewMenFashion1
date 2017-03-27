package com.NewMenFashion.dao;

import com.NewMenFashion.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
Customer getCustomerByUsername(String username);
}