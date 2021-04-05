package zenkit.web.vo;

import java.util.Date;

public class Risk {
	private int r_no;
	private String r_name;
	private String r_content;
	private Date r_regdate;
	private String r_regdate_s;
	private String r_send;
	private String r_receive;
	private String r_rcontent;
	private String r_file;
	
	private int j_no;
	private String rs_name;
	
	public Risk() {
		// TODO Auto-generated constructor stub
	}

	public Risk(int r_no, String r_name, String r_content, Date r_regdate, String r_regdate_s, String r_send,
			String r_receive, String r_rcontent, String r_file, int j_no, String rs_name) {
		super();
		this.r_no = r_no;
		this.r_name = r_name;
		this.r_content = r_content;
		this.r_regdate = r_regdate;
		this.r_regdate_s = r_regdate_s;
		this.r_send = r_send;
		this.r_receive = r_receive;
		this.r_rcontent = r_rcontent;
		this.r_file = r_file;
		this.j_no = j_no;
		this.rs_name = rs_name;
	}

	public int getR_no() {
		return r_no;
	}

	public void setR_no(int r_no) {
		this.r_no = r_no;
	}

	public String getR_name() {
		return r_name;
	}

	public void setR_name(String r_name) {
		this.r_name = r_name;
	}

	public String getR_content() {
		return r_content;
	}

	public void setR_content(String r_content) {
		this.r_content = r_content;
	}

	public Date getR_regdate() {
		return r_regdate;
	}

	public void setR_regdate(Date r_regdate) {
		this.r_regdate = r_regdate;
	}

	public String getR_regdate_s() {
		return r_regdate_s;
	}

	public void setR_regdate_s(String r_regdate_s) {
		this.r_regdate_s = r_regdate_s;
	}

	public String getR_send() {
		return r_send;
	}

	public void setR_send(String r_send) {
		this.r_send = r_send;
	}

	public String getR_receive() {
		return r_receive;
	}

	public void setR_receive(String r_receive) {
		this.r_receive = r_receive;
	}

	public String getR_rcontent() {
		return r_rcontent;
	}

	public void setR_rcontent(String r_rcontent) {
		this.r_rcontent = r_rcontent;
	}

	public String getR_file() {
		return r_file;
	}

	public void setR_file(String r_file) {
		this.r_file = r_file;
	}

	public int getJ_no() {
		return j_no;
	}

	public void setJ_no(int j_no) {
		this.j_no = j_no;
	}

	public String getRs_name() {
		return rs_name;
	}

	public void setRs_name(String rs_name) {
		this.rs_name = rs_name;
	}
	
}
