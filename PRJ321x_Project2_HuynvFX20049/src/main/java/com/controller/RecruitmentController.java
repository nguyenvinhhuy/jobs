package com.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dto.CreateRecruitmentDTO;
import com.dto.UpdateRecruitmentDTO;
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
@RequestMapping("/recruitment")
public class RecruitmentController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private ApplypostService applypostService;
	
	@Autowired
	private CompanyService companyService;
	
	@GetMapping("/")
	public String showRecruitments() {
		return "public/recruitment";
	}
	
	@GetMapping("/list-user")
	public String listUser(Model theModel,@RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		List<Applypost> theUserApplyposts = new ArrayList<>();
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(currentLogedInMail == null) {
			theModel.addAttribute("userApplyposts", theUserApplyposts);
			return "public/list-user";
		}
		User theUserById = userService.findByEmail(currentLogedInMail);
		if(theUserById.getCompany() != null) {
			Company theCompany = companyService.getCompanyById(theUserById.getCompany().getId());
			theUserApplyposts = applypostService.getApplypostByCompanyId(theCompany.getId(),offset,limit);
			theModel.addAttribute("userApplyposts", theUserApplyposts);
			
			int totalPage = (int) Math.ceil(applypostService.countApplypostByCompanyId(theCompany.getId())*1.0/limit);
			theModel.addAttribute("totalPage", totalPage);
		}
		return "public/list-user";
	}
	
	@GetMapping("/listPost")
	public String listPost(Model theModel) {
		List<Recruitment> theRecruitments = new ArrayList<>();
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(currentLogedInMail == null) {
			theModel.addAttribute("recruitments", theRecruitments);
			return "public/list-user";
		}
		User theUserById = userService.findByEmail(currentLogedInMail);
		if(theUserById.getCompany() != null) {
			Company theCompany = companyService.getCompanyById(theUserById.getCompany().getId());
			theRecruitments = recruitmentService.getRecruitmentByCompanyId(theCompany.getId());
			theModel.addAttribute("recruitments", theRecruitments);
		}
		
		return "public/post-list";
	}
	
	@GetMapping("/postJob")
	public String postJob(Model theModel) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUserById = userService.findByEmail(currentLogedInMail);
		theModel.addAttribute("user", theUserById);
		
		List<Category> theCategories = categoryService.getAllCategories();
		theModel.addAttribute("categories",theCategories);
		return "public/post-job";
	}
	
	@PostMapping("/addRecruitment")
	@ResponseBody
	public String addRecruitment(@ModelAttribute CreateRecruitmentDTO theRecruitment) {
		return recruitmentService.saveRecruitment(theRecruitment);
	}
	
	@PostMapping("/updateRecruitment")
	public String updateRecruitment(@ModelAttribute("recruitment") UpdateRecruitmentDTO theRecruitment) {
		recruitmentService.updateRecruitment(theRecruitment);
		return "redirect:/recruitment/listPost";
	}
	
	@GetMapping("/deleteRecruitment")
	public String deleteRecruitment(@RequestParam("recruitmentID") int theId) {
		recruitmentService.deleteRecruitment(theId);
		return "redirect:/recruitment/listPost";
	}
	
	@GetMapping("/detailRecruitment")
	public String detailRecruitment(Model theModel,@RequestParam("id") int theId) {
		Recruitment theRecruitmentById = recruitmentService.getRecruitmentById(theId);
		theModel.addAttribute("recruitment", theRecruitmentById);		
		
		List<Category> theCategories = categoryService.getAllCategories();
		theModel.addAttribute("categories",theCategories);
		
		return "public/edit-job";
	}
	
	@GetMapping("/approve")
	public String approve(@RequestParam("id") int theId) {		
		applypostService.approveApplyJob(theId);	
		return "redirect:/post/detailPost?id="+applypostService.getApplypostById(theId).getRecruitment().getId();
	}
}
