package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A04_AuthDao;
import zenkit.web.vo.AuthInfo;
import zenkit.web.vo.Job;
import zenkit.web.vo.Output;

@Service
public class A04_AuthService {
	
	@Autowired(required=false)
	private A04_AuthDao dao;
	
	public ArrayList<AuthInfo> authList(AuthInfo sch){
		if(sch.getJob_name()==null) sch.setJob_name("");
		if(sch.getPro_name()==null) sch.setPro_name("");
		return dao.authList(sch);
	}
	
	public ArrayList<String> getPros() {
		return dao.getPros();
	}
	
	public Job getJobInfo(int j_no) {
		return dao.getJobInfo(j_no);
	}
	
	public void chRetire(int a_no) {
		dao.chRetire(a_no);
	}
	
	public void chAppRej(AuthInfo upt) {
		dao.chAppRej(upt);
	}

	public AuthInfo getAuthInfo(int a_no) {
		return dao.getAuthInfo(a_no);
	}
	
	public ArrayList<Output> getOutputInfo(int j_no) {
		return dao.getOutputInfo(j_no);
	}
}
