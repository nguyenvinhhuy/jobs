package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.dao.CategoryDAO;
import com.dao.CompanyDAO;
import com.dao.RecruitmentDAO;
import com.dto.CreateRecruitmentDTO;
import com.dto.UpdateRecruitmentDTO;
import com.entity.Category;
import com.entity.Company;
import com.entity.Recruitment;

@Service
public class RecruitmentServiceImpl implements RecruitmentService {
	@Autowired
	private RecruitmentDAO recruitmentDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private CompanyDAO companyDAO;
	
	@Override
	@Transactional
	public List<Recruitment> getRecruitments() {
		return recruitmentDAO.getRecruitments();
	}

	@Override
	@Transactional
	public String saveRecruitment(CreateRecruitmentDTO dto) {
		Recruitment recruitment = new Recruitment();
		recruitment.setTitle(dto.getTitle());
		recruitment.setAddress(dto.getAddress());
		recruitment.setDescription(dto.getDescription());
		recruitment.setExperience(dto.getExperience());
		recruitment.setQuantity(dto.getQuantity());
		recruitment.setSalary(dto.getSalary());
		recruitment.setType(dto.getType());
		recruitment.setDeadline(dto.getDeadline());
		recruitment.setRank(dto.getRank());
		
		Company company = companyDAO.getCompanyById(dto.getCompany());
		if (company == null) {
			return "ERROR: Không tìm thấy công ty của bạn!";
		}
		recruitment.setCompany(company);
		
		Category category = categoryDAO.getCategoryById(dto.getCategory());
		if (category == null) {
			return "ERROR: Bạn phải chọn Loại công việc trong danh sách!";
		}
		recruitment.setCategory(category);
		
		recruitmentDAO.saveRecruitment(recruitment);
		return "OK: Lưu thành công";
	}

	@Override
	@Transactional
	public void deleteRecruitment(int theId) {
		recruitmentDAO.deleteRecruitment(theId);	
	}

	@Override
	@Transactional
	public Recruitment getRecruitmentById(int theId) {
		return recruitmentDAO.getRecruitmentById(theId);
	}

	@Override
	@Transactional
	public void updateRecruitment(UpdateRecruitmentDTO dto) {
		Recruitment recruitment = recruitmentDAO.getRecruitmentById(dto.getId());
		recruitment.setTitle(dto.getTitle());
		recruitment.setAddress(dto.getAddress());
		recruitment.setDescription(dto.getDescription());
		recruitment.setExperience(dto.getExperience());
		recruitment.setQuantity(dto.getQuantity());
		recruitment.setSalary(dto.getSalary());
		recruitment.setType(dto.getType());
		recruitment.setDeadline(dto.getDeadline());
		recruitment.setRank(dto.getRank());
		
		Category category = categoryDAO.getCategoryById(dto.getCategory());
		recruitment.setCategory(category);
		
		recruitmentDAO.saveRecruitment(recruitment);
		
	}

	@Override
	@Transactional
	public List<Recruitment> getTopRecruitments() {
		return recruitmentDAO.getTopRecruitments();
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByCompanyId(int theId) {
		return recruitmentDAO.getRecruitmentByCompanyId(theId);
	}

	@Override
	@Transactional
	public long countRecruitment() {
		return recruitmentDAO.countRecruitment();
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByCategoryId(int theId,int pageId, int total) {
		return recruitmentDAO.getRecruitmentByCategoryId(theId,pageId,total);
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByKey(String key) {
		return recruitmentDAO.getRecruitmentByKey(key);
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByCompanyKey(String key) {
		return recruitmentDAO.getRecruitmentByCompanyKey(key);
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentByAddressKey(String key) {
		return recruitmentDAO.getRecruitmentByAddressKey(key);
	}

	@Override
	@Transactional
	public List<Recruitment> getRecruitmentsByPage(int pageId, int total) {
		return recruitmentDAO.getRecruitmentsByPage(pageId, total);
	}

	@Override
	@Transactional
	public long countRecruitmentByCategoryId(int theId) {
		return recruitmentDAO.countRecruitmentByCategoryId(theId);
	}
}
