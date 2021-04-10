package zenkit.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("mytask.do")
public class A02_MyTaskController {
	/*
	@Autowired(required=false)
	private A02_MytaskService service;
	*/
	// http://localhost:7080/zenkit/mytask.do?method=task
	@GetMapping(params="method=task")
	public String mytaskList() {
		return "a02_myTask\\a01_task";
	}
	
	// http://localhost:7080/zenkit/mytask.do?method=outputs
	@GetMapping(params="method=outputs")
	public String outputList() {
		return "a02_myTask\\a02_outputs";
	}
}
