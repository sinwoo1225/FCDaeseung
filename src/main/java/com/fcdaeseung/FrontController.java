package com.fcdaeseung;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fcdaeseung.dao.IAdminDao;
import com.fcdaeseung.dto.Admin;

@Controller
public class FrontController {
	@Autowired
	IAdminDao dao;
	
	@RequestMapping(path = "/")
	public String root(HttpSession session) throws Exception{
		String login = (String) session.getAttribute("login");
		if(login == null)
			return "redirect:/login";
		return "Main1";
	}
	
	@GetMapping(path = "/login")
	public String getLogin() throws Exception{
		return "login";
	}
	
	@PostMapping(path = "/login")
	public String postLogin(@RequestParam("adminId") String adminId, 
			@RequestParam("password") String password,
			HttpSession session,
			Model model)  throws Exception{
		Admin admin = dao.loginCheck(adminId, password);
		if(admin == null) {
			model.addAttribute("msg", "아이디 비밀번호를 확인해주세요.");
			return "login";
		}
		session.setAttribute("login", "admin");
		return "redirect:/main1";
	}  
	
	@RequestMapping(path = "/main1")
	public String main1(HttpSession session) throws Exception{
		String login = (String) session.getAttribute("login");
		if(login == null)
			return "redirect:/login";
		return "Main1";
	}
	
	@RequestMapping(path = "/main2")
	public String main2(HttpSession session) throws Exception{
		String login = (String) session.getAttribute("login");
		if(login == null)
			return "redirect:/login";
		return "Main2";
	}
	
	@RequestMapping(path = "/main3")
	public String main3(HttpSession session) throws Exception{
		String login = (String) session.getAttribute("login");
		if(login == null)
			return "redirect:/login";
		return "Main3";
	}
	
	@RequestMapping(path = "/order")
	public String order() throws Exception{
		return "order";
	}
	
	@RequestMapping(path = "/stylecheck")
	public String stylecheck() throws Exception{
		return "stylecheck";
	}
	
	@RequestMapping(path = "/stylematerial")
	public String stylematerial() throws Exception{
		return "stylematerial";
	}
	
	@RequestMapping(path = "/work")
	public String word() throws Exception{
		return "work";
	}
}
