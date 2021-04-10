package zenkit.web.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A03_JobDao;
import zenkit.web.vo.Gantt;
import zenkit.web.vo.Job;
import zenkit.web.vo.Project;

@Service
public class A03_JobService {

	@Autowired(required = false)
	private A03_JobDao dao;

	public ArrayList<Gantt> jobList(int p_no) {
		ArrayList<Gantt> gantt = new ArrayList<Gantt>();
		ArrayList<Job> jobs = dao.jobList(p_no);
		for (Job j : jobs) {
			
			
			SimpleDateFormat sDate = new SimpleDateFormat("YYYY/MM/dd"); 
			String startD = sDate.format(j.getJ_startD()); 
			String endD = sDate.format(j.getJ_endD());
			 
			
			Gantt g = new Gantt();
			g.setId(j.getJ_no());
			g.setParent(j.getJ_refno());
			g.setText(j.getJ_name());
			g.setCharger(j.getJ_charger());
			g.setStart_date(startD);
			g.setEnd_date(endD);
			g.setProgress(j.getJ_completeR());
			gantt.add(g);
		}
		return gantt;
	}

	public ArrayList<Job> jobList2(int p_no) {
		ArrayList<Job> jobs = dao.jobList(p_no);
		for (Job j : jobs) {
			
			SimpleDateFormat sDate = new SimpleDateFormat("YYYY/MM/dd"); 
			String startD = sDate.format(j.getJ_startD()); 
			String endD = sDate.format(j.getJ_endD());
			
			j.setJ_startD_s(startD);
			j.setJ_endD_s(endD);
		}
		
		return jobs;
	}

	public void jobInsert(Job ins) {
		
		
		dao.jobInsert(ins);
	}

	public ArrayList<Job> jobPeople(int p_no){
		return dao.jobPeople(p_no);
	}
	
	public Job jobDetail(int j_no) {
		
		Job job = dao.jobDetail(j_no);
		
			
			SimpleDateFormat sDate = new SimpleDateFormat("YYYY/MM/dd"); 
			String startD = sDate.format(job.getJ_startD()); 
			String endD = sDate.format(job.getJ_endD());
			
			job.setJ_startD_s(startD);
			job.setJ_endD_s(endD);
		
		
		return job;
	}

	

	public Job parentjob(int j_no) {
		return dao.parentjob(j_no);
	}

	public void jobUpdate(Job upt) {
		dao.jobUpdate(upt);
	}

	public void TopjobcomR(int j_refno) {
		dao.TopjobcomR(j_refno);
	}
	
	public void jobDelete(int j_no) {
		dao.jobDelete(j_no);
	}
	public Project projectGet(int p_no) {
		return dao.projectGet(p_no);
	}
	
	public int jobcount(int p_no) {
		return dao.jobcount(p_no);
	}
}
