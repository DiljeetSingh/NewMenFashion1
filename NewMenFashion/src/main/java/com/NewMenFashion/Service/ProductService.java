package com.NewMenFashion.Service;

import java.util.List;

import com.NewMenFashion.model.Product;

public interface ProductService{
Product saveProduct(Product product);
List<Product> getAllProducts();
Product getProductById(int id);
void deleteProduct(int id);
void updateProduct(Product product);

}