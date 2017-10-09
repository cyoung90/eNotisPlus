package moon.main.dao;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Repository;

import moon.common.dao.AbstractDAO;

@Repository("mainDAO")
public class MainDAO extends AbstractDAO {

	@SuppressWarnings("unchecked")
	public Map<String, Object> selectEnotisUser(Map<String, Object> map) throws Exception {
		//return (Map<String, Object>) selectOne("main.selectEnotisUser", map);
		
		Map<String, Object> rstMap = new HashMap<String, Object>();
		rstMap.put("id", "8300120");
		rstMap.put("name", "최차영");
		rstMap.put("mail", "chayoung_choi@daekyo.co.kr");
		rstMap.put("USER_PASSWD", "3befa78c270e4c8c9e51f729c32645bd00b27a7469c97d1fbc8d7e8acd60a0ba9fcbcbcbf2c464ebbe92f5eb7788c48ea9443786226cbe92dc10bada5f8568e0");
		return rstMap;
	}

}