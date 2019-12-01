package com.fcdaeseung.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcdaeseung.dto.Style;

@Mapper
public interface IStyleDao {
	public List<Style> listStyle();
	public List<Style> searchListStyle(Style style);
}
