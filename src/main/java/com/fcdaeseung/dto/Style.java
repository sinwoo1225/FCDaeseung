package com.fcdaeseung.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class Style {
	String style_id;
	String style_name;
	String correspondent_id;
	Date style_orderdate;
	Date style_deliverydate;
	String style_season;
	int style_quantity;
	int style_price;
	String style_workplace;
	String style_inputname;
	String style_inputdate;
}
