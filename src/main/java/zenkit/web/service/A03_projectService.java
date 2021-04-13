package zenkit.web.service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A03_projectDao;
import zenkit.web.dto.ResourceName;
import zenkit.web.dto.AddResource;
import zenkit.web.vo.Job;
import zenkit.web.vo.Project;

@Service
public class A03_projectService {
	
	@Autowired
	A03_projectDao dao;
	
	// 회원별 프로젝트 리스트
	public ArrayList<Project> getProList(int u_no){
		ArrayList<Project> pros = dao.getProList(u_no);
		for(Project p : pros) {
			SimpleDateFormat sDate = new SimpleDateFormat("YYYY/MM/dd");
			String startD = sDate.format(p.getP_startD());
			String endD = sDate.format(p.getP_endD());
			
			p.setP_startD_s(startD);
			p.setP_endD_s(endD);
		}
		return pros;
	}
	
	// 프로젝트 등록
	public void projectReg(Project pro) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("YYYY-MM-dd");
		
		// Date타입 => String타입 (패턴으로 변경)
		pro.setP_startD_s(dateFormat.format(pro.getP_startD()));
		pro.setP_endD_s(dateFormat.format(pro.getP_endD()));
		
		// 프로젝트 설명 없을 때 처리
		if(pro.getP_content().equals("") || pro.getP_content() == null)
			pro.setP_content("설명없음");
		pro.setP_endD(pro.getP_startD());
		
		// 프로젝트 등록
		dao.projectReg(pro);
		
		// 리소스 테이블에 등록
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		int p_no = dao.get_LastPno();
		int u_no = dao.get_u_no(pro.getP_pm());
		
		hm.put("p_no", p_no);
		hm.put("u_no", u_no);
		dao.projectInvite(hm);
	}

	// 프로젝트 기본정보
	public Project getProjectInfo(int p_no) {
		Project pro = dao.getProInfo(p_no);
		
		// 날짜 포맷 변경
		SimpleDateFormat dfmt = new SimpleDateFormat("YYYY-MM-dd");
		String startD = dfmt.format(pro.getP_startD());
		String endD = dfmt.format(pro.getP_endD());
		pro.setP_startD_s(startD);
		pro.setP_endD_s(endD);
				
		return pro;
	}
	// 프로젝트 참여시키기
	public void addResource(AddResource resource) {
		dao.addUser(resource);
	}
	// 프로젝트 제외시키기
	public void delResource(AddResource resource) {
		dao.delUser(resource);
	}
	
	// 프로젝트 참여인원
	public ArrayList<ResourceName> getProjectResource(int p_no){
		return dao.getResource(p_no);
	}
	
	// 참여 가능한 부서별 전체인원
	public ArrayList<ResourceName> getDeptResource(int d_no, int p_no){
		
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		
		hm.put("d_no", d_no);
		hm.put("p_no", p_no);
		
		return dao.getDeptResource(hm);
	}
	
	// 회원의 해당프로젝트의 작업 건 가져오기
	public ArrayList<Job> getJobList(int p_no, int u_no){
		
		HashMap<String, Integer> hm = new HashMap<String, Integer>();
		
		hm.put("p_no", p_no);
		hm.put("u_no", u_no);
		
		return dao.getJobList(hm);
	}
	
}
