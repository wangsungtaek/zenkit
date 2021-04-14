package zenkit.web.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

import zenkit.web.dto.AddResource;
import zenkit.web.dto.JobStateCnt;
import zenkit.web.dto.ResourceName;
import zenkit.web.dto.RiskStateCnt;
import zenkit.web.vo.Job;
import zenkit.web.vo.Project;

@Repository
public interface A03_projectDao {
	public ArrayList<Project> getProList(int u_no);
	public void projectReg(Project pro);
	public int get_LastPno();
	public int get_u_no(String p_pm);
	public void projectInvite(HashMap<String, Integer> hm);
	public ArrayList<ResourceName> getResource(int p_no);
	public Project getProInfo(int p_no);
	public ArrayList<ResourceName> getDeptResource(HashMap<String, Integer> member);
	public void addUser(AddResource adduser);
	public void delUser(AddResource deluser);
	public String getPM(int p_no); // 프로젝트 PM이름
	public ArrayList<Job> getJobList(HashMap<String, Integer> userPro); // 회원이 담당하는 프로젝트의 작업 건
	public JobStateCnt getJobState(int p_no); // 프로젝트별 작업 현황(카운트 값)
	public RiskStateCnt getRiskState(int p_no); // 프로젝트별 리스크 현황(카운트 값)
}
