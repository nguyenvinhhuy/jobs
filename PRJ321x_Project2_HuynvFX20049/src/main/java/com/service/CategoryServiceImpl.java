package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CategoryDAO;
import com.entity.Category;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Override
	@Transactional
	public List<Category> getTopCategories() {
		return categoryDAO.getTopCategories();
	}

	@Override
	@Transactional
	public List<Category> getAllCategories() {
		return categoryDAO.getAllCategories();
	}

	@Override
	public Category getCategoryById(int theId) {
		return categoryDAO.getCategoryById(theId);
	}
}
