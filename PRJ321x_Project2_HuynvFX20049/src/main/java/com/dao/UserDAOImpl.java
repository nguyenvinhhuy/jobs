package com.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.entity.User;

@Repository
@EnableTransactionManagement
public class UserDAOImpl implements UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public User findByEmail(String email) {
		Session currentSession;
		try {
			 currentSession = sessionFactory.getCurrentSession();
		} catch (HibernateException e) {
			currentSession = sessionFactory.openSession();
		}
        Query<User> theQuery = currentSession.createQuery("from User u where u.email = :email", User.class);
        theQuery.setParameter("email", email);

        return theQuery.getSingleResult();
    }
	
	@Override
	@Transactional
	public List<User> getUsers() {
		// get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// create a query
		Query<User> theQuery = currentSession.createQuery("from User", User.class);
		// execute query and get result list
		List<User> users = theQuery.getResultList();
		// return the results
		return users;
	}

	@Override
	@Transactional
	public void saveUser(User theUser) {
		Session currentSession = sessionFactory.getCurrentSession();
		// save/update the customer
		currentSession.saveOrUpdate(theUser);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {
		// get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		// delete object with primary key
		Query theQuery = currentSession.createQuery("delete from User where id=:userId");
		theQuery.setParameter("userId", theId);
		theQuery.executeUpdate();
	}

	@Override
	@Transactional
	public User getUserById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		User theUser = currentSession.get(User.class, theId);
		return theUser;
	}

	@Override
	@Transactional
	public long countRoleUser() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Long> theQuery = currentSession.createQuery("select count(*) from User u where u.role.id = 2", Long.class);
		long total = theQuery.uniqueResult();
		return total;
	}

	@Override
	@Transactional
	public List<User> getUserByKey(String key) {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<User> theQuery = currentSession.createQuery("from User u where u.fullName like :key", User.class);
		theQuery.setParameter("key", "%" + key + "%");
		List<User> userByKey = theQuery.getResultList();
		return userByKey;
	}

}
