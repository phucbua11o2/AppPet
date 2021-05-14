package admin.controller;


import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import javax.servlet.http.HttpSession;
@Controller
public class Welcome {
	
	@RequestMapping("admin/quan-ly")
	public String manage(HttpSession session)
	{
		//session.setAttribute("parama", "kietgoooooo");
		return"admin/index";
}
}
