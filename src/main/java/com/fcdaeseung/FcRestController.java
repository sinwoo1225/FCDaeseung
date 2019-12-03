package com.fcdaeseung;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.fcdaeseung.dao.IMaterialDao;
import com.fcdaeseung.dao.IStyleDao;
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
		Map<String,Object> params = new HashMap<>();
		params.put("style", style);
		params.put("correspondent_name",correspondent_name);
		List<Style> styleList = styleDao.searchListStyle(params);
		
		Map<String, Object> result = new HashMap<>();
		result.put("resultSuccese",true);
		result.put("length",styleList.size());
		result.put("styleList", styleList);
		return result;
	}
		
	@DeleteMapping(path="/style")
	public Map<String,Object> deleteStyle(@RequestParam(value ="style_id") List<String> style_id){
		int resultNum = 0;
		for(String id : style_id) {
			if(styleDao.deleteStyleByStyleId(id) > 0)
				resultNum++;
		}
		Map<String, Object> result = new HashMap<>();
		result.put("resultSuccese",resultNum > 0 ? true:false );
		result.put("resultNum",resultNum);
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
