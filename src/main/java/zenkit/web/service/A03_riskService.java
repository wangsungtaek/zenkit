package zenkit.web.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zenkit.web.dao.A03_riskDao;
import zenkit.web.vo.Risk;

@Service
public class A03_riskService {
@Autowired(required=false)
 private A03_riskDao dao;
public ArrayList<Risk> riskList(Risk sch){
  
   return  dao.riskList(sch);
}

public void insertRisk(Risk insert) {
	dao.insertRisk(insert);
}
public void detailRisk(Risk detail) {
	dao.detailRisk(detail);
}
}