package zenkit.web.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zenkit.web.dto.AddResource;
import zenkit.web.dto.ResourceName;
import zenkit.web.service.A03_projectService;
import zenkit.web.vo.Project;
import zenkit.web.vo.User;

@Controller
@RequestMapping("project.do")
public class A03_projectController {
	
	@Autowired
	A03_projectService service;
	
	// http://localhost:7080/zenkit/project.do?method=form
	@GetMapping(params = "method=form")
	public String projectListForm() {
		return "/a03_project/a00_projectList";
	}
	// http://localhost:7080/zenkit/project.do?method=form
	@PostMapping(params = "method=form")
	public String projectListForm(Project pro, HttpServletRequest req) {
		
		// 프로젝트 번호 session 처리
		HttpSession session = req.getSession();
		session.setAttribute("p_no", pro.getP_no());
		
		return "redirect:/project.do?method=detail_1";
	}
	
	// http://localhost:7080/zenkit/project.do?method=detail_1
	@RequestMapping(params = "method=detail_1")
	public String detailForm_1(HttpServletRequest req, Model m) {
		
		// 프로젝트 번호 session으로 받기
		HttpSession session = req.getSession();
		int p_no = (int)session.getAttribute("p_no");

		// 프로젝트 기본정보
		m.addAttribute("proInfo",service.getProjectInfo(p_no));
		// 프로젝트 참여인원
		m.addAttribute("resourceList",service.getProjectResource(p_no));

		
		return "/a03_project/a01_detailInfo";
	}
	
	// http://localhost:7080/zenkit/project.do?method=detail_3
	@GetMapping(params = "method=detail_3")
	public String detailForm_3(HttpServletRequest req, Model m) {
		
		// session받기 (프로젝트 번호, 접속유저)
		HttpSession session = req.getSession();
		int p_no = (int)session.getAttribute("p_no");
		User user = (User)session.getAttribute("sesMem");
		
		// 프로젝트 참여인원
		ArrayList<ResourceName> joinOfpeple = service.getProjectResource(p_no);
		m.addAttribute("resourceList",joinOfpeple);
		
		// 해당 부서인원 리스트 (현재 참여인원은 제외)
		int d_no = user.getD_no();
		ArrayList<ResourceName> deptOfpeple = service.getDeptResource(d_no, p_no);
		
		m.addAttribute("deptPersonList", deptOfpeple);
		return "/a03_project/a03_resource";
	}
	// http://localhost:7080/zenkit/project.do?method=detail_3
	@PostMapping(params = "method=detail_3")
	public String detailForm_3(@RequestParam("u_name") String u_name,
							@RequestParam("btnState") String btnState,
							HttpServletRequest req) {
		
		// session받기 (프로젝트 번호)
		HttpSession session = req.getSession();
		int p_no = (int)session.getAttribute("p_no");
		
		System.out.println(btnState);
		System.out.println("u_name:"+u_name);
		System.out.println("p_no:"+p_no);
		
		AddResource resource = new AddResource(p_no, u_name);
		if(btnState.equals("add")) 
			service.addResource(resource); // 프로젝트 참여시키기
		else
			service.delResource(resource); // 프로젝트 제외시키기
		
		return "redirect:/project.do?method=detail_3";
	}
	// http://localhost:7080/zenkit/project.do?method=regForm
	@GetMapping(params = "method=regForm")
	public String proRegForm(Model m) {
		
		// 현재 날짜 및 한달 후 날짜 계산
		Calendar cal = Calendar.getInstance();
		Date date = new Date();
		SimpleDateFormat fm = new SimpleDateFormat("dd/MM/yyyy");
		
		cal.setTime(date);
		cal.add(Calendar.MONTH, 1);
		
		m.addAttribute("startDay", fm.format(date));
		m.addAttribute("endDay", fm.format(cal.getTime()));
		
		return "/a03_project/a00_regProject";
	}
	@PostMapping(params = "method=regForm")
	public String proRegForm(Project pro, Model m) {
		service.projectReg(pro);
		m.addAttribute("regSucc", "등록완료");
		
		return "/a03_project/a00_regProject";
	}
	
	// http://localhost:7080/zenkit/project.do?method=data
	@RequestMapping(params = "method=data")
	public String projectList(HttpServletRequest req, Model d) {
		HttpSession session = req.getSession();
		User user = (User)session.getAttribute("sesMem");
		int userNo = user.getU_no();
		
		d.addAttribute("projectList", service.getProList(userNo));
		return "pageJsonReport";
	}
}
