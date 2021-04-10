package zenkit.web.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A03_projectDao;
import zenkit.web.vo.Project;

@Service
public class A03_projectService {
	
	@Autowired
	A03_projectDao dao;
	
	public ArrayList<Project> getProList(int u_no){
		ArrayList<Project> pros = dao.getProList(u_no);
		for(Project p : pros) {
			SimpleDateFormat sDate = new SimpleDateFormat("YYYY/MM/dd");
			String startD = sDate.format(p.getP_startD());
			String endD = sDate.format(p.getP_endD());
			
			p.setP_startD_s(startD);
			p.setP_endD_s(endD);
		}
		return pros;
	}
}
