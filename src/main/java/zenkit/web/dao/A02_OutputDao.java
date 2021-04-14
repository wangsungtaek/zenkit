package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.dto.OutputSch;
import zenkit.web.dto.UpOutput;

@Repository
public interface A02_OutputDao {
	public ArrayList<UpOutput> getOutputs(OutputSch sch);
}
