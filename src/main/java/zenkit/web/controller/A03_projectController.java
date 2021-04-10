package zenkit.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zenkit.web.service.A03_projectService;
import zenkit.web.vo.User;

@Controller
@RequestMapping("project.do")
public class A03_projectController {
	
	@Autowired
	A03_projectService service;
	
	// http://localhost:7080/zenkit/project.do?method=form
	@RequestMapping(params = "method=form")
	public String projectListForm() {
		return "/a03_project/a00_projectList";
	}

	// http://localhost:7080/zenkit/project.do?method=data
	@RequestMapping(params = "method=data")
	public String projectList(HttpServletRequest req, Model d) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("user");
//		user.getU_no();
		
		d.addAttribute("projectList", service.getProList(7));
		return "pageJsonReport";
	}
	
	// http://localhost:7080/zenkit/project.do?method=detail_1
	@RequestMapping(params = "method=detail_1")
	public String detailForm_1() {
		return "/a03_project/a01_detailInfo";
	}
	// http://localhost:7080/zenkit/project.do?method=detail_3
	@RequestMapping(params = "method=detail_3")
	public String detailForm_3() {
		return "/a03_project/a03_resource";
	}

}
