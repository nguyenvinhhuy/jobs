package com.service;

import java.util.List;

import com.dto.CreateRecruitmentDTO;
import com.dto.UpdateRecruitmentDTO;
import com.entity.Recruitment;

public interface RecruitmentService {
	public List<Recruitment> getRecruitments();
	
	public List<Recruitment> getTopRecruitments();
	
	public List<Recruitment> getRecruitmentByCompanyId(int theId);
	
	public List<Recruitment> getRecruitmentByCategoryId(int theId,int pageId, int total);
	
	public List<Recruitment> getRecruitmentByKey(String key);
	
	public List<Recruitment> getRecruitmentByCompanyKey(String key);
	
	public List<Recruitment> getRecruitmentByAddressKey(String key);
	
	public String saveRecruitment(CreateRecruitmentDTO dto);
	
	public void deleteRecruitment(int theId);
	
	public Recruitment getRecruitmentById(int theId);
	
	public void updateRecruitment(UpdateRecruitmentDTO dto);
	
	public long countRecruitment();
	
	public long countRecruitmentByCategoryId(int theId);
	
	public List<Recruitment> getRecruitmentsByPage(int pageId, int total);
	
}
