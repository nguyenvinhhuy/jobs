package com.dto;

import lombok.Data;

@Data
public class CreateUserDTO {
	private String fullName;
	private String address;
	private String email;
	private String phoneNumber;
	private String password;
	private Integer role;
}
