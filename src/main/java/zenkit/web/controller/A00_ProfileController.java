package zenkit.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.vo.User;

@Controller
public class A00_ProfileController {

	
	//http://localhost:7080/zenkit/profile.do
	@RequestMapping("profile.do")
	public String profile(@ModelAttribute("pro") User pro, Model d ) {
		
		return "a00_login//a02_user";
	}
}
