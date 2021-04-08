package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.dto.UserSch;
import zenkit.web.vo.Department;

@Repository
public interface A01_userDao {
	public ArrayList<UserSch> userList(UserSch user);
}