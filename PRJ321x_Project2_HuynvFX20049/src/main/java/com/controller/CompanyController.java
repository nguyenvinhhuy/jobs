package com.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.dto.UpdateCompanyDTO;
import com.entity.Company;
import com.entity.User;
import com.service.CompanyService;
import com.service.FilesStorageService;
import com.service.UserService;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Autowired
	private CompanyService companyService; 
	
	@Autowired
	private UserService userService;
	
	@Autowired
	FilesStorageService storageService;
	
	@PostMapping("/updateCompany")
	public String updateCompany(@ModelAttribute("company") UpdateCompanyDTO dto){             
		companyService.updateCompany(dto);
		return "redirect:/myProfile";
	}
	
	@PostMapping("/uploadLogo")
	public String uploadLogo(Model model, @RequestParam("logo") MultipartFile file, HttpServletRequest request) {
		String message = "";
	    try {	    	
	    	//Save file to folder
	    	String path = request.getServletContext().getRealPath("/assets/images");
	    	System.out.println("Path logo: " +path);
	    	storageService.save(file, path);
	    	
	    	//Save image to DB
	    	String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
			User theUserById = userService.findByEmail(currentLogedInMail);
	    	companyService.uploadLogo(theUserById.getId(), file.getOriginalFilename());
	    	
	    	//Add message
	    	message = "Uploaded the logo successfully: " + file.getOriginalFilename();
	    	model.addAttribute("message", message);
	    } catch (Exception e) {
	    	e.printStackTrace();
	    	message = "Could not upload the logo: " + file.getOriginalFilename() + ". Error: " + e.getMessage();
	    	model.addAttribute("message", message);
	    }
		return "redirect:/myProfile";
	}
	
	@GetMapping("/detailCompany")
	public String detailCompany(Model theModel,@RequestParam("id") int theId) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				theModel.addAttribute("user", theUserById);
			}
		}
		Company theCompanyById = companyService.getCompanyById(theId);
		theModel.addAttribute("company", theCompanyById);	
		
		return "public/detail-company";
	}
}
