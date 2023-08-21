package com.dao;

import com.entity.CV;

public interface CvDAO {
	public CV getCvById(int theId);
	
	public void saveCv(CV theCv);
	
	public void deleteCv(int theId);
}
