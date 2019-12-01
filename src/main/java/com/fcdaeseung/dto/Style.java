package com.fcdaeseung.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Style {
	
	private String style_id;
	private String style_name;
	private String correspondent_id;
	private Date style_orderdate;
	private Date style_deliverydate;
	private String style_season;
	private int style_quantity;
	private int style_price;
	private String style_workplace;
	private String style_inputname;
	private String style_inputdate;
	
	private Correspondent correspondent;
}
