package zenkit.web.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import zenkit.web.service.A03_riskService;
import zenkit.web.vo.Risk;
import zenkit.web.vo.User;



@Controller
public class A03_riskController {
	
	@Autowired(required = false)
	private A03_riskService service;
	//http://localhost:7080/zenkit/riskList.do
	@RequestMapping("riskList.do")
	public String riskList(@ModelAttribute("sch") Risk sch, Model d) {
		d.addAttribute("riskList",service.riskList(sch));
		
		return "a03_project//a06_riskList";
	}
	
	//http://localhost:7080/zenkit/riskInsert.do
	@RequestMapping("riskInsert.do")
	public String riskInsert(@ModelAttribute("risk") Risk insert, Model d) {
		service.riskList(insert);
		d.addAttribute("riskList",service.riskList(insert));
		
		return "a03_project//a06_riskInsert";
	}

	
	//http://localhost:7080/zenkit/riskDetail.do
	@RequestMapping("riskDetail.do")
	public String riskDetail(@ModelAttribute("risk")Risk detail, Model d){
		service.detailRisk(detail);
		d.addAttribute("riskDetail");
		return "a03_project//a06_riskDetail";
	}
	
	 //http://localhost:7080/zenkit/zenkit.do?method=login
	   @GetMapping(params="method=login")
	   public String login() {
		   return "a00_login//a01_login";
	   }
	  
	    @PostMapping(params="method=login")
	   public String login(User mem, HttpServletRequest request) {
	    	System.out.println("아이디:"+mem.getU_id());
	    	
	    	User ckDB=service.login(mem);
	    	if(ckDB!=null) {//해당 값이 있으면
	    		HttpSession session=request.getSession();
	    		session.setAttribute("sesMem",ckDB);
	    		request.setAttribute("loginSucc","Y");
	    	}else {
	    		request.setAttribute("loginSucc","N");
	    	}
	    	return "a00_login//a01_login";
	    }
	    
	    @RequestMapping(params="method=logout")
	    public String logout(HttpServletRequest request) {
	          request.getSession().invalidate();
	       return "redirect:/dashboard.do?method=personalList";
	    }
	 }