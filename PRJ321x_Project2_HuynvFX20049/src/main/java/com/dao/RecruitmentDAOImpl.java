package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Recruitment;

@Repository
public class RecruitmentDAOImpl implements RecruitmentDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Recruitment> getRecruitments() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment", Recruitment.class);
		List<Recruitment> recruitments = theQuery.getResultList();
		return recruitments;
	}
	
	@Override
	@Transactional
	public List<Recruitment> getRecruitmentsByPage(int pageId, int total) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment", Recruitment.class);
		theQuery.setFirstResult(pageId);
		theQuery.setMaxResults(total);
		List<Recruitment> recruitments = theQuery.getResultList();
		return recruitments;
	}

	@Override
	@Transactional
	public void saveRecruitment(Recruitment theRecruitment) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theRecruitment);	
	}

	@Override
	@Transactional
	public void deleteRecruitment(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from Recruitment where id=:recruitmentId");
		theQuery.setParameter("recruitmentId", theId);
		theQuery.executeUpdate();
	}

	@Override
	@Transactional
	public Recruitment getRecruitmentById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Recruitment theRecruitment = currentSession.get(Recruitment.class, theId);
		return theRecruitment;
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByCompanyId(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment r where r.company.id=:companyID", Recruitment.class);
		theQuery.setParameter("companyID", theId);
		List<Recruitment> recruitmentByCompanyIds = theQuery.getResultList();
		return recruitmentByCompanyIds;
	}
	
	@Override
	@Transactional
	public List<Recruitment> getTopRecruitments() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment r order by r.salary desc", Recruitment.class); 
		List<Recruitment> Recruitments = theQuery.setFirstResult(0).setMaxResults(2).getResultList();
		return Recruitments;
	}

	@Override
	@Transactional
	public long countRecruitment() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from Recruitment", Long.class);
		long total = theQuery.uniqueResult();
		return total;
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByCategoryId(int theId,int pageId, int total) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment r where r.category.id=:categoryID", Recruitment.class);
		theQuery.setParameter("categoryID", theId);
		theQuery.setFirstResult(pageId);
		theQuery.setMaxResults(total);
		List<Recruitment> recruitmentByCategoryIds = theQuery.getResultList();
		return recruitmentByCategoryIds;
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByKey(String key) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment r where r.title like :key", Recruitment.class);
		theQuery.setParameter("key", "%" + key + "%");
		List<Recruitment> recruitmentByKey = theQuery.getResultList();
		return recruitmentByKey;
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByCompanyKey(String key) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment r where r.company.companyName like :key", Recruitment.class);
		theQuery.setParameter("key", "%" + key + "%");
		List<Recruitment> recruitmentByCompanyKey = theQuery.getResultList();
		return recruitmentByCompanyKey;
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByAddressKey(String key) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Recruitment> theQuery = currentSession.createQuery("from Recruitment r where r.address like :key", Recruitment.class);
		theQuery.setParameter("key", "%" + key + "%");
		List<Recruitment> recruitmentByAddressKey = theQuery.getResultList();
		return recruitmentByAddressKey;
	}

	@Override
	@Transactional
	public long countRecruitmentByCategoryId(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from Recruitment r where r.category.id=:id", Long.class);
		theQuery.setParameter("id", theId);
		long total = theQuery.uniqueResult();
		return total;
	}
}
