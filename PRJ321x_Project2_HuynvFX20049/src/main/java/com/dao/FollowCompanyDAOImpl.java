package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.FollowCompany;

@Repository
public class FollowCompanyDAOImpl implements FollowCompanyDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void saveFollowCompany(FollowCompany theFollowCompany) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theFollowCompany);
	}

	@Override
	@Transactional
	public FollowCompany isFollowCompany(int userId, int companyId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<FollowCompany> theQuery = currentSession.createQuery("from FollowCompany f where f.company.id=:companyId and f.users.id=:userId", FollowCompany.class); 
		theQuery.setParameter("companyId", companyId);
		theQuery.setParameter("userId", userId);
		FollowCompany followCompany = theQuery.uniqueResult();
		return followCompany;
	}

	@Override
	@Transactional
	public List<FollowCompany> getFollowCompanysByUserId(int theId, int pageId, int total) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<FollowCompany> theQuery = currentSession.createQuery("from FollowCompany f where f.users.id=:id", FollowCompany.class);
		theQuery.setParameter("id", theId);
		theQuery.setFirstResult(pageId);
		theQuery.setMaxResults(total);
		List<FollowCompany> followCompanys = theQuery.getResultList();
		return followCompanys;
	}

	@Override
	@Transactional
	public long countFollowCompany() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from FollowCompany", Long.class);
		long total = theQuery.uniqueResult();
		return total;
	}

	@Override
	@Transactional
	public void deleteFollowCompany(int userId, int companyId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from FollowCompany f where f.company.id=:companyId and f.users.id=:userId");
		theQuery.setParameter("companyId", companyId);
		theQuery.setParameter("userId", userId);
		theQuery.executeUpdate();
	}
}
