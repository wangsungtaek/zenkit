package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.vo.Project;

@Repository
public interface A03_projectDao {
	public ArrayList<Project> getProList(int u_no);
}
