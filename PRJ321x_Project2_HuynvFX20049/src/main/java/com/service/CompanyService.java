package com.service;

import java.util.List;

import com.dto.UpdateCompanyDTO;
import com.entity.Company;

public interface CompanyService {
	public List<Company> getTopCompanies();
	
	public void uploadLogo(int theId, String logo);

	public void updateCompany(UpdateCompanyDTO dto);

	public Company getCompanyById(int theId);
	
	public long countCompany();
}
