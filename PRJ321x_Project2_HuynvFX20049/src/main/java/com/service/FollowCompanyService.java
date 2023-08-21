package com.service;

import java.util.List;

import com.dto.FollowCompanyDTO;
import com.entity.FollowCompany;

public interface FollowCompanyService {
	public String saveFollowCompany(FollowCompanyDTO dto);
	
	public List<FollowCompany> getFollowCompanysByUserId(int theId, int pageId, int total);
	
	public long countFollowCompany();
}
