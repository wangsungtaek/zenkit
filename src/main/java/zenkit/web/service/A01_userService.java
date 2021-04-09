package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A01_userDao;
import zenkit.web.dto.UserSch;

@Service
public class A01_userService {
	
	@Autowired(required = false)
	A01_userDao dao;
	
	public ArrayList<UserSch> getUserList(UserSch user){
		return dao.userList(user);
	}
	public void userDelete(String id) {
		dao.userDelete(id);
	}
	public void userUpdate(UserSch user) {
		dao.userUpdate(user);
	}
		
	
}
