package com.dao;

import java.util.List;

import com.entity.Applypost;

public interface ApplypostDAO {
	public List<Applypost> getApplypostByRecruitmentId(int theId);
	
	public Applypost getApplypostById(int theId);
	
	public List<Applypost> getApplypostByCompanyId(int theId, int pageId, int total);
	
	public List<Applypost> getApplypostsByUserId(int theId,int pageId, int total);
	
	public long countApplypostByUserId(int theId);
	
	public long countApplypostByCompanyId(int theId);
	
	public void saveApplypost(Applypost theApplypost);

	public Applypost isApplypost(int userId, int recruitmentId);
	
	public void deleteApplypost(int userId, int recruitmentId);
}
