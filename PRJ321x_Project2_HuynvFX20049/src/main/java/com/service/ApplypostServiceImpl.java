package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.ApplypostDAO;
import com.dto.ApplyJobWithCvDto;
import com.dto.CreateApplypostDTO;
import com.entity.Applypost;
import com.entity.CV;
import com.entity.Recruitment;
import com.entity.User;

@Service
public class ApplypostServiceImpl implements ApplypostService {
	@Autowired
	private ApplypostDAO applypostDAO;

	@Autowired
	private UserService userService;

	@Autowired
	private RecruitmentService recruitmentService;

	@Override
	@Transactional
	public List<Applypost> getApplypostByRecruitmentId(int theId) {
		return applypostDAO.getApplypostByRecruitmentId(theId);
	}

	@Override
	@Transactional
	public String saveApplypost(CreateApplypostDTO dto) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUser = userService.findByEmail(currentLogedInMail);
		if (theUser == null) {
			return "ERROR: You must be login before apply job!";
		}
		Recruitment recruitment = recruitmentService.getRecruitmentById(dto.getIdRe());
		if (recruitment == null) {
			return "ERROR: Something went wrong! Maybe recruitment has been removed!";
		}
		// Tìm applyPost bằng userId và recId. Nếu tìm thấy thì báo lỗi đã apply, còn k
		// tìm thấy thì lưu applyPost
		Applypost isApply = applypostDAO.isApplypost(theUser.getId(), recruitment.getId());
		if (isApply != null) {
			return "ERROR: You have applied!";
		}
		Applypost applypost = new Applypost();
		applypost.setUsers(theUser);
		applypost.setRecruitment(recruitment);
		applypost.setNameCv(dto.getNameCv());
		applypost.setText(dto.getText());

		applypostDAO.saveApplypost(applypost);
		return "OK: Apply successfully!";
	}

	@Override
	@Transactional
	public String saveApplypost1(ApplyJobWithCvDto dto) {
		// Dùng Spring Security để lấy User
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUser = userService.findByEmail(currentLogedInMail);
		if (theUser == null) {
			return "ERROR: You must be login before apply job!";
		}

		// Có được User rồi thì lấy Cv của nó
		CV cv = theUser.getCv();
		if (cv == null) {
			return "ERROR: You have no CV!";
		}

		// Xong rồi, h lấy cái Recruiment lên
		Recruitment recruitment = recruitmentService.getRecruitmentById(dto.getIdRe());
		if (recruitment == null) {
			return "ERROR: Something went wrong! Maybe recruitment has been removed!";
		}

		// Tìm applyPost bằng userId và recId. Nếu tìm thấy thì báo lỗi đã apply, còn k
		// tìm thấy thì lưu applyPost
		Applypost isApply = applypostDAO.isApplypost(theUser.getId(), recruitment.getId());
		if (isApply != null) {
			return "ERROR: You have applied!";
		}
		// Đầy đủ thông tin rồi, h lưu ApplyPost
		Applypost applypost = new Applypost();
		applypost.setUsers(theUser);
		applypost.setRecruitment(recruitment);
		applypost.setNameCv(cv.getFileName());
		applypost.setText(dto.getText());

		// Save
		applypostDAO.saveApplypost(applypost);
		return "OK: Apply successfully!";

	}

	@Override
	@Transactional
	public List<Applypost> getApplypostByCompanyId(int theId, int pageId, int total) {
		return applypostDAO.getApplypostByCompanyId(theId,pageId,total);
	}

	@Override
	@Transactional
	public List<Applypost> getApplypostsByUserId(int theId, int pageId, int total) {
		return applypostDAO.getApplypostsByUserId(theId, pageId, total);
	}

	@Override
	@Transactional
	public long countApplypostByUserId(int theId) {
		return applypostDAO.countApplypostByUserId(theId);
	}

	@Override
	@Transactional
	public void deleteApplypost(int userId, int recruitmentId) {
		applypostDAO.deleteApplypost(userId, recruitmentId);
	}

	@Override
	@Transactional
	public long countApplypostByCompanyId(int theId) {
		return applypostDAO.countApplypostByCompanyId(theId);
	}

	@Override
	@Transactional
	public Applypost getApplypostById(int theId) {
		return applypostDAO.getApplypostById(theId);
	}

	@Override
	@Transactional
	public void approveApplyJob(int theId) {
		Applypost applypost = applypostDAO.getApplypostById(theId);
		applypost.setStatus(1);
			
		applypostDAO.saveApplypost(applypost);
	}
}
