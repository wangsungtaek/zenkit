package zenkit.web.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A00_LoginDao;
import zenkit.web.vo.User;
import zenkit.web.vo.UserInfoDetail;

@Service
public class A00_loginService {

	@Autowired(required=false)
	A00_LoginDao dao;

	public UserInfoDetail login(User mem) {
		return dao.login(mem);
	}
	public void updateUserInfo(User mem) {
		System.out.println("LOG : 업데이트 정보");
		System.out.printf("u_id = %s, u_email = %s, u_phone = %s, u_img = %s",
				mem.getU_id(), mem.getU_email(), mem.getU_phone(), mem.getU_img());
		dao.updateUserInfo(mem);
	}
}