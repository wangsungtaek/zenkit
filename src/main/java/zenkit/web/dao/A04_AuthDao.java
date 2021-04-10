package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.vo.AuthInfo;
import zenkit.web.vo.Job;
import zenkit.web.vo.Output;

// zenkit.web.dao.A04_AuthDao

@Repository
public interface A04_AuthDao {
	public ArrayList<AuthInfo> authList(AuthInfo sch);
	public ArrayList<String> getPros();
	public Job getJobInfo(int j_no);
	public AuthInfo getAuthInfo(int a_no);
	public ArrayList<Output> getOutputInfo(int j_no);
	public void chRetire(int a_no);
	public void chAppRej(AuthInfo upt);
	
//	public ArrayList<String> getPros(int u_no);
}
