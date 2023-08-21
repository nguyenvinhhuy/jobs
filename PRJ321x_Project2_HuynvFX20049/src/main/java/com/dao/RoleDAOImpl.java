package com.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.entity.Role;

@Repository
public class RoleDAOImpl implements RoleDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public Role getRoleById(Integer id) {
		 Session currentSession = sessionFactory.getCurrentSession();
		// create a query
		Query<Role> theQuery = currentSession.createQuery("from Role where id = :id", Role.class);
		theQuery.setParameter("id", id);
		// execute query and get result list
		return theQuery.getSingleResult();
	}

}
