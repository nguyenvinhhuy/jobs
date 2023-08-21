package com.dao;

import com.entity.ResetToken;

public interface ResetTokenDAO {

	public void saveResetToken(ResetToken theResetToken);

	public ResetToken getResetTokenByUserId(int theId);

}
