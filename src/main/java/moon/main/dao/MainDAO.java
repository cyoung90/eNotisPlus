package moon.main.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import moon.common.common.CommandMap;
import moon.common.dao.AbstractDAO;

@Repository("mainDAO")
public class MainDAO extends AbstractDAO {

	public Map<String, Object> selectEnotisUser(CommandMap map) throws Exception {
//		return (Map<String, Object>) selectOne("main.selectEnotisUser", map);
		
		Map<String, Object> rstMap = new HashMap<String, Object>();
		rstMap.put("id", "8300120");
		rstMap.put("name", "최차영");
		rstMap.put("mail", "chayoung_choi@daekyo.co.kr");
    	
		return rstMap;
	}

}