package zenkit.web.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import zenkit.web.dto.UserSch;
import zenkit.web.service.A01_userService;
import zenkit.web.service.A01_utilService;
import zenkit.web.vo.Department;
import zenkit.web.vo.Position;
import zenkit.web.vo.Rank;

@Controller
@RequestMapping("user.do")
public class A01_userController {
	
	@Autowired(required = false)
	A01_utilService utilService;
	
	@Autowired(required = false)
	A01_userService userService;
	
	
	// http://localhost:7080/zenkit/user.do?method=form
	@RequestMapping(params = "method=form")
	public String deptForm() {
		return "/a01_admin/a02_user_management";
	}
	
	// http://localhost:7080/zenkit/user.do?method=data
	@RequestMapping(params = "method=data")
	public String userList(Model d, UserSch user) {
		System.out.println(user.getD_name());
		System.out.println(user.getPos_name());
		System.out.println(user.getR_name());
		if(user.getD_name().equals("부서"))
			user.setD_name("");
		if(user.getPos_name().equals("직책"))
			user.setPos_name("");
		if(user.getR_name().equals("직급"))
			user.setR_name("");
		
		d.addAttribute("userList", userService.getUserList(user));
		return "pageJsonReport";
	}
	
	@ModelAttribute("deptList")
	public ArrayList<Department> getDepts(){
		return utilService.getDeptList();
	}
	@ModelAttribute("posList")
	public ArrayList<Position> getPositions(){
		return utilService.getPosList();
	}
	@ModelAttribute("rankList")
	public ArrayList<Rank> getRanks(){
		return utilService.getRankList();
	}
}
