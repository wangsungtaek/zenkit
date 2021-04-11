package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.vo.JobInfo;

@Repository
public interface A02_MyTaskDao {
	public ArrayList<JobInfo> myTaskList(JobInfo sch);
	public ArrayList<String> myPros(int u_no);

}
