package zenkit.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import zenkit.web.service.A04_AuthService;
import zenkit.web.vo.AuthInfo;

@Controller
public class A04_AuthController {
	
	@Autowired(required = false)
	private A04_AuthService service;
	
	// http://localhost:7080/zenkit/authIng.do
	@RequestMapping("authIng.do")
	public String authIngList(@ModelAttribute("sch") AuthInfo sch, Model d) {
		sch.setA_name("승인중");
		d.addAttribute("authList", service.authList(sch));
		
		return "a04_auth\\authIng";
	}
	
	// http://localhost:7080/zenkit/authApp.do
	@RequestMapping("authApp.do")
	public String authAppList(@ModelAttribute("sch") AuthInfo sch, Model d) {
		sch.setA_name("승인완료");
		d.addAttribute("authList", service.authList(sch));
		
		return "a04_auth\\authAppReject";
	}
	
	// http://localhost:7080/zenkit/authRej.do
	@RequestMapping("authRej.do")
	public String authRejList(@ModelAttribute("sch") AuthInfo sch, Model d) {
		sch.setA_name("반려");
		d.addAttribute("authList", service.authList(sch));
		
		return "a04_auth\\authAppReject";
	}
	
	// http://localhost:7080/zenkit/authReq.do
	@GetMapping("authReq.do")
	public String authReqList(@ModelAttribute("sch") AuthInfo sch, Model d) {
		if(sch.getA_name()==null) {
			sch.setA_name("");
		}	
		d.addAttribute("authList", service.authList(sch));
		
		return "a04_auth\\authReq";
	}
	
	@PostMapping("authReq.do")
	public String authReqList2(@ModelAttribute("sch") AuthInfo sch, Model d) {
		d.addAttribute("authList", service.authList(sch));
		return "a04_auth\\authReq";
	}
	
	// http://localhost:7080/zenkit/jsonModal.do?j_no=1&a_no=1
	@RequestMapping("jsonModal.do")
	public String ajaxModal(@RequestParam(value="j_no") int j_no,
					@RequestParam(value="a_no") int a_no, Model d) {
		d.addAttribute("jobInfo", service.getJobInfo(j_no));
		d.addAttribute("authInfo", service.getAuthInfo(a_no));
		d.addAttribute("outputs", service.getOutputInfo(j_no));
		return "pageJsonReport";
	}
	
	@ModelAttribute("pros")
	public ArrayList<String> getPros() {
		return service.getPros();
	}
	
	// http://localhost:7080/zenkit/retire.do?a_no=1
	@RequestMapping("retire.do")
	public String retire(@RequestParam(value="a_no") int a_no) {
		service.chRetire(a_no);
		return "forward:authReq.do";
	}
	
	// http://localhost:7080/zenkit/apprej.do?a_no=12&a_resultN="승인합니다"&a_name="승인완료"
	@RequestMapping("apprej.do")
	public String approve(@RequestParam(value="a_no") int a_no,
				@RequestParam(value="a_resultN") String a_resultN,
				@RequestParam(value="a_name") String a_name) {
		AuthInfo upt = new AuthInfo();
		upt.setA_no(a_no);
		upt.setA_resultN(a_resultN);
		upt.setA_name(a_name);
		service.chAppRej(upt);
		
		return "pageJsonReport";
	}
}
