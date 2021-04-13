package zenkit.web.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.service.A01_utilService;
import zenkit.web.service.A03_riskService;
import zenkit.web.vo.Risk;



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
}