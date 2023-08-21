package com.service;

import java.util.List;

import com.dto.SaveJobDTO;
import com.entity.SaveJob;

public interface SaveJobService {
	public String saveJob(SaveJobDTO dto);
	
	public List<SaveJob> getSaveJobsByUserId(int theId,int pageId, int total);
	
	public long countSaveJob();
}
