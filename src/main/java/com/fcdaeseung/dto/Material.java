package com.fcdaeseung.dto;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonAutoDetect.Visibility;

import lombok.Data;

@Data
@JsonAutoDetect(fieldVisibility = Visibility.ANY)
public class Material {
	String matreial_id;
    String material_name;
    String material_color;
    String material_size;
    int material_price;
    String material_unit; 
}
