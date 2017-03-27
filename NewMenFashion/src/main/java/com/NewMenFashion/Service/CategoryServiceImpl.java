package com.NewMenFashion.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.NewMenFashion.dao.CategoryDao;
import com.NewMenFashion.model.Category;

@Service
public class CategoryServiceImpl implements CategoryService{
	@Autowired
private CategoryDao categoryDao;

	public List<Category> getCategories() {
		return categoryDao.getCategories();
	}
	

}