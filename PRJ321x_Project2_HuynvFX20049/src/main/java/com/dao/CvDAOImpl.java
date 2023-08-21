package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.CV;

@Repository
public class CvDAOImpl implements CvDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public CV getCvById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		// create a query
		Query<CV> theQuery = currentSession.createQuery("from CV where id = :id", CV.class);
		theQuery.setParameter("id", theId);
		// execute query and get result list
		return theQuery.getSingleResult();
	}
	
	@Override
	@Transactional
	public void saveCv(CV theCv) {
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the cv
		currentSession.saveOrUpdate(theCv);
	}

	@Override
	public void deleteCv(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from CV where id=:cvId");
		theQuery.setParameter("cvId", theId);
		theQuery.executeUpdate();
	}

}
