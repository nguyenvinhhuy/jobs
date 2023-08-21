package com.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import org.hibernate.query.Query;

import com.entity.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	@Transactional
	public List<Category> getTopCategories() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Category> theQuery = currentSession.createQuery
				("select c from Category c left join Recruitment r on c.id = r.category group by c.id order by  count(r.id) desc", Category.class); 
		List<Category> Categories = theQuery.setFirstResult(0).setMaxResults(4).getResultList();
		return Categories;
	}

	@Override
	@Transactional
	public Category getCategoryById(int theId) {
		Session currentSession = sessionFactory.getCurrentSession();
		Category theCategory = currentSession.get(Category.class, theId);
		return theCategory;
	}

	@Override
	public List<Category> getAllCategories() {
		Session currentSession = sessionFactory.getCurrentSession();
		Query<Category> theQuery = currentSession.createQuery("from Category", Category.class); 
		List<Category> Categories = theQuery.getResultList();
		return Categories;
	}

}
