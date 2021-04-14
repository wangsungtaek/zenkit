package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A02_OutputDao;
import zenkit.web.dto.OutputSch;
import zenkit.web.dto.UpOutput;

@Service
public class A02_OutputService {
	
	@Autowired(required=false)
	private A02_OutputDao dao;
	
	public ArrayList<UpOutput> getOutput(OutputSch sch){
		
		return dao.getOutputs(sch);
	}
}
