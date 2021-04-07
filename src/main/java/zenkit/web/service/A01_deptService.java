package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A01_deptDao;
import zenkit.web.vo.Department;

@Service
public class A01_deptService {

	@Autowired(required = false)
	A01_deptDao dao;
	
	public ArrayList<Department> getDeptList(){
		return dao.getDeptList();
	}
	
	public void insertDept(Department dept) {
		dao.insertDept(dept);
	}
	
	public void deleteDept(String d_name) {
		dao.deleteDept(d_name);
	}
}
