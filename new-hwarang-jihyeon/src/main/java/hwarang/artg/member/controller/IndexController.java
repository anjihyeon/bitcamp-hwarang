package hwarang.artg.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hwarang.artg.member.service.MemberService;
import hwarang.artg.member.service.NaverService;

@Controller
public class IndexController {
	@RequestMapping("/test")
	public String showMain() {
		return "/test/gridboard";
	}

}
