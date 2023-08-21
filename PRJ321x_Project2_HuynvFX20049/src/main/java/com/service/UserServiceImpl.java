package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CvDAO;
import com.dao.RoleDAO;
import com.dao.UserDAO;
import com.dto.CreateUserDTO;
import com.dto.UpdateUserDTO;
import com.entity.CV;
import com.entity.Role;
import com.entity.User;

@Service
public class UserServiceImpl implements UserDetailsService, UserService {
	@Autowired
	private UserDAO userDAO;

	@Autowired
	private RoleDAO roleDAO;

	@Autowired
	private CvDAO cvDAO;

	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;

	@Override
	@Transactional
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		final com.entity.User users = userDAO.findByEmail(username);
		if (users == null) {
			throw new UsernameNotFoundException(username);
		}

		return org.springframework.security.core.userdetails.User.withUsername(users.getEmail())
				.password(users.getPassword()).authorities("ROLE_" + users.getRole().getRoleName()).build();
	}

	@Override
	@Transactional
	public User findByEmail(String email) {
		return userDAO.findByEmail(email);
	}

	@Override
	@Transactional
	public List<User> getUsers() {
		return userDAO.getUsers();
	}

	@Override
	@Transactional
	public void saveUser(CreateUserDTO dto) {
		// Converto dto to entity
		User user = new User();
		user.setFullName(dto.getFullName());
		user.setAddress(dto.getAddress());
		user.setEmail(dto.getEmail());
		user.setPassword(bCryptPasswordEncoder.encode(dto.getPassword()));
		user.setPhoneNumber(dto.getPhoneNumber());

		Role role = roleDAO.getRoleById(dto.getRole());
		user.setRole(role);

		userDAO.saveUser(user);
	}

	@Override
	@Transactional
	public void updateUser(UpdateUserDTO dto) {
		// Converto dto to entity
		User user = userDAO.getUserById(dto.getId());
		user.setAddress(dto.getAddress());
		user.setEmail(dto.getEmail());
		user.setFullName(dto.getFullName());
		user.setDescription(dto.getDescription());
		user.setPhoneNumber(dto.getPhoneNumber());
		userDAO.saveUser(user);
	}

	@Override
	@Transactional
	public void uploadAvt(String email, String image) {
		User user = userDAO.findByEmail(email);
		user.setImage(image);
		userDAO.saveUser(user);
	}

	@Override
	@Transactional
	public void uploadCv(String email, String fileName) {
		User user = userDAO.findByEmail(email);
		CV cv = cvDAO.getCvById(user.getCv().getId());
		cv.setFileName(fileName);
		cvDAO.saveCv(cv);
	}

	@Override
	@Transactional
	public void deleteUser(int theId) {
		userDAO.deleteUser(theId);
	}

	@Override
	@Transactional
	public User getUserById(int theId) {
		return userDAO.getUserById(theId);
	}

	@Override
	@Transactional
	public void comfirmUser(int theId) {
		User user = userDAO.getUserById(theId);
		user.setStatus(1);
		userDAO.saveUser(user);
	}

	@Override
	@Transactional
	public long countRoleUser() {
		return userDAO.countRoleUser();
	}

	@Override
	@Transactional
	public List<User> getUserByKey(String key) {
		return userDAO.getUserByKey(key);
	}
}
