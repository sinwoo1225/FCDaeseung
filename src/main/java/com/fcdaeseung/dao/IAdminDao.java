package com.fcdaeseung.dao;

import org.apache.ibatis.annotations.Mapper;

import com.fcdaeseung.dto.Admin;

@Mapper
public interface IAdminDao {
	public Admin loginCheck(String adminId, String password);
}
