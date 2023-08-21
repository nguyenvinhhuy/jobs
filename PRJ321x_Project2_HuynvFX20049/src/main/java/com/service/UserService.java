package com.service;

import java.util.List;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.dto.CreateUserDTO;
import com.dto.UpdateUserDTO;
import com.entity.User;

public interface UserService {
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException;
	
	public User findByEmail(String email);
	
	public List<User> getUsers();
	
	public List<User> getUserByKey(String key);

	public void saveUser(CreateUserDTO dto);

	public void updateUser(UpdateUserDTO dto);
	
	public void deleteUser(int theId);

	public User getUserById(int theId);

	public void uploadAvt(String email, String image);
	
	public void uploadCv(String email, String fileName);
	
	public void comfirmUser(int theId);
	
	public long countRoleUser();
}
