package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Company;

@Repository
public class CompanyDAOImpl implements CompanyDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public Company getCompanyById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Company> theQuery = currentSession.createQuery("from Company c where c.id = :id", Company.class);
		theQuery.setParameter("id", theId);
		return theQuery.uniqueResult();
	}
	
	@Override
	@Transactional
	public void saveCompany(Company theCompany) {
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the theCompany
		currentSession.saveOrUpdate(theCompany);
	}

	@Override
	@Transactional
	public List<Company> getTopCompanies() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Company> theQuery = currentSession.createQuery
				("select c from Company c left join Recruitment r on c.id = r.company \r\n"
						+ "group by c.id order by  count(r.id) desc", Company.class); 
		List<Company> Companies = theQuery.setFirstResult(0).setMaxResults(2).getResultList();
		return Companies;
	}

	@Override
	@Transactional
	public long countCompany() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from Company", Long.class);
		long total = theQuery.uniqueResult();
		return total;
	}
}
