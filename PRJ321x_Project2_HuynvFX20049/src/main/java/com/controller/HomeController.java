package com.controller;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dto.CreateUserDTO;
import com.entity.Category;
import com.entity.Company;
import com.entity.Recruitment;
import com.entity.ResetToken;
import com.entity.User;
import com.service.CategoryService;
import com.service.CompanyService;
import com.service.CvService;
import com.service.EmailService;
import com.service.FilesStorageService;
import com.service.RecruitmentService;
import com.service.ResetTokenService;
import com.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private CvService cvService;
	
	@Autowired
	private CompanyService companyService;
	
	@Autowired
	FilesStorageService storageService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@Autowired
	private EmailService emailService;
	
	@Autowired
	private ResetTokenService resetTokenService;
	
	@GetMapping("/")
	public String showHome(Model theModel) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		List<Category> theCategories = categoryService.getTopCategories();
		theModel.addAttribute("categories",theCategories);
		
		List<Company> theCompanies = companyService.getTopCompanies();
		theModel.addAttribute("topCompanies",theCompanies);
		
		long totalCompany = companyService.countCompany();
		theModel.addAttribute("totalCompany",totalCompany);
		
		long totalRecruitment = recruitmentService.countRecruitment();
		theModel.addAttribute("totalRecruitment",totalRecruitment);
		
		long totalRoleUser = userService.countRoleUser();
		theModel.addAttribute("totalRoleUser",totalRoleUser);
		
		List<Recruitment> theRecruitments = recruitmentService.getTopRecruitments();
		theModel.addAttribute("recruitments", theRecruitments);
		
		return "public/home";
	}
	
	@PostMapping("/confirmAccount")
	public String confirmAccount(@RequestParam("email") String to,@RequestParam("id") int id, HttpServletRequest request){ 
		String code = resetTokenService.saveResetToken(id);
		String baseUrl = request.getRequestURL().toString().replace(request.getRequestURI(), "");
		String contextPath = request.getContextPath();
		
		String subject = "Confirm Your Email";
		StringBuilder content = new StringBuilder();
		content.append("Để xác thực tài khoản, vui lòng nhấn vào đường dẫn này: ")
			.append(baseUrl)
			.append(contextPath)
			.append("/confirm?token=")
			.append(code);
		
		emailService.sendEmail(to, subject, content.toString());
		return "redirect:/myProfile";
	}
	
	@GetMapping("/confirm")
	public String confirm(@RequestParam("token") String token) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUserById = userService.findByEmail(currentLogedInMail);
		Date getDate = new Date();
		ResetToken theToken = resetTokenService.getResetTokenByUserId(theUserById.getId());
		Date expiredTime = theToken.getExpiredTime();
		long diff = (getDate.getTime() - expiredTime.getTime()) / (60 * 1000);//số phút
		System.out.println("---------------------- Số phút: " + diff + "-----------------------------------");
		if (diff <= 10) {
			userService.comfirmUser(theUserById.getId());	
		}
		return "redirect:/myProfile";
	}
	
	@GetMapping("/myProfile")
	public String myProfile(Model theModel) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		User theUserById = userService.findByEmail(currentLogedInMail);
		theModel.addAttribute("user", theUserById);
		if(theUserById.getCompany() != null) {
			Company theCompanyById = companyService.getCompanyById(theUserById.getId());
			theModel.addAttribute("company", theCompanyById);
		}
		
		return "public/profile";
	}
	
	@PostMapping("/uploadFile")
	public String uploadFile(Model model, @RequestParam("image") MultipartFile file, HttpServletRequest request) {
		String message = "";
	    try {	    	
	    	//Save file to folder
	    	String path = request.getServletContext().getRealPath("/assets/images");
	    	System.out.println("Path image: " + path);
	    	storageService.save(file, path);
	    	
	    	//Save image to DB
	    	String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
			userService.uploadAvt(currentLogedInMail, file.getOriginalFilename());
	    	
	    	//Add message
	    	message = "Uploaded the image successfully: " + file.getOriginalFilename();
	    	model.addAttribute("message", message);
	    } catch (Exception e) {
	    	e.printStackTrace();
	    	message = "Could not upload the image: " + file.getOriginalFilename() + ". Error: " + e.getMessage();
	    	model.addAttribute("message", message);
	    }
		return "redirect:/myProfile";
	}
	
	@PostMapping("/uploadCv")
	public String uploadCv(Model model, @RequestParam("cv") MultipartFile file, HttpServletRequest request) {
		String message = "";
	    try {	    	
	    	//Save file to folder
	    	String path = request.getServletContext().getRealPath("/assets/images");
	    	System.out.println("Path cv: " +path);
	    	storageService.save(file, path);
	    	
	    	//Save image to DB
	    	String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
			userService.uploadCv(currentLogedInMail, file.getOriginalFilename());
	    	
	    	//Add message
	    	message = "Uploaded the cv successfully: " + file.getOriginalFilename();
	    	model.addAttribute("message", message);
	    } catch (Exception e) {
	    	e.printStackTrace();
	    	message = "Could not upload the cv: " + file.getOriginalFilename() + ". Error: " + e.getMessage();
	    	model.addAttribute("message", message);
	    }
		return "redirect:/myProfile";
	}
	
	@PostMapping("/deleteCv")
	public String deleteCv(@RequestParam("cvID") int theId) {
		cvService.deleteCv(theId);
		return "redirect:/myProfile";
	}
	
	@GetMapping("/logout")
	public String logoutPage (HttpServletRequest request, HttpServletResponse response) {
	    Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	    if (auth != null){    
	        new SecurityContextLogoutHandler().logout(request, response, auth);
	    }
	    return "redirect:/";
	}
	
	@GetMapping("/showLoginPage")
	public String showMyLoginPage() {
		return "public/login";
	}
	
	@GetMapping("/access-denied")
	public String showAccessDenied() {
		return "errors/access-denied";
	}
	
	@PostMapping("/register")
	public String saveUser(@ModelAttribute("user") CreateUserDTO theUser) {
		userService.saveUser(theUser);
		return "redirect:/showLoginPage";
	}
}
