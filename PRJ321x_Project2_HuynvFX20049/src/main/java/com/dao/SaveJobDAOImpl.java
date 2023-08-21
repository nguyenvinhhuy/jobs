package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.SaveJob;

@Repository
public class SaveJobDAOImpl implements SaveJobDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public void saveApplypost(SaveJob theSaveJob) {
		Session currentSession = sessionFactory.getCurrentSession();
		currentSession.saveOrUpdate(theSaveJob);
	}

	@Override
	@Transactional
	public SaveJob isSaveJob(int userId, int recruitmentId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SaveJob> theQuery = currentSession.createQuery("from SaveJob s where s.recruitment.id=:recruitmentID and s.users.id=:userId", SaveJob.class); 
		theQuery.setParameter("recruitmentID", recruitmentId);
		theQuery.setParameter("userId", userId);
		SaveJob saveJob = theQuery.uniqueResult();
		return saveJob;
	}

	@Override
	@Transactional
	public void deleteSaveJob(int userId, int recruitmentId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query theQuery = currentSession.createQuery("delete from SaveJob s where s.recruitment.id=:recruitmentID and s.users.id=:userId");
		theQuery.setParameter("recruitmentID", recruitmentId);
		theQuery.setParameter("userId", userId);
		theQuery.executeUpdate();
	}

	@Override
	@Transactional
	public List<SaveJob> getSaveJobsByUserId(int theId,int pageId, int total) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<SaveJob> theQuery = currentSession.createQuery("from SaveJob s where s.users.id=:id", SaveJob.class);
		theQuery.setParameter("id", theId);
		theQuery.setFirstResult(pageId);
		theQuery.setMaxResults(total);
		List<SaveJob> saveJobs = theQuery.getResultList();
		return saveJobs;
	}

	@Override
	@Transactional
	public long countSaveJob() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from SaveJob", Long.class);
		long total = theQuery.uniqueResult();
		return total;
	}

}
