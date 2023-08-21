package com.dao;

import java.util.List;

import com.entity.Recruitment;

public interface RecruitmentDAO {
	public List<Recruitment> getRecruitments();
	
	public List<Recruitment> getTopRecruitments();
	
	public void saveRecruitment(Recruitment theRecruitment);
	
	public void deleteRecruitment(int theId);
	
	public Recruitment getRecruitmentById(int theId);

	public List<Recruitment> getRecruitmentByCompanyId(int theId);
	
	public long countRecruitment();
	
	public long countRecruitmentByCategoryId(int theId);
	
	public List<Recruitment> getRecruitmentByCategoryId(int theId,int pageId, int total);
	
	public List<Recruitment> getRecruitmentByKey(String key);
	
	public List<Recruitment> getRecruitmentByCompanyKey(String key);
	
	public List<Recruitment> getRecruitmentByAddressKey(String key);

	public List<Recruitment> getRecruitmentsByPage(int pageId, int total);
}
