package zenkit.web.controller;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zenkit.web.service.A03_JobService;
import zenkit.web.vo.Job;

@Controller
@RequestMapping("/job.do")
public class A03_JobController {

	@Autowired(required = false)
	A03_JobService service;

	@ModelAttribute("completeN")
	public List<Double> rate() {
		return Arrays.asList(0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0);
	}

	@ModelAttribute("pageO")
	public List<String> tools(){
		return Arrays.asList("5", "10", "15", "20");
	}
	
	// http://localhost:8080/zenkit/job.do?method=data
	@RequestMapping(params = "method=data")
	public String jobData(Job job, Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int a = Integer.parseInt((String) session.getAttribute("p_no"));
		m.addAttribute("job", service.jobList(a));
		return "pageJsonReport";
	}
	
	// http://localhost:8080/zenkit/job.do?method=data2
	@RequestMapping(params = "method=data2")
	public String jobData2(Job job, Model m, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int a = Integer.parseInt((String) session.getAttribute("p_no"));
		m.addAttribute("job", service.jobList2(a));
		return "pageJsonReport";
	}

	// http://localhost:8080/zenkit/job.do?method=job
	@RequestMapping(params = "method=job")
	public String job() {
		return "a03_project/a04_Job";
	}

	// http://localhost:8080/zenkit/job.do?method=list
	@RequestMapping(params = "method=list")
	public String joblist(Model d, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int p_no = Integer.parseInt((String) session.getAttribute("p_no"));
		d.addAttribute("count", service.jobcount(p_no));
		d.addAttribute("joblist", service.jobList2(p_no));
		return "a03_project/a04_JobCRUD";
	}

	// http://localhost:8080/zenkit/job.do?method=detail
	@RequestMapping(params = "method=detail")
	public String jobDetail(@RequestParam int no, Model d, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int p_no = Integer.parseInt((String) session.getAttribute("p_no"));
		
		d.addAttribute("people", service.jobPeople(p_no));
		
		d.addAttribute("parentJob", service.parentjob(no));
		
		d.addAttribute("joblist", service.jobList2(p_no));
		
		d.addAttribute("jobdetail", service.jobDetail(no));
		return "a03_project/a04_JobDetail";
	}

	// http://localhost:8080/zenkit/job.do?method=insertForm
	@RequestMapping(params = "method=insertForm")
	public String jobInsertF(@ModelAttribute("job") Job job, Model d, HttpServletRequest request) {
		HttpSession session = request.getSession();
		int p_no = Integer.parseInt((String) session.getAttribute("p_no"));
		d.addAttribute("project", service.projectGet(p_no));
		d.addAttribute("people", service.jobPeople(p_no));
		d.addAttribute("joblist", service.jobList2(p_no));
		return "a03_project/a04_JobInsert";
	}

	// http://localhost:8080/zenkit/job.do?method=insert
	@RequestMapping(params = "method=insert")
	public String jobInsert(@ModelAttribute("job") Job job, Model d, HttpServletRequest request) {
		service.jobInsert(job);
		HttpSession session = request.getSession();
		int a = Integer.parseInt((String) session.getAttribute("p_no"));
		d.addAttribute("joblist", service.jobList2(a));
		d.addAttribute("proc", "insert");
		return "a03_project/a04_JobInsert";
	}
	// http://localhost:8080/zenkit/job.do?method=update
	@RequestMapping(params = "method=update")
	public String jobUpdate(@ModelAttribute("job") Job job, Model d) {
		service.jobUpdate(job);
		service.TopjobcomR(job.getJ_refno());
		d.addAttribute("proc", "update");
		return "a03_project/a04_JobDetail";
	}
	// http://localhost:8080/zenkit/job.do?method=update
	@RequestMapping(params = "method=delete")
	public String jobDelete(Job job) {
		service.jobDelete(job.getJ_no());
		return "forward:/job.do?method=list";
	}
}
