package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Applypost;
import com.entity.Category;
import com.entity.Company;
import com.entity.Recruitment;
import com.entity.User;
import com.service.ApplypostService;
import com.service.CategoryService;
import com.service.CompanyService;
import com.service.RecruitmentService;
import com.service.UserService;

@Controller
@RequestMapping("/post")
public class PostController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@Autowired
	private ApplypostService applypostService;
	
	@Autowired
	private CategoryService categoryService;
	
	@GetMapping("/detailPost")
	public String detailPost(Model theModel,@RequestParam("id") int theId, @RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		
		Recruitment theRecruitmentById = recruitmentService.getRecruitmentById(theId);
		theModel.addAttribute("recruitment", theRecruitmentById);		
		
		List<Recruitment> theRecruitmentByCategoryId = recruitmentService.getRecruitmentByCategoryId(theRecruitmentById.getCategory().getId(),offset,limit);
		theModel.addAttribute("recruitmentByCategories", theRecruitmentByCategoryId);
		
		List<Applypost> theApplyposts = applypostService.getApplypostByRecruitmentId(theRecruitmentById.getId());
		theModel.addAttribute("applyposts", theApplyposts);
		
		int totalPage = (int) Math.ceil(recruitmentService.countRecruitmentByCategoryId(theRecruitmentById.getCategory().getId())*1.0/limit);
		theModel.addAttribute("totalPage", totalPage);
		
		return "public/detail-post";
	}
	
	@GetMapping("/listJob")
	public String showListJob(Model theModel,@RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		List<Company> theCompanies = companyService.getTopCompanies();
		theModel.addAttribute("topCompanies",theCompanies);
		
		List<Recruitment> theRecruitments = recruitmentService.getRecruitmentsByPage(offset, limit);
		theModel.addAttribute("recruitments", theRecruitments);
		
		int totalPage = (int) Math.ceil(recruitmentService.countRecruitment()*1.0/limit);
		theModel.addAttribute("totalPage", totalPage);
		
		return "public/recruitment";
	}
	
	@GetMapping("/listPostCategory")
	public String listRecruitmentByCategory(Model theModel,@RequestParam("id") int theId,@RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		
		Category theCategoryById = categoryService.getCategoryById(theId);
		theModel.addAttribute("category",theCategoryById); 	
			
		List<Recruitment> theRecruitmentByCategoryId = recruitmentService.getRecruitmentByCategoryId(theCategoryById.getId(),offset,limit);
		theModel.addAttribute("recruitmentByCategories", theRecruitmentByCategoryId);
		
		int totalPage = (int) Math.ceil(recruitmentService.countRecruitmentByCategoryId(theCategoryById.getId())*1.0/limit);
		theModel.addAttribute("totalPage", totalPage);
		
		return "public/list-re";
	}
	
	@GetMapping("/resultSearch")
	public String resultSearch(Model theModel,@RequestParam("key") String key) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		
		List<Recruitment> theRecruitmentByKey = recruitmentService.getRecruitmentByKey(key);
		theModel.addAttribute("recruitmentByKey", theRecruitmentByKey);
		theModel.addAttribute("key", key);
		
		long totalCompany = companyService.countCompany();
		theModel.addAttribute("totalCompany",totalCompany);
		
		long totalRecruitment = recruitmentService.countRecruitment();
		theModel.addAttribute("totalRecruitment",totalRecruitment);
		
		long totalRoleUser = userService.countRoleUser();
		theModel.addAttribute("totalRoleUser",totalRoleUser);
		return "public/result-search";
	}
	
	@PostMapping("/search")
	public String search(Model theModel, @RequestParam("key") String key) {
		List<Recruitment> theRecruitmentByKey = recruitmentService.getRecruitmentByKey(key);
//		theModel.addAttribute("recruitmentByKey", theRecruitmentByKey);
		return "redirect:/post/resultSearch?key="+key;
	}
	
	@GetMapping("/resultSearchCompany")
	public String resultSearchCompany(Model theModel,@RequestParam("key") String key) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		
		List<Recruitment> theRecruitmentByCompanyKey = recruitmentService.getRecruitmentByCompanyKey(key);
		theModel.addAttribute("recruitmentCompanyByKey", theRecruitmentByCompanyKey);
		theModel.addAttribute("key", key);
		
		long totalCompany = companyService.countCompany();
		theModel.addAttribute("totalCompany",totalCompany);
		
		long totalRecruitment = recruitmentService.countRecruitment();
		theModel.addAttribute("totalRecruitment",totalRecruitment);
		
		long totalRoleUser = userService.countRoleUser();
		theModel.addAttribute("totalRoleUser",totalRoleUser);
		return "public/result-search-user";
	}
	
	@PostMapping("/searchReCompany")
	public String searchReCompany(Model theModel, @RequestParam("key") String key) {
		List<Recruitment> theRecruitmentByCompanyKey = recruitmentService.getRecruitmentByCompanyKey(key);
//		theModel.addAttribute("recruitmentByKey", theRecruitmentByKey);
		return "redirect:/post/resultSearchCompany?key="+key;
	}
	
	@GetMapping("/resultSearchAddress")
	public String resultSearchAddress(Model theModel,@RequestParam("key") String key) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		
		List<Recruitment> theRecruitmentByAddressKey = recruitmentService.getRecruitmentByAddressKey(key);
		theModel.addAttribute("recruitmentAddressByKey", theRecruitmentByAddressKey);
		theModel.addAttribute("key", key);
		
		long totalCompany = companyService.countCompany();
		theModel.addAttribute("totalCompany",totalCompany);
		
		long totalRecruitment = recruitmentService.countRecruitment();
		theModel.addAttribute("totalRecruitment",totalRecruitment);
		
		long totalRoleUser = userService.countRoleUser();
		theModel.addAttribute("totalRoleUser",totalRoleUser);
		return "public/result-search-address";
	}
	
	@PostMapping("/searchReAddress")
	public String searchReAddress(Model theModel, @RequestParam("key") String key) {
		List<Recruitment> theRecruitmentByAddressKey = recruitmentService.getRecruitmentByAddressKey(key);
//		theModel.addAttribute("recruitmentByKey", theRecruitmentByKey);
		return "redirect:/post/resultSearchAddress?key="+key;
	}
}
