package zenkit.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.service.A01_DashboardService;

@Controller
@RequestMapping("dashboard.do")
public class A01_DashboardController {
	  
	@Autowired(required=false)
	private A01_DashboardService service;
	
	/* 개인 대시보드 조회 */
	// http://localhost:7080/zenkit/dashboard.do?method=personalList
	
	
	@GetMapping(params="method=personalList")
	public String personalList(Model d) {
		// 세션 설정
		// , HttpServletRequest request
		//HttpSession session = request.getSession();
		//session.setAttribute("mem", new User(3));
		
		d.addAttribute("jobCnt", service.jobCnt(3));
		d.addAttribute("projectCnt", service.projectCnt(3));
		d.addAttribute("outputCnt",service.outputCnt(3));
		d.addAttribute("projectDate",service.projectDate(3));
		d.addAttribute("projectList", service.projectList(3));
		return "a01_dashboard\\a01_dashboard_personal";
	}
	
	
	
	
	
	
	
	
	
	/* 프로젝트 대시보드 조회 */
	// http://localhost:5050/zenkit/dashboard.do?method=projectList
	@GetMapping(params="method=projectList")
	public String projectList() {
		return "a01_dashboard\\a02_dashboard_project";
	}
	
	/* 종합 대시보드 조회 */
	// http://localhost:5050/zenkit/dashboard.do?method=allList
	@GetMapping(params="method=allList")
	public String allList() {
		return "a01_dashboard\\a03_dashboard_all";
	}
	
	
	/* 부서 대시보드 조회 */
	// http://localhost:5050/zenkit/dashboard.do?method=departList
	@GetMapping(params="method=departList")
	public String departList() {
		return "a01_dashboard\\a04_dashboard_department";
	}
	
	

}
