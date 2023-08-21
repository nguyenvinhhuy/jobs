package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Applypost;

@Repository
public class ApplypostDAOImpl implements ApplypostDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Applypost> getApplypostByRecruitmentId(int theId){
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Applypost> theQuery = currentSession.createQuery("from Applypost a where a.recruitment.id=:recruitmentID", Applypost.class); 
		theQuery.setParameter("recruitmentID", theId);
		List<Applypost> applyposts = theQuery.getResultList();
		return applyposts;
	}

	@Override
	@Transactional
	public void saveApplypost(Applypost theApplypost) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theApplypost);
	}
	
	@Override
	@Transactional
	public Applypost isApplypost(int userId,int recruitmentId){
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Applypost> theQuery = currentSession.createQuery("from Applypost a where a.recruitment.id=:recruitmentID and a.users.id=:userId", Applypost.class); 
		theQuery.setParameter("recruitmentID", recruitmentId);
		theQuery.setParameter("userId", userId);
		Applypost applypost = theQuery.uniqueResult();
		 return applypost;
	}

	@Override
	@Transactional
	public List<Applypost> getApplypostByCompanyId(int theId, int pageId, int total) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Applypost> theQuery = currentSession.createQuery("select a from Applypost a left join Recruitment r on a.recruitment.id = r.id where r.company.id=:companyID", Applypost.class); 
		theQuery.setParameter("companyID", theId);
		theQuery.setFirstResult(pageId);
		theQuery.setMaxResults(total);
		List<Applypost> applyposts = theQuery.getResultList();
		return applyposts;
	}

	@Override
	@Transactional
	public List<Applypost> getApplypostsByUserId(int theId, int pageId, int total) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Applypost> theQuery = currentSession.createQuery("from Applypost a where a.users.id=:id", Applypost.class);
		theQuery.setParameter("id", theId);
		theQuery.setFirstResult(pageId);
		theQuery.setMaxResults(total);
		List<Applypost> applyposts = theQuery.getResultList();
		return applyposts;
	}

	@Override
	@Transactional
	public long countApplypostByUserId(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from Applypost a where a.users.id=:id", Long.class);
		theQuery.setParameter("id", theId);
		long total = theQuery.uniqueResult();
		return total;
	}

	@Override
	@Transactional
	public void deleteApplypost(int userId, int recruitmentId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Applypost a where a.recruitment.id=:recruitmentID and a.users.id=:userId");
		theQuery.setParameter("recruitmentID", recruitmentId);
		theQuery.setParameter("userId", userId);
		theQuery.executeUpdate();
	}

	@Override
	@Transactional
	public long countApplypostByCompanyId(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from Applypost a where a.recruitment.company.id=:id", Long.class);
		theQuery.setParameter("id", theId);
		long total = theQuery.uniqueResult();
		return total;
	}

	@Override
	@Transactional
	public Applypost getApplypostById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Applypost theApplypost = currentSession.get(Applypost.class, theId);
		return theApplypost;
	}
}
