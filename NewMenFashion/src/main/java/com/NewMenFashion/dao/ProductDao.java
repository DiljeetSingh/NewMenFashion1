package com.NewMenFashion.dao;

import java.util.List;

import com.NewMenFashion.model.Product;

public interface ProductDao {
	Product saveProduct(Product product);
	List<Product> getAllProducts();
	Product getProductById(int id);
	void deleteProduct(int id);
	void updateProduct(Product product);

}