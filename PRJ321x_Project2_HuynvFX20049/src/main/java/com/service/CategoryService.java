package com.service;

import java.util.List;

import com.entity.Category;

public interface CategoryService {
	public List<Category> getTopCategories();
	
	public List<Category> getAllCategories();
	
	public Category getCategoryById(int theId);
}
