package zenkit.web.dto;

import zenkit.web.vo.Project;

public class UpProject extends Project {
	private int outputCnt;
	private int riskCnt;
	
	public int getOutputCnt() {
		return outputCnt;
	}
	public void setOutputCnt(int outputCnt) {
		this.outputCnt = outputCnt;
	}
	public int getRiskCnt() {
		return riskCnt;
	}
	public void setRiskCnt(int riskCnt) {
		this.riskCnt = riskCnt;
	}
}
