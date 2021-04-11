package zenkit.web.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.stereotype.Repository;

import zenkit.web.dto.AddResource;
import zenkit.web.dto.ResourceName;
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
}
