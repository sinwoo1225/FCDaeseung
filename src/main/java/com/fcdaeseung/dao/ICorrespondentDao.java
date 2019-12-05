package com.fcdaeseung.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.fcdaeseung.dto.Correspondent;

@Mapper
public interface ICorrespondentDao {
	public List<Correspondent> listCorrepondent();
	public List<Correspondent> listCorrespondentByCorrespondentName(@Param("correspondent_name")String name);
}
