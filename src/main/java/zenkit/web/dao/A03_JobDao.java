package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.vo.Job;

@Repository
public interface A03_JobDao {
	public ArrayList<Job> jobList();
}
