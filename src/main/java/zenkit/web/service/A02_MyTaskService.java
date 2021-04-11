package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A02_MyTaskDao;
import zenkit.web.vo.JobInfo;

@Service
public class A02_MyTaskService {
	
	@Autowired(required=false)
	private A02_MyTaskDao dao;
	
	public ArrayList<JobInfo> myTaskList(JobInfo sch) {
		if(sch.getJ_name()==null) sch.setJ_name("");
		if(sch.getP_name()==null) sch.setP_name("");
		return dao.myTaskList(sch);
	}
	
	public ArrayList<String> myPros(int u_no) {
		return dao.myPros(u_no);
	}

}
