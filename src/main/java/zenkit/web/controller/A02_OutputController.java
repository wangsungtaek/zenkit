package zenkit.web.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.dto.OutputSch;
import zenkit.web.service.A02_OutputService;
import zenkit.web.vo.User;


@Controller
@RequestMapping("output.do")
public class A02_OutputController {
	
	@Autowired(required=false)
	private A02_OutputService service;
	
	// http://localhost:7080/zenkit/output.do?method=outputs
	@GetMapping(params="method=outputs")
	public String outputList(HttpServletRequest request, OutputSch sch, Model m) {
		
		// 유저 정보 세션값 받기
		HttpSession session = request.getSession();
		User user = (User)session.getAttribute("sesMem");
		OutputSch test = new OutputSch();
		test.setU_no(user.getU_no());
		
		m.addAttribute("outputList", service.getOutput(test));
		return "a02_myTask/a02_outputs";
	}
}
