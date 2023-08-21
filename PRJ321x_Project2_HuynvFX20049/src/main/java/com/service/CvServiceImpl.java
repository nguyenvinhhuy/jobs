package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CvDAO;

@Service
public class CvServiceImpl implements CvService{
	@Autowired
	private CvDAO cvDAO;
	
	@Override
	@Transactional
	public void deleteCv(int theId) {
		cvDAO.deleteCv(theId);	
	}
}
