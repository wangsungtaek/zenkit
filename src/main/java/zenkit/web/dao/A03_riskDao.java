package zenkit.web.dao;

import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import zenkit.web.vo.Risk;
import zenkit.web.vo.User;


@Repository
public interface A03_riskDao {
  public ArrayList<Risk> riskList(Risk sch);
  public void insertRisk(Risk insert);
  public void detailRisk(Risk detail);
  public User login(User mem);
}