package com.dao;

import java.util.List;

import com.entity.Company;

public interface CompanyDAO {
	public List<Company> getTopCompanies();
	
	public Company getCompanyById(int theId);

	public void saveCompany(Company theCompany);
	
	public long countCompany();
}
