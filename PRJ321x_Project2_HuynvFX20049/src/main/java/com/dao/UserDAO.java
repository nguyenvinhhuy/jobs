package com.dao;

import java.util.List;

import com.entity.User;

public interface UserDAO {
	public User findByEmail(String email);
	
	public List<User> getUsers();
	
	public List<User> getUserByKey(String key);

	public void saveUser(User theUser);

	public void deleteUser(int theId);

	public User getUserById(int theId);
	
	public long countRoleUser();
}
