package com.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.dto.ApplyJobWithCvDto;
import com.dto.CreateApplypostDTO;
import com.dto.FollowCompanyDTO;
import com.dto.SaveJobDTO;
import com.dto.UpdateUserDTO;
import com.entity.Applypost;
import com.entity.Company;
import com.entity.FollowCompany;
import com.entity.Recruitment;
import com.entity.SaveJob;
import com.entity.User;
import com.service.ApplypostService;
import com.service.CompanyService;
import com.service.FilesStorageService;
import com.service.FollowCompanyService;
import com.service.RecruitmentService;
import com.service.SaveJobService;
import com.service.UserService;

@Controller
@RequestMapping("/user")
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private ApplypostService applypostService;
	
	@Autowired
	private SaveJobService saveJobService;
	
	@Autowired
	private FollowCompanyService followCompanyService;
	
	@Autowired
	FilesStorageService storageService;
	
	@Autowired
	private RecruitmentService recruitmentService;
	
	@Autowired
	private CompanyService companyService;

	@PostMapping("/updateUser")
	public String updateUser(@ModelAttribute("user") UpdateUserDTO dto){             
		userService.updateUser(dto);
		return "redirect:/myProfile";
	}
	
	@GetMapping("/deleteUser")
	public String deleteUser(@RequestParam("userID") int theId) {
		userService.deleteUser(theId);
		return "redirect:/user/listUsers";
	}

	@GetMapping("/listSaveJob")
	public String listSaveJob(Model theModel,@RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				List<SaveJob> theSaveJobs = saveJobService.getSaveJobsByUserId(theUserById.getId(),offset,limit);
				theModel.addAttribute("saveJobs",theSaveJobs);
			}
		}
		int totalPage = (int) Math.ceil(saveJobService.countSaveJob()*1.0/limit);
		theModel.addAttribute("totalPage", totalPage);
		return "public/list-save-job";
	}

	@GetMapping("/listApplyJob")
	public String listApplyJob(Model theModel, @RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				List<Applypost> theApplyposts = applypostService.getApplypostsByUserId(theUserById.getId(),offset,limit);
				theModel.addAttribute("applyposts",theApplyposts);
				int totalPage = (int) Math.ceil(applypostService.countApplypostByUserId(theUserById.getId())*1.0/limit);
				theModel.addAttribute("totalPage", totalPage);
			}
		}
		
		return "public/list-apply-job";
	}

	@GetMapping("/listFollowCompany")
	public String listFollowCompany(Model theModel, @RequestParam(name = "page", defaultValue = "1") int page_id) {
		int limit = 5;
		int offset = (page_id - 1)*limit;
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				List<FollowCompany> theFollowCompanys = followCompanyService.getFollowCompanysByUserId(theUserById.getId(),offset,limit);
				theModel.addAttribute("followCompanys",theFollowCompanys);
			}
		}
		int totalPage = (int) Math.ceil(followCompanyService.countFollowCompany()*1.0/limit);
		theModel.addAttribute("totalPage", totalPage);
		return "public/list-follow-company";
	}
	
	@GetMapping("/listPostCompany")
	public String listPostCompany(Model theModel, @RequestParam("id") int theId) {
		Company theCompany = companyService.getCompanyById(theId);
		theModel.addAttribute("company", theCompany);
		List<Recruitment> theRecruitments = recruitmentService.getRecruitmentByCompanyId(theCompany.getId());
		theModel.addAttribute("recruitments", theRecruitments);
		return "public/post-company";
	}
	
	@PostMapping("/applyPost1")
	@ResponseBody
	public String applypost1(Model theModel, ApplyJobWithCvDto dto) {
		String message = applypostService.saveApplypost1(dto);
		return message;
	}
	
	@PostMapping("/applyPost")
	@ResponseBody
	public String applypost(Model theModel, CreateApplypostDTO dto, @RequestParam("file") MultipartFile multipartFile,HttpServletRequest request) {
		//Save file trước ở đây
		String path = request.getServletContext().getRealPath("/assets/images");
    	System.out.println("Path cv: " +path);
    	try {
			storageService.save(multipartFile, path);
		} catch (Exception e) {
			throw new RuntimeException("Cannot save CV!", e);
		}
		
		//save applyPost. Do trong DTO, k truyền cvName lên, nên h phải set cvName ngược lại vào DTO
		//Để thằng service lấy ra thì nó sẽ có dữ liệu
		dto.setNameCv(multipartFile.getOriginalFilename());
		String message = applypostService.saveApplypost(dto);
		return message;
	}
	
	@PostMapping("/saveJob")
	@ResponseBody
	public String saveJob(SaveJobDTO dto) {
		String message = saveJobService.saveJob(dto);
		return message;
	}
	
	@PostMapping("/followCompany")
	@ResponseBody
	public String followCompany(FollowCompanyDTO dto) {
		String message = followCompanyService.saveFollowCompany(dto);
		return message;
	}
	
	@GetMapping("/deleteApplypost")
	public String deleteApplypost(@RequestParam("recruitmentID") int recruitmentID) {
		String currentLogedInMail = SecurityContextHolder.getContext().getAuthentication().getName();
		if(!"anonymousUser".equals(currentLogedInMail)) {
			User theUserById = userService.findByEmail(currentLogedInMail);
			if (theUserById != null) {
				applypostService.deleteApplypost(theUserById.getId(), recruitmentID);
			}
		}
		return "redirect:/user/listApplyJob";
	}
}
