package com.service;

import java.util.List;

import com.dto.ApplyJobWithCvDto;
import com.dto.CreateApplypostDTO;
import com.entity.Applypost;

public interface ApplypostService {
	public List<Applypost> getApplypostByRecruitmentId(int theId);
	
	public List<Applypost> getApplypostByCompanyId(int theId, int pageId, int total);
	
	public List<Applypost> getApplypostsByUserId(int theId,int pageId, int total);
	
	public Applypost getApplypostById(int theId);
	
	public long countApplypostByUserId(int theId);
	
	public long countApplypostByCompanyId(int theId);
	
	public String saveApplypost(CreateApplypostDTO dto);

	public String saveApplypost1(ApplyJobWithCvDto dto);
	
	public void deleteApplypost(int userId, int recruitmentId);
	
	public void approveApplyJob(int theId);
}
