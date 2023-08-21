package com.dao;

import java.util.List;

import com.entity.SaveJob;

public interface SaveJobDAO {
	public void saveApplypost(SaveJob theSaveJob);

	public SaveJob isSaveJob(int userId, int recruitmentId);
	
	public void deleteSaveJob(int userId, int recruitmentId);
	
	public List<SaveJob> getSaveJobsByUserId(int theId,int pageId, int total);
	
	public long countSaveJob();
}
