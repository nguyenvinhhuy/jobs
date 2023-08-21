package com.dto;

import lombok.Data;

@Data
public class UpdateUserDTO {
	private int id;
	private String fullName;
	private String address;
	private String email;
	private String description;
	private String phoneNumber;
}
