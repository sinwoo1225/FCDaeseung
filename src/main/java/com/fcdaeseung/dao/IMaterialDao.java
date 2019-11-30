package com.fcdaeseung.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.fcdaeseung.dto.Material;

@Mapper
public interface IMaterialDao {
	public List<Material> listMaterial();
}
