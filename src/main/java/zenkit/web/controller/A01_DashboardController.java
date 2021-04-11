package zenkit.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.service.A01_DashboardService;
import zenkit.web.vo.User;

@Controller
@RequestMapping("dashboard.do")
public class A01_DashboardController {
	  
	@Autowired(required=false)
	private A01_DashboardService service;
	
	/* 개인 대시보드 조회 */
	// http://localhost:7080/zenkit/dashboard.do?method=personalList
	
	
	@GetMapping(params="method=personalList")
	public String personalList(Model d, HttpServletRequest request) {
		
		// 세션 설정
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("sesMem");
		
		d.addAttribute("jobCnt", service.jobCnt(user.getU_no()));
		d.addAttribute("projectCnt", service.projectCnt(user.getU_no()));
		d.addAttribute("outputCnt",service.outputCnt(user.getU_no()));
		d.addAttribute("projectDate",service.projectDate(user.getU_no()));
		d.addAttribute("projectList", service.projectList(user.getU_no()));
		
		return "a01_dashboard\\a01_dashboard_personal";
	}

	
	/* 프로젝트 대시보드 조회 */
	// http://localhost:7080/zenkit/dashboard.do?method=projectList
	@GetMapping(params="method=projectList")
	public String projectList() {
		return "a01_dashboard\\a02_dashboard_project";
	}
	
	/* 종합 대시보드 조회 */
	// http://localhost:7080/zenkit/dashboard.do?method=allList
	@GetMapping(params="method=allList")
	public String allList() {
		return "a01_dashboard\\a03_dashboard_all";
	}
	
	
	/* 부서 대시보드 조회 */
	// http://localhost:7080/zenkit/dashboard.do?method=departList
	@GetMapping(params="method=departList")
	public String departList() {
		return "a01_dashboard\\a04_dashboard_department";
	}
	
	

}
