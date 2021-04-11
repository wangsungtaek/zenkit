package zenkit.web.vo;

public class JobInfo extends Job {
	private String p_name;
	private String pm_name;
	
	public JobInfo() {
		super();
	}

	public String getP_name() {
		return p_name;
	}

	public void setP_name(String p_name) {
		this.p_name = p_name;
	}

	public String getPm_name() {
		return pm_name;
	}

	public void setPm_name(String pm_name) {
		this.pm_name = pm_name;
	}
}
