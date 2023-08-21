package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.SaveJobDAO;
import com.dto.SaveJobDTO;
import com.entity.Recruitment;
import com.entity.SaveJob;
import com.entity.User;

@Service
public class SaveJobServiceImpl implements SaveJobService {
	@Autowired
	private SaveJobDAO saveJobDAO;
	
	@Autowired 
	private UserService userService;
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@Override
	@Transactional
	public String saveJob(SaveJobDTO dto) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUser = userService.findByEmail(currentLogedInMail);
		if (theUser == null) {
			return "ERROR: You must be login before apply job!";
		}
		Recruitment recruitment = recruitmentService.getRecruitmentById(dto.getIdRe());
		if (recruitment == null) {
			return "ERROR: Something went wrong! Maybe recruitment has been removed!";
		}
		SaveJob isSaveJob = saveJobDAO.isSaveJob(theUser.getId(), recruitment.getId());
		if(isSaveJob != null) {
			saveJobDAO.deleteSaveJob(theUser.getId(), recruitment.getId());
			return "OK: Unsaved successfully !";
		}
		SaveJob saveJob = new SaveJob();
		saveJob.setRecruitment(recruitment);
		saveJob.setUsers(theUser);
		
		saveJobDAO.saveApplypost(saveJob);
		return "OK: Save successfully!";
	}

	@Override
	@Transactional
	public List<SaveJob> getSaveJobsByUserId(int theId,int pageId, int total) {
		return saveJobDAO.getSaveJobsByUserId(theId, pageId, total);
	}

	@Override
	public long countSaveJob() {
		return saveJobDAO.countSaveJob();
	}

}
