package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.FollowCompanyDAO;
import com.dto.FollowCompanyDTO;
import com.entity.Company;
import com.entity.FollowCompany;
import com.entity.User;

@Service
public class FollowCompanyServiceImpl implements FollowCompanyService {
	@Autowired 
	private UserService userService;
	
	@Autowired 
	private CompanyService companyService;
	
	@Autowired 
	private FollowCompanyDAO followCompanyDAO;
	
	@Override
	@Transactional
	public String saveFollowCompany(FollowCompanyDTO dto) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUser = userService.findByEmail(currentLogedInMail);
		if (theUser == null) {
			return "ERROR: You must be login before apply job!";
		}
		Company company = companyService.getCompanyById(dto.getIdCompany());
		if (company == null) {
			return "ERROR: Company not found!";
		}
		FollowCompany isFollowCompany = followCompanyDAO.isFollowCompany(theUser.getId(), company.getId());
		if(isFollowCompany != null) {
			followCompanyDAO.deleteFollowCompany(theUser.getId(), company.getId());
			return "OK: UnFollow this company!";
		}
		FollowCompany followCompany = new FollowCompany();
		followCompany.setCompany(company);;
		followCompany.setUsers(theUser);
		
		followCompanyDAO.saveFollowCompany(followCompany);
		return "OK: Follow successfully!";
	}

	@Override
	@Transactional
	public List<FollowCompany> getFollowCompanysByUserId(int theId, int pageId, int total) {
		return followCompanyDAO.getFollowCompanysByUserId(theId, pageId, total);
	}

	@Override
	@Transactional
	public long countFollowCompany() {
		return followCompanyDAO.countFollowCompany();
	}

}
