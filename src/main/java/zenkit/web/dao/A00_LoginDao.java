package zenkit.web.dao;

import org.springframework.stereotype.Repository;

import zenkit.web.vo.User;
import zenkit.web.vo.UserInfoDetail;

@Repository
public interface A00_LoginDao {
	public UserInfoDetail login(User mem); // 로그인
	public void updateUserInfo(User mem); // 회원정보 변경
}