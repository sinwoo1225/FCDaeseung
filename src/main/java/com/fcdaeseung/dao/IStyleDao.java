package com.fcdaeseung.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.fcdaeseung.dto.Style;

@Mapper
public interface IStyleDao {
	public List<Style> listStyle();
	public List<Style> searchListStyle(Map<String,Object> style);
}
