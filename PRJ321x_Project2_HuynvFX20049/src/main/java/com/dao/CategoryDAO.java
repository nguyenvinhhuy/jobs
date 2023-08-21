package com.dao;

import java.util.List;

import com.entity.Category;

public interface CategoryDAO {
	public List<Category> getTopCategories();
	
	public List<Category> getAllCategories();

	public Category getCategoryById(int theId);
}
