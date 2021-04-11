package zenkit.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import zenkit.web.service.A02_MyTaskService;
import zenkit.web.vo.JobInfo;
import zenkit.web.vo.User;


@Controller
@RequestMapping("mytask.do")
public class A02_MyTaskController {
	
	@Autowired(required=false)
	private A02_MyTaskService service;
	
	@ModelAttribute("myPros")
	public ArrayList<String> getMyPros(@SessionAttribute("sesMem") User user) {
		return service.myPros(user.getU_no());
	}
	
	// http://localhost:7080/zenkit/mytask.do?method=task
	@GetMapping(params="method=task")
	public String mytaskList(@ModelAttribute("sch") JobInfo sch, 
							@SessionAttribute("sesMem") User user,
							Model d) {
		sch.setU_no(user.getU_no());
		d.addAttribute("taskList", service.myTaskList(sch));
		return "a02_myTask\\a01_task";
	}
	
	
	
	// http://localhost:7080/zenkit/mytask.do?method=outputs
	@GetMapping(params="method=outputs")
	public String outputList() {
		return "a02_myTask\\a02_outputs";
	}
}
