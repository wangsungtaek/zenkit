package zenkit.web.vo;

public class UserDept extends User{
	
	private String pos_name;
	
	public UserDept() {
		// TODO Auto-generated constructor stub
	}

	public UserDept(String pos_name) {
		super();
		this.pos_name = pos_name;
	}

	public String getPos_name() {
		return pos_name;
	}

	public void setPos_name(String pos_name) {
		this.pos_name = pos_name;
	}
}
