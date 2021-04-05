package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A03_JobDao;
import zenkit.web.vo.Gantt;
import zenkit.web.vo.Job;

@Service
public class A03_JobService {
	
	@Autowired(required = false)
	A03_JobDao dao;
	
	public ArrayList<Gantt> jobList(){
		ArrayList<Gantt> gantt = new ArrayList<Gantt>();
		ArrayList<Job> jobs = dao.jobList();
		
		for(Job j : jobs) {
			Gantt g = new Gantt();
			g.setId(j.getJ_no());
			g.setParent(j.getJ_refno());
			g.setText(j.getJ_name());
			g.setStart_date(j.getJ_startD_s());
			g.setEnd_date(j.getJ_endD_s());
			g.setProgress(j.getJ_completeR());
			gantt.add(g);
		}
		
		return gantt;
	}
}
