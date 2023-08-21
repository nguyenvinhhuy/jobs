package com.service;

import com.entity.ResetToken;

public interface ResetTokenService {

	public String saveResetToken(int userId);
	
	public ResetToken getResetTokenByUserId(int theId);
}
