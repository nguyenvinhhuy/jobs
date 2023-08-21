package com.dto;

import lombok.Data;

@Data
public class UpdateCompanyDTO {
	private Integer id;
	private String companyName;
	private String address;
	private String email;
	private String description;
	private String phoneNumber;
}	
