package zenkit.web.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.service.A03_JobService;

@Controller
public class A03_JobController {
	
	@Autowired(required = false)
	A03_JobService service;
	
	// http://localhost:7080/zenkit/jobList.do
	@RequestMapping("jobList.do")
	public String joblist(Model m) {
		m.addAttribute("job",service.jobList());
		
		return "pageJsonReport";
	}
	
	// http://localhost:7080/zenkit/listForm.do
	@RequestMapping("listForm.do")
	public String listForom() {
		return "ganttTest";
	}
}
