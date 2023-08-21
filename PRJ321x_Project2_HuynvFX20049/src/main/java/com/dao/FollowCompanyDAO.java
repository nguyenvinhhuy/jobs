package com.dao;

import java.util.List;

import com.entity.FollowCompany;

public interface FollowCompanyDAO {
	public void saveFollowCompany(FollowCompany theFollowCompany);

	public FollowCompany isFollowCompany(int userId, int companyId);
	
	public void deleteFollowCompany(int userId, int companyId);
	
	public List<FollowCompany> getFollowCompanysByUserId(int theId,int pageId, int total);
	
	public long countFollowCompany();
}
