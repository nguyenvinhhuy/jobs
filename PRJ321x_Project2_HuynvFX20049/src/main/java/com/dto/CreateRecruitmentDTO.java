package com.dto;

import lombok.Data;

@Data
public class CreateRecruitmentDTO {
	private String title;
	private String address;
	private String description;
	private String experience;
	private int quantity;
	private String salary;
	private String rank;
	private String type;
	private String deadline;
	private Integer company;
	private Integer category;
}
