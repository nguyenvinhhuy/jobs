package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ResetTokenDAO;
import com.dao.UserDAO;
import com.entity.ResetToken;
import com.entity.User;

@Service
public class ResetTokenServiceImpl implements ResetTokenService {
	@Autowired
	private ResetTokenDAO resetTokenDAO;
	
	@Autowired
	private UserDAO userDAO;
	
	@Override
	@Transactional
	public String saveResetToken(int userId) {
		ResetToken resetToken = new ResetToken();
		User user = userDAO.getUserById(userId);
		resetToken.setUser(user);
		resetTokenDAO.saveResetToken(resetToken);
		return resetToken.getCode();
	}

	@Override
	@Transactional
	public ResetToken getResetTokenByUserId(int theId) {
		return resetTokenDAO.getResetTokenByUserId(theId);
	}
}
