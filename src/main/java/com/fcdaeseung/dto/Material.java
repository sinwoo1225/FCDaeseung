package com.fcdaeseung.dto;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;

import lombok.Data;

@Data
@JsonAutoDetect(fieldVisibility = Visibility.ANY)
public class Material {
	private String material_id;
	private String material_name;
	private String material_color;
	private String material_size;
	private int material_price;
	private String material_unit; 
}
