package zenkit.web.vo;

import java.util.Date;

public class Job {
	private int j_no;
	private int level;
	private int j_refno;
	private String j_name;
	private Date j_startD;
	private Date j_endD;
	private String j_startD_s;
	private String j_endD_s;
	private String j_charger;
	private double j_completeR;
	
	private int p_no;
	private int u_no;
	
	public Job() {
		// TODO Auto-generated constructor stub
	}

	public Job(int j_no, int level, int j_refno, String j_name, Date j_startD, Date j_endD, String j_startD_s,
			String j_endD_s, String j_charger, double j_completeR, int p_no, int u_no) {
		super();
		this.j_no = j_no;
		this.level = level;
		this.j_refno = j_refno;
		this.j_name = j_name;
		this.j_startD = j_startD;
		this.j_endD = j_endD;
		this.j_startD_s = j_startD_s;
		this.j_endD_s = j_endD_s;
		this.j_charger = j_charger;
		this.j_completeR = j_completeR;
		this.p_no = p_no;
		this.u_no = u_no;
	}

	public int getJ_no() {
		return j_no;
	}

	public void setJ_no(int j_no) {
		this.j_no = j_no;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public int getJ_refno() {
		return j_refno;
	}

	public void setJ_refno(int j_refno) {
		this.j_refno = j_refno;
	}

	public String getJ_name() {
		return j_name;
	}

	public void setJ_name(String j_name) {
		this.j_name = j_name;
	}

	public Date getJ_startD() {
		return j_startD;
	}

	public void setJ_startD(Date j_startD) {
		this.j_startD = j_startD;
	}

	public Date getJ_endD() {
		return j_endD;
	}

	public void setJ_endD(Date j_endD) {
		this.j_endD = j_endD;
	}

	public String getJ_startD_s() {
		return j_startD_s;
	}

	public void setJ_startD_s(String j_startD_s) {
		this.j_startD_s = j_startD_s;
	}

	public String getJ_endD_s() {
		return j_endD_s;
	}

	public void setJ_endD_s(String j_endD_s) {
		this.j_endD_s = j_endD_s;
	}

	public String getJ_charger() {
		return j_charger;
	}

	public void setJ_charger(String j_charger) {
		this.j_charger = j_charger;
	}

	public double getJ_completeR() {
		return j_completeR;
	}

	public void setJ_completeR(double j_completeR) {
		this.j_completeR = j_completeR;
	}

	public int getP_no() {
		return p_no;
	}

	public void setP_no(int p_no) {
		this.p_no = p_no;
	}

	public int getU_no() {
		return u_no;
	}

	public void setU_no(int u_no) {
		this.u_no = u_no;
	}
	
}
