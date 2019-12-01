package com.fcdaeseung;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fcdaeseung.dao.IMaterialDao;
import com.fcdaeseung.dao.IStyleDao;
import com.fcdaeseung.dto.Correspondent;
import com.fcdaeseung.dto.Material;
import com.fcdaeseung.dto.Style;

@RestController
@CrossOrigin
public class FcRestController {
	@Autowired
	IStyleDao styleDao;
	@Autowired
	IMaterialDao materialDao;
	
	@GetMapping(path="/style/all")
	public Map<String, Object> styleAll() {
		Map<String, Object> result = new HashMap<>();
		List<Style> styleList = styleDao.listStyle();
		result.put("resultSuccese",true);
		result.put("length",styleList.size());
		result.put("styleList", styleList);
		return result;
	}
	
	@GetMapping(path="/style")
	public Map<String, Object> style(
		Style style, @RequestParam(name = "correspondent_name") String correspondent_name
	)
	{	
		style.setCorrespondent(new Correspondent());
		style.getCorrespondent().setCorrespondent_name(correspondent_name);
		List<Style> styleList = styleDao.searchListStyle(style);
		Map<String, Object> result = new HashMap<>();
		result.put("resultSuccese",true);
		result.put("length",styleList.size());
		result.put("styleList", styleList);
		return result;
	}
		
	@GetMapping(path="/material")
	public Map<String, Object> material(
			@RequestParam(name="styleId") String styleId
	)
	{
		List<Material> materialList = materialDao.listMaterialForStyleId(styleId);
		Map<String, Object> result = new HashMap<>();
		if(materialList == null) {
			result.put("resultSuccese",false);
			return result;
		}
		result.put("resultSuccese",true);
		result.put("length",materialList.size());
		result.put("styleList", materialList);
		return result;
	}
}
