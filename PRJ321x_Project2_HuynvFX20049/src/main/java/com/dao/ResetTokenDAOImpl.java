package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.ResetToken;

@Repository
public class ResetTokenDAOImpl implements ResetTokenDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void saveResetToken(ResetToken theResetToken) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theResetToken);
	}
	
	@Override
	@Transactional
	public ResetToken getResetTokenByUserId(int theId){
		Session currentSession = sessionFactory.getCurrentSession();
		Query<ResetToken> theQuery = currentSession.createQuery("from ResetToken r where r.user.id=:id", ResetToken.class); 
		theQuery.setParameter("id", theId);
		return theQuery.getSingleResult();
	}
}
