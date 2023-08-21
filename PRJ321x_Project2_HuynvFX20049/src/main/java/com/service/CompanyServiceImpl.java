package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CompanyDAO;
import com.dto.UpdateCompanyDTO;
import com.entity.Company;

@Service
public class CompanyServiceImpl implements CompanyService {
	@Autowired
	private CompanyDAO companyDAO;
	
	@Override
	@Transactional
	public void uploadLogo(int theId, String logo) {	
		Company company = companyDAO.getCompanyById(theId);	
		company.setLogo(logo);
		companyDAO.saveCompany(company);
	}
	
	@Override
	@Transactional
	public void updateCompany(UpdateCompanyDTO dto) {
		//Converto dto to entity
		Company company = companyDAO.getCompanyById(dto.getId());	
		company.setAddress(dto.getAddress());
		company.setEmail(dto.getEmail());
		company.setCompanyName(dto.getCompanyName());
		company.setDescription(dto.getDescription());
		company.setPhoneNumber(dto.getPhoneNumber());
		companyDAO.saveCompany(company);
	}

	@Override
	@Transactional
	public Company getCompanyById(int theId) {
		return companyDAO.getCompanyById(theId);
	}

	@Override
	@Transactional
	public List<Company> getTopCompanies() {
		return companyDAO.getTopCompanies();
	}

	@Override
	@Transactional
	public long countCompany() {
		return companyDAO.countCompany();
	}
}
